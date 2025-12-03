@interface BRCFileSystemWrapper
+ (int)cloneFromURL:(id)l toURL:(id)rL error:(id *)error;
@end

@implementation BRCFileSystemWrapper

+ (int)cloneFromURL:(id)l toURL:(id)rL error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  rLCopy = rL;
  path = [l path];
  path2 = [rLCopy path];

  v10 = BRCCloneAt(-1, path, -1, path2);
  if (v10)
  {
    br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    if (br_errorFromErrno)
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, 0x90u))
      {
        v17 = "(passed to caller)";
        v18 = 136315906;
        v19 = "+[BRCFileSystemWrapper cloneFromURL:toURL:error:]";
        v20 = 2080;
        if (!error)
        {
          v17 = "(ignored by caller)";
        }

        v21 = v17;
        v22 = 2112;
        v23 = br_errorFromErrno;
        v24 = 2112;
        v25 = v12;
        _os_log_error_impl(&dword_223E7A000, v13, 0x90u, "[ERROR] %s: %s error: %@%@", &v18, 0x2Au);
      }
    }

    if (error)
    {
      v14 = br_errorFromErrno;
      *error = br_errorFromErrno;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

@end