@interface ICSDataclassHelper
+ (id)attributedLinkForDataclass:(id)dataclass;
+ (id)dataclassAttributedLinkDictionary;
+ (id)dataclassSubTitleDictionary:(id)dictionary idmsAccount:(id)account securityLevel:(unint64_t)level;
+ (id)dataclassTitleDictionary;
+ (id)healthDataclassSubtitleForSecurityLevel:(unint64_t)level;
+ (id)localizedSubTitleForDataclass:(id)dataclass idmsAccount:(id)account securityLevel:(unint64_t)level;
+ (id)localizedTitleForDataclass:(id)dataclass;
+ (unint64_t)currentSecurityLevel:(unint64_t)level;
@end

@implementation ICSDataclassHelper

+ (id)localizedTitleForDataclass:(id)dataclass
{
  dataclassCopy = dataclass;
  dataclassTitleDictionary = [self dataclassTitleDictionary];
  v6 = [dataclassTitleDictionary objectForKeyedSubscript:dataclassCopy];

  return v6;
}

+ (id)localizedSubTitleForDataclass:(id)dataclass idmsAccount:(id)account securityLevel:(unint64_t)level
{
  v19 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  dataclassCopy = dataclass;
  v10 = LogSubsystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = accountCopy;
    v17 = 2048;
    levelCopy = level;
    _os_log_impl(&dword_275819000, v10, OS_LOG_TYPE_DEFAULT, "localizedSubTitleForDataclass idmsAccount: %@, securityLevel: %lu", &v15, 0x16u);
  }

  v11 = [self dataclassSubTitleDictionary:dataclassCopy idmsAccount:accountCopy securityLevel:level];
  v12 = [v11 objectForKeyedSubscript:dataclassCopy];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)attributedLinkForDataclass:(id)dataclass
{
  dataclassCopy = dataclass;
  dataclassAttributedLinkDictionary = [self dataclassAttributedLinkDictionary];
  v6 = [dataclassAttributedLinkDictionary objectForKeyedSubscript:dataclassCopy];

  return v6;
}

+ (id)dataclassTitleDictionary
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__ICSDataclassHelper_dataclassTitleDictionary__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (dataclassTitleDictionary_onceToken != -1)
  {
    dispatch_once(&dataclassTitleDictionary_onceToken, block);
  }

  v2 = dataclassTitleDictionary_dataclassTitleMap;

  return v2;
}

void __46__ICSDataclassHelper_dataclassTitleDictionary__block_invoke(uint64_t a1)
{
  v39 = objc_alloc_init(MEMORY[0x277CEC7B8]);
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = MEMORY[0x277CCACA8];
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"NOTES_DATACLASS_TITLE" value:&stru_288487370 table:@"Localizable-AppleID"];
  v7 = [v39 deviceClass];
  v8 = [v3 stringWithFormat:v6, v7];
  [v2 setObject:v8 forKeyedSubscript:*MEMORY[0x277CB89F8]];

  v9 = MEMORY[0x277CCACA8];
  v10 = *(a1 + 32);
  v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:@"MESSAGES_DATACLASS_TITLE" value:&stru_288487370 table:@"Localizable-AppleID"];
  v13 = [v39 deviceClass];
  v14 = [v9 stringWithFormat:v12, v13];
  [v2 setObject:v14 forKeyedSubscript:*MEMORY[0x277CB89D8]];

  v15 = [MEMORY[0x277CEC7A0] sharedManager];
  v16 = *MEMORY[0x277CB89A0];
  LODWORD(v12) = [v15 appIsNeitherInstalledOrPlaceholder:*MEMORY[0x277CB89A0]];

  v17 = MEMORY[0x277CCACA8];
  v18 = *(a1 + 32);
  v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v20 = v19;
  if (v12)
  {
    v21 = @"HEALTH_DATA_DATACLASS_TITLE";
  }

  else
  {
    v21 = @"HEALTH_DATACLASS_TITLE";
  }

  v22 = [v19 localizedStringForKey:v21 value:&stru_288487370 table:@"Localizable-AppleID"];
  v23 = [v39 deviceClass];
  v24 = [v17 stringWithFormat:v22, v23];
  [v2 setObject:v24 forKeyedSubscript:v16];

  v25 = MEMORY[0x277CCACA8];
  v26 = *(a1 + 32);
  v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v28 = [v27 localizedStringForKey:@"KEYCHAIN_DATACLASS_TITLE" value:&stru_288487370 table:@"Localizable-AppleID"];
  v29 = [v39 deviceClass];
  v30 = [v25 stringWithFormat:v28, v29];
  [v2 setObject:v30 forKeyedSubscript:*MEMORY[0x277CB89C0]];

  v31 = MEMORY[0x277CCACA8];
  v32 = *(a1 + 32);
  v33 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v34 = [v33 localizedStringForKey:@"ICLOUD_DRIVE_DATACLASS_TITLE" value:&stru_288487370 table:@"Localizable-AppleID"];
  v35 = [v39 deviceClass];
  v36 = [v31 stringWithFormat:v34, v35];
  [v2 setObject:v36 forKeyedSubscript:*MEMORY[0x277CB8A58]];

  v37 = [v2 copy];
  v38 = dataclassTitleDictionary_dataclassTitleMap;
  dataclassTitleDictionary_dataclassTitleMap = v37;
}

