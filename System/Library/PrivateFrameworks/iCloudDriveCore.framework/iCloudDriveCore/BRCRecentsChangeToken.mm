@interface BRCRecentsChangeToken
+ (id)changeTokenFromData:(id)data;
- (id)toData;
@end

@implementation BRCRecentsChangeToken

- (id)toData
{
  v4 = *&self->_notifRank;
  v2 = [MEMORY[0x277CBEA90] dataWithBytes:&v4 length:16];

  return v2;
}

+ (id)changeTokenFromData:(id)data
{
  v16 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v4 = dataCopy;
  if (dataCopy)
  {
    v10 = 0;
    v11 = 0;
    if ([dataCopy length] == 16)
    {
      [v4 getBytes:&v10 length:16];
      v5 = objc_opt_new();
      [v5 setNotifRank:v10];
      [v5 setDatabaseID:v11];
      goto LABEL_8;
    }

    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v13 = v4;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEFAULT, "[WARNING] invalid change token format: %@%@", buf, 0x16u);
    }
  }

  v5 = 0;
LABEL_8:

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

@end