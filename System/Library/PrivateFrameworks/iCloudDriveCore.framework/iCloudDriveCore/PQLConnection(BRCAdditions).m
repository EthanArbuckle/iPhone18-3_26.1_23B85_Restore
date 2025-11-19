@interface PQLConnection(BRCAdditions)
- (uint64_t)br_isTableExists:()BRCAdditions;
- (uint64_t)dataWithSQL:()BRCAdditions;
- (uint64_t)itemIDWithSQL:()BRCAdditions;
- (uint64_t)numberWithSQL:()BRCAdditions;
- (uint64_t)registerFunction:()BRCAdditions nArgs:handler:error:;
- (uint64_t)stringWithSQL:()BRCAdditions;
@end

@implementation PQLConnection(BRCAdditions)

- (uint64_t)numberWithSQL:()BRCAdditions
{
  v10 = a3;
  v11 = [a1 fetchObjectOfClass:objc_opt_class() sql:v10 args:&a9];

  return v11;
}

- (uint64_t)stringWithSQL:()BRCAdditions
{
  v10 = a3;
  v11 = [a1 fetchObjectOfClass:objc_opt_class() sql:v10 args:&a9];

  return v11;
}

- (uint64_t)dataWithSQL:()BRCAdditions
{
  v10 = a3;
  v11 = [a1 fetchObjectOfClass:objc_opt_class() sql:v10 args:&a9];

  return v11;
}

- (uint64_t)itemIDWithSQL:()BRCAdditions
{
  v10 = a3;
  v11 = [a1 fetchObjectOfClass:objc_opt_class() sql:v10 args:&a9];

  return v11;
}

- (uint64_t)registerFunction:()BRCAdditions nArgs:handler:error:
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = [a1 registerFunction:? nArgs:? handler:?];
  if ((v8 & 1) == 0)
  {
    v9 = [a1 lastError];
    if (v9)
    {
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, 0x90u))
      {
        v15 = "(passed to caller)";
        v16 = 136315906;
        v17 = "[PQLConnection(BRCAdditions) registerFunction:nArgs:handler:error:]";
        v18 = 2080;
        if (!a6)
        {
          v15 = "(ignored by caller)";
        }

        v19 = v15;
        v20 = 2112;
        v21 = v9;
        v22 = 2112;
        v23 = v10;
        _os_log_error_impl(&dword_223E7A000, v11, 0x90u, "[ERROR] %s: %s error: %@%@", &v16, 0x2Au);
      }
    }

    if (a6)
    {
      v12 = v9;
      *a6 = v9;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

- (uint64_t)br_isTableExists:()BRCAdditions
{
  v3 = [a1 numberWithSQL:{@"SELECT 1 FROM sqlite_master where type = 'table' AND name = %@", a3}];
  v4 = [v3 BOOLValue];

  return v4;
}

@end