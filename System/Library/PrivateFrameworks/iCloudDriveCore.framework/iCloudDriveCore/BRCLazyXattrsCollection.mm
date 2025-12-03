@interface BRCLazyXattrsCollection
- (BRCLazyXattrsCollection)initWithFD:(int)d sizeLimit:(int64_t)limit syncable:(BOOL)syncable error:(id *)error;
- (id)getXattrValue:(id)value error:(id *)error;
@end

@implementation BRCLazyXattrsCollection

- (BRCLazyXattrsCollection)initWithFD:(int)d sizeLimit:(int64_t)limit syncable:(BOOL)syncable error:(id *)error
{
  syncableCopy = syncable;
  v52 = *MEMORY[0x277D85DE8];
  v47.receiver = self;
  v47.super_class = BRCLazyXattrsCollection;
  v10 = [(BRCLazyXattrsCollection *)&v47 init];
  v11 = v10;
  if (!v10)
  {
LABEL_35:
    contentXattrNamesBegin = [(BRCLazyXattrsCollection *)v11 contentXattrNamesBegin];
    contentXattrNamesCount = [(BRCLazyXattrsCollection *)v11 contentXattrNamesCount];
    if (contentXattrNamesCount)
    {
      qsort_b(contentXattrNamesBegin, contentXattrNamesCount, 8uLL, &__block_literal_global_78);
    }

    structuralXattrNamesBegin = [(BRCLazyXattrsCollection *)v11 structuralXattrNamesBegin];
    structuralXattrNamesCount = [(BRCLazyXattrsCollection *)v11 structuralXattrNamesCount];
    if (structuralXattrNamesCount)
    {
      qsort_b(structuralXattrNamesBegin, structuralXattrNamesCount, 8uLL, &__block_literal_global_78);
    }

LABEL_39:
    v16 = v11;
    goto LABEL_40;
  }

  v10->_sizeLimit = limit;
  v10->_fd = d;
  v12 = flistxattr(d, 0, 0, 0);
  if ((v12 & 0x8000000000000000) != 0)
  {
    br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    if (br_errorFromErrno)
    {
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, 0x90u))
      {
        v45 = "(passed to caller)";
        *buf = 136315906;
        *&buf[4] = "[BRCLazyXattrsCollection initWithFD:sizeLimit:syncable:error:]";
        *&buf[12] = 2080;
        if (!error)
        {
          v45 = "(ignored by caller)";
        }

        *&buf[14] = v45;
        *&buf[22] = 2112;
        v49 = br_errorFromErrno;
        v50 = 2112;
        v51 = v18;
        _os_log_error_impl(&dword_223E7A000, v19, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v20 = br_errorFromErrno;
      *error = br_errorFromErrno;
    }

    goto LABEL_39;
  }

  v13 = v12;
  if (v12 <= limit)
  {
    v21 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v12];
    xattrNamesList = v11->_xattrNamesList;
    v11->_xattrNamesList = v21;

    if (flistxattr(d, [(NSMutableData *)v11->_xattrNamesList mutableBytes], v13, 0) != v13)
    {
      br_errorFromErrno2 = [MEMORY[0x277CCA9B8] br_errorFromErrno];
      if (br_errorFromErrno2)
      {
        v28 = brc_bread_crumbs();
        v29 = brc_default_log();
        if (os_log_type_enabled(v29, 0x90u))
        {
          v46 = "(passed to caller)";
          *buf = 136315906;
          *&buf[4] = "[BRCLazyXattrsCollection initWithFD:sizeLimit:syncable:error:]";
          *&buf[12] = 2080;
          if (!error)
          {
            v46 = "(ignored by caller)";
          }

          *&buf[14] = v46;
          *&buf[22] = 2112;
          v49 = br_errorFromErrno2;
          v50 = 2112;
          v51 = v28;
          _os_log_error_impl(&dword_223E7A000, v29, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }
      }

      if (error)
      {
        v30 = br_errorFromErrno2;
        *error = br_errorFromErrno2;
      }

      goto LABEL_25;
    }

    xattrNamesListBegin = [(BRCLazyXattrsCollection *)v11 xattrNamesListBegin];
    xattrNamesListEnd = [(BRCLazyXattrsCollection *)v11 xattrNamesListEnd];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __countSyncableXattrs_block_invoke;
    v49 = &__block_descriptor_33_e9_B16__0r_8l;
    LOBYTE(v50) = syncableCopy;
    v25 = buf;
    if (xattrNamesListBegin >= xattrNamesListEnd)
    {
      v26 = 0;
    }

    else
    {
      v26 = 0;
      do
      {
        v26 += (*&buf[16])(v25, xattrNamesListBegin);
        xattrNamesListBegin += strlen(xattrNamesListBegin) + 1;
      }

      while (xattrNamesListBegin < xattrNamesListEnd);
    }

    v11->_xattrCount = v26;
    v31 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:8 * v11->_xattrCount];
    xattrNamesData = v11->_xattrNamesData;
    v11->_xattrNamesData = v31;

    xattrNamesListBegin2 = [(BRCLazyXattrsCollection *)v11 xattrNamesListBegin];
    if (xattrNamesListBegin2 < [(BRCLazyXattrsCollection *)v11 xattrNamesListEnd])
    {
      v34 = 0;
      do
      {
        v35 = brc_xattr_flags_from_name(xattrNamesListBegin2);
        v36 = v35;
        if ((xattr_intent_with_flags(4u, v35) == 0) != syncableCopy)
        {
          xattrNamesBegin = [(BRCLazyXattrsCollection *)v11 xattrNamesBegin];
          if ((v36 & 2) != 0)
          {
            contentXattrCount = v11->_contentXattrCount;
            v11->_contentXattrCount = contentXattrCount + 1;
          }

          else
          {
            ++v34;
            contentXattrCount = v11->_xattrCount - v34;
          }

          *(xattrNamesBegin + 8 * contentXattrCount) = xattrNamesListBegin2;
        }

        xattrNamesListBegin2 += strlen(xattrNamesListBegin2) + 1;
      }

      while (xattrNamesListBegin2 < [(BRCLazyXattrsCollection *)v11 xattrNamesListEnd]);
    }

    goto LABEL_35;
  }

  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, 0x90u))
  {
    [BRCLazyXattrsCollection initWithFD:sizeLimit:syncable:error:];
  }

  if (!error)
  {
LABEL_25:
    v16 = 0;
    goto LABEL_40;
  }

  [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:12];
  *error = v16 = 0;
