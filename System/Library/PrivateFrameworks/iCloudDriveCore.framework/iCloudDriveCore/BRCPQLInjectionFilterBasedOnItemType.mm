@interface BRCPQLInjectionFilterBasedOnItemType
+ (id)_injectionOptions;
- (BRCPQLInjectionFilterBasedOnItemType)initWithItemType:(id)a3;
@end

@implementation BRCPQLInjectionFilterBasedOnItemType

- (BRCPQLInjectionFilterBasedOnItemType)initWithItemType:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _injectionOptions];
  v6 = v4;
  if (!v4)
  {
    v6 = [MEMORY[0x277CBEB68] null];
  }

  v7 = [v5 objectForKeyedSubscript:v6];
  v10.receiver = self;
  v10.super_class = BRCPQLInjectionFilterBasedOnItemType;
  v8 = [(BRCPQLInjectionBase *)&v10 initWithActualInjection:v7];

  if (!v4)
  {
  }

  return v8;
}

+ (id)_injectionOptions
{
  if (_injectionOptions_onceToken != -1)
  {
    +[BRCPQLInjectionFilterBasedOnItemType _injectionOptions];
  }

  v3 = _injectionOptions_injectionOptions;

  return v3;
}

void __57__BRCPQLInjectionFilterBasedOnItemType__injectionOptions__block_invoke()
{
  v11[6] = *MEMORY[0x277D85DE8];
  v10[0] = @"br-alias";
  v0 = [MEMORY[0x277D82C18] rawInjection:" item_type = 3" length:14];
  v11[0] = v0;
  v10[1] = @"br-bookmark-fault";
  v1 = [MEMORY[0x277D82C18] rawInjection:" item_type = 7" length:14];
  v11[1] = v1;
  v10[2] = @"pkg";
  v2 = [MEMORY[0x277D82C18] rawInjection:" (item_type IN (1 length:{2, 8) AND HEX(SUBSTR(version_content_signature, 1, 1)) = '1B')", 81}];
  v11[2] = v2;
  v10[3] = @"br-non-uploaded";
  v3 = [MEMORY[0x277D82C18] rawInjection:" item_localsyncupstate = 3" length:26];
  v11[3] = v3;
  v10[4] = @"busy";
  v4 = [MEMORY[0x277D82C18] rawInjection:" item_birthtime IN (443779200 length:{-2082844800)", 43}];
  v11[4] = v4;
  v5 = [MEMORY[0x277CBEB68] null];
  v10[5] = v5;
  v6 = [MEMORY[0x277D82C18] rawInjection:"1" length:1];
  v11[5] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:6];
  v8 = _injectionOptions_injectionOptions;
  _injectionOptions_injectionOptions = v7;

  v9 = *MEMORY[0x277D85DE8];
}

@end