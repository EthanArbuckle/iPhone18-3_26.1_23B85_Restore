@interface BRCVolume
- (BOOL)setupWithError:(id *)error;
- (id)description;
- (int)_setUpForStatfs:(statfs *)statfs;
@end

@implementation BRCVolume

- (int)_setUpForStatfs:(statfs *)statfs
{
  v10 = 0;
  v9 = xmmword_2241ABDB0;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  if (getattrlist(statfs->f_mntonname, &v9, v7, 0x24uLL, 0x21u) < 0)
  {
    return *__error();
  }

  if (strcmp(statfs->f_fstypename, "hfs") && (~DWORD1(v7[0]) & 0x180000) != 0)
  {
    return 19;
  }

  f_flags = statfs->f_flags;
  if ((f_flags & 0x1001) == 0x1000)
  {
    memcpy(&self->_stfs, statfs, sizeof(self->_stfs));
    return 0;
  }

  else if (f_flags)
  {
    return 30;
  }

  else
  {
    return 19;
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  f_flags = self->_stfs.f_flags;
  deviceID = self->_deviceID;
  v7 = BRCPrettyPrintBitmap();
  v8 = [v3 stringWithFormat:@"<%@:%p>, deviceID:%d device:'%s' mounted-on:'%s' fstype:%s(%@)", v4, self, deviceID, self->_stfs.f_mntfromname, self->_stfs.f_mntonname, self->_stfs.f_fstypename, v7];

  return v8;
}

- (BOOL)setupWithError:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  self->_deviceID = 0;
  memset(&__src, 0, 512);
  homeDirForCurrentPersona = [MEMORY[0x277CFAEF0] homeDirForCurrentPersona];
  v6 = MEMORY[0x277CBEBC0];
  br_realpath = [homeDirForCurrentPersona br_realpath];
  v8 = [v6 fileURLWithPath:br_realpath];
  v9 = [v8 URLByAppendingPathComponent:*MEMORY[0x277CFABC8] isDirectory:1];

  if (statfs([v9 fileSystemRepresentation], &__src) < 0)
  {
    v15 = *__error();
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, 0x90u))
    {
      *__dst = 136315650;
      *&__dst[4] = [v9 fileSystemRepresentation];
      *&__dst[12] = 1024;
      *&__dst[14] = v15;
      *&__dst[18] = 2112;
      *&__dst[20] = v16;
      _os_log_error_impl(&dword_223E7A000, v17, 0x90u, "[ERROR] statfs for %s failed %{errno}d%@", __dst, 0x1Cu);
    }

    *__error() = v15;
    br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    if (!br_errorFromErrno)
    {
      goto LABEL_13;
    }

    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (!os_log_type_enabled(v13, 0x90u))
    {
      goto LABEL_12;
    }

    v14 = "(passed to caller)";
    *__dst = 136315906;
    *&__dst[4] = "[BRCVolume setupWithError:]";
    *&__dst[12] = 2080;
    if (!error)
    {
      v14 = "(ignored by caller)";
    }

    goto LABEL_30;
  }

  memcpy(__dst, &__src, sizeof(__dst));
  v10 = [(BRCVolume *)self _setUpForStatfs:__dst];
  if (v10)
  {
    br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:v10];
    if (br_errorFromErrno)
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, 0x90u))
      {
        v14 = "(passed to caller)";
        *__dst = 136315906;
        *&__dst[4] = "[BRCVolume setupWithError:]";
        *&__dst[12] = 2080;
        if (!error)
        {
          v14 = "(ignored by caller)";
        }

LABEL_30:
        *&__dst[14] = v14;
        *&__dst[22] = 2112;
        *&__dst[24] = br_errorFromErrno;
        *&__dst[32] = 2112;
        *&__dst[34] = v12;
        v28 = __dst;
LABEL_31:
        _os_log_error_impl(&dword_223E7A000, v13, 0x90u, "[ERROR] %s: %s error: %@%@", v28, 0x2Au);
      }

LABEL_12:
    }
  }

  else
  {
    memset(__dst, 0, 144);
    if ((stat([v9 fileSystemRepresentation], __dst) & 0x80000000) == 0)
    {
      self->_deviceID = *__dst;
      goto LABEL_16;
    }

    v24 = *__error();
    v25 = brc_bread_crumbs();
    v26 = brc_default_log();
    if (os_log_type_enabled(v26, 0x90u))
    {
      v29 = 136315650;
      fileSystemRepresentation = [v9 fileSystemRepresentation];
      v31 = 1024;
      *v32 = v24;
      *&v32[4] = 2112;
      *&v32[6] = v25;
      _os_log_error_impl(&dword_223E7A000, v26, 0x90u, "[ERROR] stat for %s failed %{errno}d%@", &v29, 0x1Cu);
    }

    *__error() = v24;
    br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    if (br_errorFromErrno)
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, 0x90u))
      {
        v27 = "(passed to caller)";
        v29 = 136315906;
        fileSystemRepresentation = "[BRCVolume setupWithError:]";
        v31 = 2080;
        if (!error)
        {
          v27 = "(ignored by caller)";
        }

        *v32 = v27;
        *&v32[8] = 2112;
        *&v32[10] = br_errorFromErrno;
        v33 = 2112;
        v34 = v12;
        v28 = &v29;
        goto LABEL_31;
      }

      goto LABEL_12;
    }
  }

LABEL_13:
  if (error)
  {
    v18 = br_errorFromErrno;
    *error = br_errorFromErrno;
  }

LABEL_16:
  v19 = brc_bread_crumbs();
  v20 = brc_default_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *__dst = 138412546;
    *&__dst[4] = self;
    *&__dst[12] = 2112;
    *&__dst[14] = v19;
    _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEFAULT, "[NOTICE] on device: %@%@", __dst, 0x16u);
  }

  v21 = self->_deviceID != 0;
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

@end