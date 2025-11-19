@interface IPAAutoSettings
+ (id)pendingWithIdentifier:(id)a3;
- (BOOL)_applyArchiveDictionary:(id)a3;
- (BOOL)applyArchiveDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAutoSettings:(id)a3;
- (IPAAutoSettings)init;
- (IPAAutoSettings)initWithIdentifier:(id)a3;
- (NSString)debugDescription;
- (id)archiveDictionary;
- (void)_archiveIntoDictionary:(id)a3;
@end

@implementation IPAAutoSettings

+ (id)pendingWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = [(IPAAutoSettings *)[IPAPendingAutoSettings alloc] initWithIdentifier:v3];

  return v4;
}

- (NSString)debugDescription
{
  v3 = [(IPAAutoSettings *)self archiveDictionary];
  v4 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v3 options:1 error:0];
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

- (BOOL)applyArchiveDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    v6 = [(IPAAutoSettings *)self _applyArchiveDictionary:v4];

    return v6;
  }

  else
  {
    v8 = _PFAssertFailHandler();
    return [(IPAAutoSettings *)v8 isEqualToAutoSettings:v9, v10];
  }
}

- (BOOL)isEqualToAutoSettings:(id)a3
{
  v4 = a3;
  v5 = [(IPAAutoSettings *)self archiveDictionary];
  v6 = [v4 archiveDictionary];

  LOBYTE(v4) = [v5 isEqualToDictionary:v6];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IPAAutoSettings *)self isEqualToAutoSettings:v4];

  return v5;
}

- (IPAAutoSettings)initWithIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
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

- (void)_archiveIntoDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  NSStringFromClass(v4);
  objc_claimAutoreleasedReturnValue();
  v5 = _PFAssertFailHandler();
  [(IPAAutoSettings *)v5 _applyArchiveDictionary:v6, v7];
}

- (BOOL)_applyArchiveDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  NSStringFromClass(v4);
  objc_claimAutoreleasedReturnValue();
  v5 = _PFAssertFailHandler();
  [(IPAAdjustmentVersion *)v5 .cxx_destruct];
  return result;
}

@end