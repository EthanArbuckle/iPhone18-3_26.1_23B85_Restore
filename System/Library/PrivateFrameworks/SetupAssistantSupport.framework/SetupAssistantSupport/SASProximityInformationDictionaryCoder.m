@interface SASProximityInformationDictionaryCoder
- (BOOL)decodeBoolForKey:(id)a3;
- (SASProximityInformationDictionaryCoder)initWithDictionary:(id)a3;
- (id)decodeObjectOfClasses:(id)a3 forKey:(id)a4;
- (void)setGrammarInflectionGender:(id)a3;
- (void)setWiFiPassword:(id)a3;
- (void)setWiFiSSID:(id)a3;
@end

@implementation SASProximityInformationDictionaryCoder

- (SASProximityInformationDictionaryCoder)initWithDictionary:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SASProximityInformationDictionaryCoder;
  v5 = [(SASProximityInformationDictionaryCoder *)&v8 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    [(SASProximityInformationDictionaryCoder *)v5 setDataDictionary:v6];
  }

  return v5;
}

- (id)decodeObjectOfClasses:(id)a3 forKey:(id)a4
{
  v5 = a4;
  v6 = [(SASProximityInformationDictionaryCoder *)self dataDictionary];
  v7 = [v6 valueForKey:v5];

  return v7;
}

- (BOOL)decodeBoolForKey:(id)a3
{
  v4 = a3;
  v5 = [(SASProximityInformationDictionaryCoder *)self dataDictionary];
  v6 = [v5 valueForKey:v4];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v8 = [(SASProximityInformationDictionaryCoder *)self dataDictionary];
    v9 = [v8 valueForKey:v4];
    v10 = [v9 BOOLValue];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setWiFiSSID:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 dataUsingEncoding:4];
  v10[0] = @"SSID";
  v10[1] = @"SSID_STR";
  v11[0] = v5;
  v11[1] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  v8 = [(SASProximityInformationDictionaryCoder *)self dataDictionary];
  [v8 setValue:v7 forKey:@"networks"];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setWiFiPassword:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SASProximityInformationDictionaryCoder *)self dataDictionary];
  v8[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  [v5 setValue:v6 forKey:@"networkPasswords"];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setGrammarInflectionGender:(id)a3
{
  v13 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCAEA8]);
  v5 = [v13 lowercaseString];
  v6 = [v5 isEqualToString:@"masculine"];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [v13 lowercaseString];
    v9 = [v8 isEqualToString:@"feminine"];

    if (v9)
    {
      v7 = 2;
    }

    else
    {
      v10 = [v13 lowercaseString];
      v11 = [v10 isEqualToString:@"neuter"];

      if (!v11)
      {
        goto LABEL_8;
      }

      v7 = 3;
    }
  }

  [v4 setGender:v7];
LABEL_8:
  v12 = [(SASProximityInformationDictionaryCoder *)self dataDictionary];
  [v12 setValue:v4 forKey:@"grammarInflection"];
}

@end