@interface BRCFileSystemWrapper
+ (int)cloneFromURL:(id)a3 toURL:(id)a4 error:(id *)a5;
@end

@implementation BRCFileSystemWrapper

+ (int)cloneFromURL:(id)a3 toURL:(id)a4 error:(id *)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [a3 path];
  v9 = [v7 path];

  v10 = BRCCloneAt(-1, v8, -1, v9);
  if (v10)
  {
    v11 = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    if (v11)
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, 0x90u))
      {
        v17 = "(passed to caller)";
        v18 = 136315906;
        v19 = "+[BRCFileSystemWrapper cloneFromURL:toURL:error:]";
        v20 = 2080;
        if (!a5)
        {
          v17 = "(ignored by caller)";
        }

        v21 = v17;
        v22 = 2112;
        v23 = v11;
        v24 = 2112;
        v25 = v12;
        _os_log_error_impl(&dword_223E7A000, v13, 0x90u, "[ERROR] %s: %s error: %@%@", &v18, 0x2Au);
      }
    }

    if (a5)
    {
      v14 = v11;
      *a5 = v11;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

@end