LABEL_40:

  v43 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)getXattrValue:(id)value error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  cachedXattrs = self->_cachedXattrs;
  if (!cachedXattrs)
  {
    v8 = objc_opt_new();
    v9 = self->_cachedXattrs;
    self->_cachedXattrs = v8;

    cachedXattrs = self->_cachedXattrs;
  }

  v10 = [(NSMutableDictionary *)cachedXattrs valueForKey:valueCopy];
  if (v10)
  {
    null = [MEMORY[0x277CBEB68] null];

    if (v10 != null)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [BRCLazyXattrsCollection getXattrValue:error:];
      }

      v12 = v10;
      goto LABEL_24;
    }

LABEL_15:
    v12 = 0;
    goto LABEL_24;
  }

  sizeLimit = self->_sizeLimit;
  if ((sizeLimit & 0x8000000000000000) == 0 && self->_cacheSize >= sizeLimit)
  {
    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v21;
      _os_log_impl(&dword_223E7A000, v22, OS_LOG_TYPE_DEFAULT, "[WARNING] Do not attempt to get xattr size cache is full%@", buf, 0xCu);
    }

    goto LABEL_15;
  }

  fd = self->_fd;
  uTF8String = [valueCopy UTF8String];
  v16 = self->_sizeLimit - self->_cacheSize;
  v32 = 0;
  v12 = BRCGetXattrValue(fd, uTF8String, v16, &v32);
  v17 = v32;
  v18 = v17;
  if (v12)
  {
    [(NSMutableDictionary *)self->_cachedXattrs setObject:v12 forKey:valueCopy];
    v19 = [valueCopy length];
    self->_cacheSize += [v12 length] + v19;
    v20 = v12;
  }

  else
  {
    v23 = v17;
    if (v23)
    {
      v24 = brc_bread_crumbs();
      v25 = brc_default_log();
      if (os_log_type_enabled(v25, 0x90u))
      {
        v31 = "(passed to caller)";
        *buf = 136315906;
        v34 = "[BRCLazyXattrsCollection getXattrValue:error:]";
        v35 = 2080;
        if (!error)
        {
          v31 = "(ignored by caller)";
        }

        v36 = v31;
        v37 = 2112;
        v38 = v23;
        v39 = 2112;
        v40 = v24;
        _os_log_error_impl(&dword_223E7A000, v25, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v26 = v23;
      *error = v23;
    }

    if (!*error)
    {
      v27 = self->_cachedXattrs;
      null2 = [MEMORY[0x277CBEB68] null];
      [(NSMutableDictionary *)v27 setObject:null2 forKey:valueCopy];
    }
  }

LABEL_24:
  v29 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)initWithFD:sizeLimit:syncable:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getXattrValue:error:.cold.1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: [cached isKindOfClass:[NSData class]]%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

@end