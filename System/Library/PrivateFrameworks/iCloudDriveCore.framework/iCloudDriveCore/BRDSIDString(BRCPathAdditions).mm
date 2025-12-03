@interface BRDSIDString(BRCPathAdditions)
+ (id)brc_dbAccountDSIDForPath:()BRCPathAdditions;
@end

@implementation BRDSIDString(BRCPathAdditions)

+ (id)brc_dbAccountDSIDForPath:()BRCPathAdditions
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CCACA8];
  v6 = [self brc_accountIDPathForAccountPath:v4];
  v16 = 0;
  v7 = [v5 stringWithContentsOfFile:v6 encoding:4 error:&v16];
  v8 = v16;

  if (v8)
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, 0x90u))
    {
      *buf = 138412802;
      v18 = v4;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      _os_log_error_impl(&dword_223E7A000, v10, 0x90u, "[ERROR] Got error reading the account DSID from '%@': %@%@", buf, 0x20u);
    }

    v7 = 0;
  }

  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v12 = [v7 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if ([v12 length])
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

@end