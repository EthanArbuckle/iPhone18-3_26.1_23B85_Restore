@interface BRCPackageChecksummer
- (BOOL)addItem:(id)a3 error:(id *)a4;
- (BRCPackageChecksummer)init;
@end

@implementation BRCPackageChecksummer

- (BRCPackageChecksummer)init
{
  v6.receiver = self;
  v6.super_class = BRCPackageChecksummer;
  v2 = [(BRCPackageChecksummer *)&v6 init];
  if (v2)
  {
    v3 = [[BRCChecksummingOutputStream alloc] initWithTag:27];
    stream = v2->_stream;
    v2->_stream = v3;

    [(BRCChecksummingOutputStream *)v2->_stream open];
    [(BRCChecksummingOutputStream *)v2->_stream write:"version: 1\n" maxLength:11];
  }

  return v2;
}

- (BOOL)addItem:(id)a3 error:(id *)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([v6 type] == 4)
  {
LABEL_43:
    v36 = 1;
    goto LABEL_44;
  }

  stream = self->_stream;
  p_stream = &self->_stream;
  if (-[BRCChecksummingOutputStream write:maxLength:](stream, "write:maxLength:", &addItem_error__tags + [v6 type], 1) != -1 && -[BRCChecksummingOutputStream write:maxLength:](*p_stream, "write:maxLength:", &addItem_error__nul, 1) != -1)
  {
    v9 = [v6 path];
    v10 = [v9 fileSystemRepresentation];

    if (!v10)
    {
      v16 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [BRCPackageChecksummer addItem:error:];
      }

      v18 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:22 description:{@"NULL path for item: %@", v6}];
      if (!v18)
      {
        goto LABEL_17;
      }

      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (!os_log_type_enabled(v20, 0x90u))
      {
        goto LABEL_16;
      }

      v42 = "(passed to caller)";
      *buf = 136315906;
      *&buf[4] = "[BRCPackageChecksummer addItem:error:]";
      v46 = 2080;
      if (!a4)
      {
        v42 = "(ignored by caller)";
      }

      goto LABEL_57;
    }

    if ([(BRCChecksummingOutputStream *)*p_stream write:v10 maxLength:strlen(v10) + 1]!= -1)
    {
      v11 = [v6 quarantineInfo];
      v12 = [v11 br_qtnFlags];

      v44 = v12;
      if (!v12 || [(BRCChecksummingOutputStream *)*p_stream write:&v44 maxLength:4]!= -1 && [(BRCChecksummingOutputStream *)*p_stream write:&addItem_error__nul maxLength:1]!= -1)
      {
        if ([v6 type] == 3)
        {
          v13 = [v6 symlinkContent];
          v14 = [v13 br_pathSafeFileSystemRepresentation];
          if (v14)
          {
            v15 = v14;

LABEL_31:
            v30 = [(BRCChecksummingOutputStream *)*p_stream write:v15 maxLength:strlen(v15) + 1];
            goto LABEL_32;
          }

          v31 = [v6 symlinkContent];
          v15 = [v31 UTF8String];

          if (v15)
          {
            goto LABEL_31;
          }

          v40 = brc_bread_crumbs();
          v41 = brc_default_log();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
          {
            [BRCPackageChecksummer addItem:error:];
          }

          v18 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:22 description:{@"NULL path for item symlink: %@", v6}];
          if (!v18)
          {
LABEL_17:
            if (a4)
            {
              v21 = v18;
              *a4 = v18;
            }

            goto LABEL_42;
          }

          v19 = brc_bread_crumbs();
          v20 = brc_default_log();
          if (!os_log_type_enabled(v20, 0x90u))
          {
LABEL_16:

            goto LABEL_17;
          }

          v42 = "(passed to caller)";
          *buf = 136315906;
          *&buf[4] = "[BRCPackageChecksummer addItem:error:]";
          v46 = 2080;
          if (!a4)
          {
            v42 = "(ignored by caller)";
          }

LABEL_57:
          v47 = v42;
          v48 = 2112;
          v49 = v18;
          v50 = 2112;
          v51 = v19;
          _os_log_error_impl(&dword_223E7A000, v20, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
          goto LABEL_16;
        }

        if ([v6 type] != 2)
        {
LABEL_33:
          [(BRCChecksummingOutputStream *)*p_stream write:&addItem_error__nl maxLength:1];
          goto LABEL_34;
        }

        if ((![v6 isWritable] || -[BRCChecksummingOutputStream write:maxLength:](*p_stream, "write:maxLength:", &addItem_error__w, 1) != -1) && (!objc_msgSend(v6, "isExecutable") || -[BRCChecksummingOutputStream write:maxLength:](*p_stream, "write:maxLength:", &addItem_error__x, 1) != -1) && -[BRCChecksummingOutputStream write:maxLength:](*p_stream, "write:maxLength:", &addItem_error__nul, 1) != -1)
        {
          v22 = [v6 signature];
          v23 = [v22 length];

          v24 = [v6 signature];
          v25 = [v24 bytes];

          v26 = 2 * v23;
          v27 = &v43 - ((2 * v23 + 16) & 0xFFFFFFFFFFFFFFF0);
          if (v23)
          {
            v28 = v27 + 1;
            do
            {
              v29 = *v25++;
              *(v28 - 1) = a0123456789abcd[v29 >> 4];
              *v28 = a0123456789abcd[v29 & 0xF];
              v28 += 2;
              --v23;
            }

            while (v23);
          }

          v27[v26] = 0;
          v30 = [BRCChecksummingOutputStream write:"write:maxLength:" maxLength:?];
LABEL_32:
          if (v30 == -1)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }
      }
    }
  }

LABEL_34:
  v32 = *p_stream;
  if (!*p_stream)
  {
    [BRCPackageChecksummer addItem:buf error:?];
    v32 = *buf;
  }

  if ([(BRCChecksummingOutputStream *)v32 streamStatus]!= 7)
  {
    goto LABEL_43;
  }

  v18 = [(BRCChecksummingOutputStream *)*p_stream streamError];
  if (v18)
  {
    v33 = brc_bread_crumbs();
    v34 = brc_default_log();
    if (os_log_type_enabled(v34, 0x90u))
    {
      v39 = "(passed to caller)";
      *buf = 136315906;
      *&buf[4] = "[BRCPackageChecksummer addItem:error:]";
      v46 = 2080;
      if (!a4)
      {
        v39 = "(ignored by caller)";
      }

      v47 = v39;
      v48 = 2112;
      v49 = v18;
      v50 = 2112;
      v51 = v33;
      _os_log_error_impl(&dword_223E7A000, v34, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (a4)
  {
    v35 = v18;
    *a4 = v18;
  }

LABEL_42:

  v36 = 0;
LABEL_44:

  v37 = *MEMORY[0x277D85DE8];
  return v36;
}

- (void)addItem:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addItem:error:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_15_0(v0, v1, v2, v3, v4);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)addItem:(void *)a1 error:(void *)a2 .cold.3(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_2_3(&dword_223E7A000, v6, v7, "[CRIT] Assertion failed: _stream%@", v8, v9, v10, v11, 2u);
  }

  *a2 = *a1;
  v12 = *MEMORY[0x277D85DE8];
}

@end