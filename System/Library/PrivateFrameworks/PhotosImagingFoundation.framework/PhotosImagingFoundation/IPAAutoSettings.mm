@interface IPAAutoSettings
+ (id)pendingWithIdentifier:(id)identifier;
- (BOOL)_applyArchiveDictionary:(id)dictionary;
- (BOOL)applyArchiveDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAutoSettings:(id)settings;
- (IPAAutoSettings)init;
- (IPAAutoSettings)initWithIdentifier:(id)identifier;
- (NSString)debugDescription;
- (id)archiveDictionary;
- (void)_archiveIntoDictionary:(id)dictionary;
@end

@implementation IPAAutoSettings

+ (id)pendingWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(IPAAutoSettings *)[IPAPendingAutoSettings alloc] initWithIdentifier:identifierCopy];

  return v4;
}

- (NSString)debugDescription
{
  archiveDictionary = [(IPAAutoSettings *)self archiveDictionary];
  v4 = [MEMORY[0x277CCAAA0] dataWithJSONObject:archiveDictionary options:1 error:0];
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:1];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"<%@:%p %@>", objc_opt_class(), self, v5];

  return v6;
}

- (id)archiveDictionary
{
  v3 = objc_opt_new();
  if ([(IPAAutoSettings *)self pending])
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v3 setObject:v4 forKeyedSubscript:@"pending"];
  }

  [(IPAAutoSettings *)self _archiveIntoDictionary:v3];

  return v3;
}

- (BOOL)applyArchiveDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v5 = dictionaryCopy;
    v6 = [(IPAAutoSettings *)self _applyArchiveDictionary:dictionaryCopy];

    return v6;
  }

  else
  {
    v8 = _PFAssertFailHandler();
    return [(IPAAutoSettings *)v8 isEqualToAutoSettings:v9, v10];
  }
}

- (BOOL)isEqualToAutoSettings:(id)settings
{
  settingsCopy = settings;
  archiveDictionary = [(IPAAutoSettings *)self archiveDictionary];
  archiveDictionary2 = [settingsCopy archiveDictionary];

  LOBYTE(settingsCopy) = [archiveDictionary isEqualToDictionary:archiveDictionary2];
  return settingsCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IPAAutoSettings *)self isEqualToAutoSettings:equalCopy];

  return v5;
}

- (IPAAutoSettings)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = identifierCopy;
    v12.receiver = self;
    v12.super_class = IPAAutoSettings;
    v6 = [(IPAAutoSettings *)&v12 init];
    if (v6)
    {
      v7 = [v5 copy];
      identifier = v6->_identifier;
      v6->_identifier = v7;
    }

    return v6;
  }

  else
  {
    v10 = _PFAssertFailHandler();
    return [(IPAAutoSettings *)v10 init];
  }
}

- (IPAAutoSettings)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"unsupported initializer, use -initWithIdentifier instead"}];

  return 0;
}

- (void)_archiveIntoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_opt_class();
  NSStringFromClass(v4);
  objc_claimAutoreleasedReturnValue();
  v5 = _PFAssertFailHandler();
  [(IPAAutoSettings *)v5 _applyArchiveDictionary:v6, v7];
}

- (BOOL)_applyArchiveDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_opt_class();
  NSStringFromClass(v4);
  objc_claimAutoreleasedReturnValue();
  v5 = _PFAssertFailHandler();
  [(IPAAdjustmentVersion *)v5 .cxx_destruct];
  return result;
}

@end