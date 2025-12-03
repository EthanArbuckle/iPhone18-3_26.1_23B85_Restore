@interface SASProximityInformationDictionaryCoder
- (BOOL)decodeBoolForKey:(id)key;
- (SASProximityInformationDictionaryCoder)initWithDictionary:(id)dictionary;
- (id)decodeObjectOfClasses:(id)classes forKey:(id)key;
- (void)setGrammarInflectionGender:(id)gender;
- (void)setWiFiPassword:(id)password;
- (void)setWiFiSSID:(id)d;
@end

@implementation SASProximityInformationDictionaryCoder

- (SASProximityInformationDictionaryCoder)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v8.receiver = self;
  v8.super_class = SASProximityInformationDictionaryCoder;
  v5 = [(SASProximityInformationDictionaryCoder *)&v8 init];
  if (v5)
  {
    v6 = [dictionaryCopy mutableCopy];
    [(SASProximityInformationDictionaryCoder *)v5 setDataDictionary:v6];
  }

  return v5;
}

- (id)decodeObjectOfClasses:(id)classes forKey:(id)key
{
  keyCopy = key;
  dataDictionary = [(SASProximityInformationDictionaryCoder *)self dataDictionary];
  v7 = [dataDictionary valueForKey:keyCopy];

  return v7;
}

- (BOOL)decodeBoolForKey:(id)key
{
  keyCopy = key;
  dataDictionary = [(SASProximityInformationDictionaryCoder *)self dataDictionary];
  v6 = [dataDictionary valueForKey:keyCopy];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    dataDictionary2 = [(SASProximityInformationDictionaryCoder *)self dataDictionary];
    v9 = [dataDictionary2 valueForKey:keyCopy];
    bOOLValue = [v9 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setWiFiSSID:(id)d
{
  v12[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [dCopy dataUsingEncoding:4];
  v10[0] = @"SSID";
  v10[1] = @"SSID_STR";
  v11[0] = v5;
  v11[1] = dCopy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  dataDictionary = [(SASProximityInformationDictionaryCoder *)self dataDictionary];
  [dataDictionary setValue:v7 forKey:@"networks"];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)setWiFiPassword:(id)password
{
  v8[1] = *MEMORY[0x277D85DE8];
  passwordCopy = password;
  dataDictionary = [(SASProximityInformationDictionaryCoder *)self dataDictionary];
  v8[0] = passwordCopy;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  [dataDictionary setValue:v6 forKey:@"networkPasswords"];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)setGrammarInflectionGender:(id)gender
{
  genderCopy = gender;
  v4 = objc_alloc_init(MEMORY[0x277CCAEA8]);
  lowercaseString = [genderCopy lowercaseString];
  v6 = [lowercaseString isEqualToString:@"masculine"];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    lowercaseString2 = [genderCopy lowercaseString];
    v9 = [lowercaseString2 isEqualToString:@"feminine"];

    if (v9)
    {
      v7 = 2;
    }

    else
    {
      lowercaseString3 = [genderCopy lowercaseString];
      v11 = [lowercaseString3 isEqualToString:@"neuter"];

      if (!v11)
      {
        goto LABEL_8;
      }

      v7 = 3;
    }
  }

  [v4 setGender:v7];
LABEL_8:
  dataDictionary = [(SASProximityInformationDictionaryCoder *)self dataDictionary];
  [dataDictionary setValue:v4 forKey:@"grammarInflection"];
}

@end