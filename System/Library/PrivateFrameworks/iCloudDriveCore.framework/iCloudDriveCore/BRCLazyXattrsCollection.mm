@interface BRCLazyXattrsCollection
- (BRCLazyXattrsCollection)initWithFD:(int)a3 sizeLimit:(int64_t)a4 syncable:(BOOL)a5 error:(id *)a6;
- (id)getXattrValue:(id)a3 error:(id *)a4;
@end

@implementation BRCLazyXattrsCollection

- (BRCLazyXattrsCollection)initWithFD:(int)a3 sizeLimit:(int64_t)a4 syncable:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v52 = *MEMORY[0x277D85DE8];
  v47.receiver = self;
  v47.super_class = BRCLazyXattrsCollection;
  v10 = [(BRCLazyXattrsCollection *)&v47 init];
  v11 = v10;
  if (!v10)
  {
LABEL_35:
    v39 = [(BRCLazyXattrsCollection *)v11 contentXattrNamesBegin];
    v40 = [(BRCLazyXattrsCollection *)v11 contentXattrNamesCount];
    if (v40)
    {
      qsort_b(v39, v40, 8uLL, &__block_literal_global_78);
    }

    v41 = [(BRCLazyXattrsCollection *)v11 structuralXattrNamesBegin];
    v42 = [(BRCLazyXattrsCollection *)v11 structuralXattrNamesCount];
    if (v42)
    {
      qsort_b(v41, v42, 8uLL, &__block_literal_global_78);
    }

LABEL_39:
    v16 = v11;
    goto LABEL_40;
  }

  v10->_sizeLimit = a4;
  v10->_fd = a3;
  v12 = flistxattr(a3, 0, 0, 0);
  if ((v12 & 0x8000000000000000) != 0)
  {
    v17 = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    if (v17)
    {
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, 0x90u))
      {
        v45 = "(passed to caller)";
        *buf = 136315906;
        *&buf[4] = "[BRCLazyXattrsCollection initWithFD:sizeLimit:syncable:error:]";
        *&buf[12] = 2080;
        if (!a6)
        {
          v45 = "(ignored by caller)";
        }

        *&buf[14] = v45;
        *&buf[22] = 2112;
        v49 = v17;
        v50 = 2112;
        v51 = v18;
        _os_log_error_impl(&dword_223E7A000, v19, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (a6)
    {
      v20 = v17;
      *a6 = v17;
    }

    goto LABEL_39;
  }

  v13 = v12;
  if (v12 <= a4)
  {
    v21 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v12];
    xattrNamesList = v11->_xattrNamesList;
    v11->_xattrNamesList = v21;

    if (flistxattr(a3, [(NSMutableData *)v11->_xattrNamesList mutableBytes], v13, 0) != v13)
    {
      v27 = [MEMORY[0x277CCA9B8] br_errorFromErrno];
      if (v27)
      {
        v28 = brc_bread_crumbs();
        v29 = brc_default_log();
        if (os_log_type_enabled(v29, 0x90u))
        {
          v46 = "(passed to caller)";
          *buf = 136315906;
          *&buf[4] = "[BRCLazyXattrsCollection initWithFD:sizeLimit:syncable:error:]";
          *&buf[12] = 2080;
          if (!a6)
          {
            v46 = "(ignored by caller)";
          }

          *&buf[14] = v46;
          *&buf[22] = 2112;
          v49 = v27;
          v50 = 2112;
          v51 = v28;
          _os_log_error_impl(&dword_223E7A000, v29, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }
      }

      if (a6)
      {
        v30 = v27;
        *a6 = v27;
      }

      goto LABEL_25;
    }

    v23 = [(BRCLazyXattrsCollection *)v11 xattrNamesListBegin];
    v24 = [(BRCLazyXattrsCollection *)v11 xattrNamesListEnd];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __countSyncableXattrs_block_invoke;
    v49 = &__block_descriptor_33_e9_B16__0r_8l;
    LOBYTE(v50) = v7;
    v25 = buf;
    if (v23 >= v24)
    {
      v26 = 0;
    }

    else
    {
      v26 = 0;
      do
      {
        v26 += (*&buf[16])(v25, v23);
        v23 += strlen(v23) + 1;
      }

      while (v23 < v24);
    }

    v11->_xattrCount = v26;
    v31 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:8 * v11->_xattrCount];
    xattrNamesData = v11->_xattrNamesData;
    v11->_xattrNamesData = v31;

    v33 = [(BRCLazyXattrsCollection *)v11 xattrNamesListBegin];
    if (v33 < [(BRCLazyXattrsCollection *)v11 xattrNamesListEnd])
    {
      v34 = 0;
      do
      {
        v35 = brc_xattr_flags_from_name(v33);
        v36 = v35;
        if ((xattr_intent_with_flags(4u, v35) == 0) != v7)
        {
          v37 = [(BRCLazyXattrsCollection *)v11 xattrNamesBegin];
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

          *(v37 + 8 * contentXattrCount) = v33;
        }

        v33 += strlen(v33) + 1;
      }

      while (v33 < [(BRCLazyXattrsCollection *)v11 xattrNamesListEnd]);
    }

    goto LABEL_35;
  }

  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, 0x90u))
  {
    [BRCLazyXattrsCollection initWithFD:sizeLimit:syncable:error:];
  }

  if (!a6)
  {
LABEL_25:
    v16 = 0;
    goto LABEL_40;
  }

  [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:12];
  *a6 = v16 = 0;
LABEL_40:

  v43 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)getXattrValue:(id)a3 error:(id *)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  cachedXattrs = self->_cachedXattrs;
  if (!cachedXattrs)
  {
    v8 = objc_opt_new();
    v9 = self->_cachedXattrs;
    self->_cachedXattrs = v8;

    cachedXattrs = self->_cachedXattrs;
  }

  v10 = [(NSMutableDictionary *)cachedXattrs valueForKey:v6];
  if (v10)
  {
    v11 = [MEMORY[0x277CBEB68] null];

    if (v10 != v11)
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
  v15 = [v6 UTF8String];
  v16 = self->_sizeLimit - self->_cacheSize;
  v32 = 0;
  v12 = BRCGetXattrValue(fd, v15, v16, &v32);
  v17 = v32;
  v18 = v17;
  if (v12)
  {
    [(NSMutableDictionary *)self->_cachedXattrs setObject:v12 forKey:v6];
    v19 = [v6 length];
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
        if (!a4)
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

    if (a4)
    {
      v26 = v23;
      *a4 = v23;
    }

    if (!*a4)
    {
      v27 = self->_cachedXattrs;
      v28 = [MEMORY[0x277CBEB68] null];
      [(NSMutableDictionary *)v27 setObject:v28 forKey:v6];
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