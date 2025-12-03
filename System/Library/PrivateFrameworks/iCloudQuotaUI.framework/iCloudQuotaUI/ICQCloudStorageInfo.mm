@interface ICQCloudStorageInfo
+ (id)backupInfoHeaders;
+ (id)backupInfoHeadersForAccount:(id)account;
@end

@implementation ICQCloudStorageInfo

+ (id)backupInfoHeaders
{
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];

  v5 = [self backupInfoHeadersForAccount:aa_primaryAppleAccount];

  return v5;
}

+ (id)backupInfoHeadersForAccount:(id)account
{
  v3 = MEMORY[0x277CBEB38];
  accountCopy = account;
  dictionary = [v3 dictionary];
  if ([accountCopy isEnabledForDataclass:*MEMORY[0x277CB90C8]])
  {
    v6 = @"ON";
  }

  else
  {
    v6 = @"OFF";
  }

  [dictionary setObject:v6 forKey:@"X-Client-Backup"];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  name = [currentDevice name];
  v9 = [name dataUsingEncoding:4];
  v10 = [v9 base64EncodedStringWithOptions:0];

  [dictionary setObject:v10 forKey:@"X-Client-DeviceName"];
  v30 = 0;
  v11 = [objc_alloc(MEMORY[0x277D28A40]) initWithAccount:accountCopy delegate:0 eventQueue:0 error:&v30];

  v12 = v30;
  if (v12)
  {
    backupState = _ICQGetLogSystem();
    if (os_log_type_enabled(backupState, OS_LOG_TYPE_ERROR))
    {
      [(ICQCloudStorageInfo *)v12 backupInfoHeadersForAccount:backupState];
    }

    goto LABEL_11;
  }

  backupState = [v11 backupState];
  if ([backupState state]!= 6)
  {
LABEL_11:
    v17 = @"SUCCESS";
    goto LABEL_12;
  }

  error = [backupState error];
  code = [error code];

  if (code == 303)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", objc_msgSend(v11, "nextBackupSize")];
    [dictionary setObject:v16 forKey:@"X-Client-LastBackupSizeBytes"];
  }

  v17 = @"FAIL";
LABEL_12:

  [dictionary setObject:v17 forKey:@"X-Client-LastBackupState"];
  v18 = MGCopyAnswer();
  if (v18)
  {
    [dictionary setObject:v18 forKey:@"X-Client-Device-Color"];
  }

  v19 = MGCopyAnswer();
  if (v19)
  {
    [dictionary setObject:v19 forKey:@"X-Client-Device-Enclosure-Color"];
  }

  v20 = MGCopyAnswer();
  v21 = v20;
  if (v20)
  {
    stringValue = [v20 stringValue];
    [dictionary setObject:stringValue forKey:@"X-Client-Device-CoverGlassColor"];
  }

  v23 = MGCopyAnswer();
  v24 = v23;
  if (v23)
  {
    stringValue2 = [v23 stringValue];
    [dictionary setObject:stringValue2 forKey:@"X-Client-Device-HousingColor"];
  }

  v26 = MGCopyAnswer();
  v27 = v26;
  if (v26)
  {
    stringValue3 = [v26 stringValue];
    [dictionary setObject:stringValue3 forKey:@"X-Client-Device-BackingColor"];
  }

  return dictionary;
}

+ (void)backupInfoHeadersForAccount:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "+[ICQCloudStorageInfo backupInfoHeadersForAccount:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_275623000, a2, OS_LOG_TYPE_ERROR, "%s unable to init MBManager with error: %@", &v2, 0x16u);
}

@end