+ (id)dataclassSubTitleDictionary:(id)dictionary idmsAccount:(id)account securityLevel:(unint64_t)level
{
  v8 = [dictionary isEqualToString:*MEMORY[0x277CB89A0]];
  if (account && v8)
  {
    v9 = [self healthDataclassSubtitleForSecurityLevel:level];
  }

  else
  {
    v10 = LogSubsystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275819000, v10, OS_LOG_TYPE_DEFAULT, "IdMS account is nil. Proceeding with default subtitles for Health dataclass.", buf, 2u);
    }

    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"HEALTH_DATACLASS_SUBTITLE_DEFAULT"];
    v9 = [v11 localizedStringForKey:v12 value:&stru_288487370 table:@"Localizable-AppleID"];
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __76__ICSDataclassHelper_dataclassSubTitleDictionary_idmsAccount_securityLevel___block_invoke;
  v18[3] = &unk_27A666A68;
  v19 = v9;
  selfCopy = self;
  v13 = dataclassSubTitleDictionary_idmsAccount_securityLevel__onceToken;
  v14 = v9;
  if (v13 != -1)
  {
    dispatch_once(&dataclassSubTitleDictionary_idmsAccount_securityLevel__onceToken, v18);
  }

  v15 = dataclassSubTitleDictionary_idmsAccount_securityLevel__dataclassSubTitleMap;
  v16 = dataclassSubTitleDictionary_idmsAccount_securityLevel__dataclassSubTitleMap;

  return v15;
}

void __76__ICSDataclassHelper_dataclassSubTitleDictionary_idmsAccount_securityLevel___block_invoke(uint64_t a1)
{
  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"NOTES_DATACLASS_SUBTITLE" value:&stru_288487370 table:@"Localizable-AppleID"];
  [v16 setObject:v4 forKeyedSubscript:*MEMORY[0x277CB89F8]];

  v5 = *(a1 + 40);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"MESSAGES_DATACLASS_SUBTITLE" value:&stru_288487370 table:@"Localizable-AppleID"];
  [v16 setObject:v7 forKeyedSubscript:*MEMORY[0x277CB89D8]];

  [v16 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x277CB89A0]];
  v8 = *(a1 + 40);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"KEYCHAIN_DATACLASS_SUBTITLE" value:&stru_288487370 table:@"Localizable-AppleID"];
  [v16 setObject:v10 forKeyedSubscript:*MEMORY[0x277CB89C0]];

  v11 = *(a1 + 40);
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"ICLOUD_DRIVE_DATACLASS_SUBTITLE" value:&stru_288487370 table:@"Localizable-AppleID"];
  [v16 setObject:v13 forKeyedSubscript:*MEMORY[0x277CB8A58]];

  v14 = [v16 copy];
  v15 = dataclassSubTitleDictionary_idmsAccount_securityLevel__dataclassSubTitleMap;
  dataclassSubTitleDictionary_idmsAccount_securityLevel__dataclassSubTitleMap = v14;
}

+ (id)healthDataclassSubtitleForSecurityLevel:(unint64_t)level
{
  v3 = [self currentSecurityLevel:level];
  if (v3 > 3)
  {
    v7 = 0;
  }

  else
  {
    v4 = *(&off_27A666A88 + v3);
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:v4];
    v7 = [v5 localizedStringForKey:v6 value:&stru_288487370 table:@"Localizable-AppleID"];
  }

  return v7;
}

+ (unint64_t)currentSecurityLevel:(unint64_t)level
{
  mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
  hasLocalSecret = [mEMORY[0x277CFD4F8] hasLocalSecret];

  v6 = 1;
  if (level != 4)
  {
    v6 = 2;
  }

  v7 = 3;
  if (level != 4)
  {
    v7 = 0;
  }

  if (hasLocalSecret)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

+ (id)dataclassAttributedLinkDictionary
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__ICSDataclassHelper_dataclassAttributedLinkDictionary__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (dataclassAttributedLinkDictionary_onceToken != -1)
  {
    dispatch_once(&dataclassAttributedLinkDictionary_onceToken, block);
  }

  v2 = dataclassAttributedLinkDictionary_dataclassAttributedLinksMap;

  return v2;
}

void __55__ICSDataclassHelper_dataclassAttributedLinkDictionary__block_invoke(uint64_t a1)
{
  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"NOTES_LEARN_MORE_LINK" value:&stru_288487370 table:@"Localizable-AppleID"];
  [v16 setObject:v4 forKeyedSubscript:*MEMORY[0x277CB89F8]];

  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"MESSAGES_LEARN_MORE_LINK" value:&stru_288487370 table:@"Localizable-AppleID"];
  [v16 setObject:v7 forKeyedSubscript:*MEMORY[0x277CB89D8]];

  v8 = *(a1 + 32);
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"HEALTH_LEARN_MORE_LINK" value:&stru_288487370 table:@"Localizable-AppleID"];
  [v16 setObject:v10 forKeyedSubscript:*MEMORY[0x277CB89A0]];

  v11 = *(a1 + 32);
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"ICLOUD_DRIVE_LEARN_MORE_LINK" value:&stru_288487370 table:@"Localizable-AppleID"];
  [v16 setObject:v13 forKeyedSubscript:*MEMORY[0x277CB8A58]];

  v14 = [v16 copy];
  v15 = dataclassAttributedLinkDictionary_dataclassAttributedLinksMap;
  dataclassAttributedLinkDictionary_dataclassAttributedLinksMap = v14;
}

@end