@interface SDSeedingConfiguration
+ (SDSeedingConfiguration)nullConfiguration;
+ (id)currentConfiguration;
- (BOOL)isEqual:(id)equal;
- (NSDictionary)dictionaryRepresentation;
- (NSDictionary)enrollmentMetadata;
- (SDSeedingConfiguration)initWithBetaProgram:(id)program;
- (SDSeedingConfiguration)initWithCoder:(id)coder;
- (SDSeedingConfiguration)initWithDictionaryRepresentation:(id)representation;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SDSeedingConfiguration

- (SDSeedingConfiguration)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v11.receiver = self;
  v11.super_class = SDSeedingConfiguration;
  v5 = [(SDSeedingConfiguration *)&v11 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"seedProgram"];
    [(SDSeedingConfiguration *)v5 setSeedProgram:[SDSeedProgramManager _seedProgramForString:v6]];

    v7 = [representationCopy objectForKeyedSubscript:@"assetAudience"];
    [(SDSeedingConfiguration *)v5 setAssetAudience:v7];

    v8 = [representationCopy objectForKeyedSubscript:@"catalog"];
    [(SDSeedingConfiguration *)v5 setCatalog:v8];

    v9 = [representationCopy objectForKeyedSubscript:@"accountID"];
    [(SDSeedingConfiguration *)v5 setAccountID:v9];
  }

  return v5;
}

- (SDSeedingConfiguration)initWithBetaProgram:(id)program
{
  programCopy = program;
  v16.receiver = self;
  v16.super_class = SDSeedingConfiguration;
  v5 = [(SDSeedingConfiguration *)&v16 init];
  if (v5)
  {
    -[SDSeedingConfiguration setSeedProgram:](v5, "setSeedProgram:", [programCopy program]);
    assetAudience = [programCopy assetAudience];
    v7 = assetAudience;
    if (assetAudience)
    {
      v8 = assetAudience;
    }

    else
    {
      v8 = &stru_28424D460;
    }

    [(SDSeedingConfiguration *)v5 setAssetAudience:v8];

    catalog = [programCopy catalog];
    absoluteString = [catalog absoluteString];
    v11 = absoluteString;
    if (absoluteString)
    {
      v12 = absoluteString;
    }

    else
    {
      v12 = &stru_28424D460;
    }

    [(SDSeedingConfiguration *)v5 setCatalog:v12];

    v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(programCopy, "programID")}];
    [(SDSeedingConfiguration *)v5 setSeedProgramID:v13];

    v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(programCopy, "accountID")}];
    [(SDSeedingConfiguration *)v5 setAccountID:v14];
  }

  return v5;
}

- (SDSeedingConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = SDSeedingConfiguration;
  v5 = [(SDSeedingConfiguration *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"seedProgram"];
    [(SDSeedingConfiguration *)v5 setSeedProgram:[SDSeedProgramManager _seedProgramForString:v6]];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetAudience"];
    [(SDSeedingConfiguration *)v5 setAssetAudience:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"catalog"];
    [(SDSeedingConfiguration *)v5 setCatalog:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"seedProgramID"];
    [(SDSeedingConfiguration *)v5 setSeedProgramID:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
    [(SDSeedingConfiguration *)v5 setAccountID:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [SDSeedProgramManager stringForSeedProgram:[(SDSeedingConfiguration *)self seedProgram]];
  [coderCopy encodeObject:v5 forKey:@"seedProgram"];

  assetAudience = [(SDSeedingConfiguration *)self assetAudience];
  [coderCopy encodeObject:assetAudience forKey:@"assetAudience"];

  catalog = [(SDSeedingConfiguration *)self catalog];
  [coderCopy encodeObject:catalog forKey:@"catalog"];

  seedProgramID = [(SDSeedingConfiguration *)self seedProgramID];
  [coderCopy encodeObject:seedProgramID forKey:@"seedProgramID"];

  accountID = [(SDSeedingConfiguration *)self accountID];
  [coderCopy encodeObject:accountID forKey:@"accountID"];
}

+ (id)currentConfiguration
{
  v2 = objc_alloc_init(SDSeedingConfiguration);
  v3 = +[SDBetaManager _currentBetaProgram];
  v4 = v3;
  if (v3)
  {
    program = [v3 program];
  }

  else
  {
    program = 0;
  }

  [(SDSeedingConfiguration *)v2 setSeedProgram:program];
  v6 = +[SDCatalogUtilities _currentAssetAudience];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_28424D460;
  }

  [(SDSeedingConfiguration *)v2 setAssetAudience:v8];

  v9 = +[SDBetaManager sharedManager];
  _assetServerURLString = [v9 _assetServerURLString];
  v11 = _assetServerURLString;
  if (_assetServerURLString)
  {
    v12 = _assetServerURLString;
  }

  else
  {
    v12 = &stru_28424D460;
  }

  [(SDSeedingConfiguration *)v2 setCatalog:v12];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "programID")}];
  [(SDSeedingConfiguration *)v2 setSeedProgramID:v13];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "accountID")}];
  [(SDSeedingConfiguration *)v2 setAccountID:v14];

  return v2;
}

- (NSDictionary)dictionaryRepresentation
{
  v23[5] = *MEMORY[0x277D85DE8];
  v22[0] = @"seedProgram";
  v3 = [SDSeedProgramManager stringForSeedProgram:[(SDSeedingConfiguration *)self seedProgram]];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_28424D460;
  }

  v23[0] = v5;
  v22[1] = @"assetAudience";
  assetAudience = [(SDSeedingConfiguration *)self assetAudience];
  v7 = assetAudience;
  if (assetAudience)
  {
    v8 = assetAudience;
  }

  else
  {
    v8 = &stru_28424D460;
  }

  v23[1] = v8;
  v22[2] = @"catalog";
  catalog = [(SDSeedingConfiguration *)self catalog];
  v10 = catalog;
  if (catalog)
  {
    v11 = catalog;
  }

  else
  {
    v11 = &stru_28424D460;
  }

  v23[2] = v11;
  v22[3] = @"seedProgramID";
  seedProgramID = [(SDSeedingConfiguration *)self seedProgramID];
  stringValue = [seedProgramID stringValue];
  v14 = stringValue;
  if (stringValue)
  {
    v15 = stringValue;
  }

  else
  {
    v15 = &stru_28424D460;
  }

  v23[3] = v15;
  v22[4] = @"accountID";
  accountID = [(SDSeedingConfiguration *)self accountID];
  v17 = accountID;
  v18 = &unk_284250A80;
  if (accountID)
  {
    v18 = accountID;
  }

  v23[4] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (NSDictionary)enrollmentMetadata
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  assetAudience = [(SDSeedingConfiguration *)self assetAudience];
  [v3 setObject:assetAudience forKeyedSubscript:@"AssetAudience"];

  seedProgramID = [(SDSeedingConfiguration *)self seedProgramID];
  stringValue = [seedProgramID stringValue];
  [v3 setObject:stringValue forKeyedSubscript:@"ProgramID"];

  v7 = [SDSeedProgramManager stringForSeedProgram:[(SDSeedingConfiguration *)self seedProgram]];
  [v3 setObject:v7 forKeyedSubscript:@"SeedProgram"];

  v8 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    seedProgram = [(SDSeedingConfiguration *)self seedProgram];
    if (seedProgram == [v5 seedProgram])
    {
      assetAudience = [(SDSeedingConfiguration *)self assetAudience];
      assetAudience2 = [v5 assetAudience];
      if ([assetAudience isEqualToString:assetAudience2])
      {
        catalog = [(SDSeedingConfiguration *)self catalog];
        catalog2 = [v5 catalog];
        if ([catalog isEqualToString:catalog2])
        {
          seedProgramID = [(SDSeedingConfiguration *)self seedProgramID];
          seedProgramID2 = [v5 seedProgramID];
          v13 = [seedProgramID isEqualToNumber:seedProgramID2];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (SDSeedingConfiguration)nullConfiguration
{
  v2 = objc_alloc_init(SDSeedingConfiguration);
  [(SDSeedingConfiguration *)v2 setSeedProgram:0];
  [(SDSeedingConfiguration *)v2 setAssetAudience:&stru_28424D460];
  [(SDSeedingConfiguration *)v2 setCatalog:&stru_28424D460];
  [(SDSeedingConfiguration *)v2 setSeedProgramID:&unk_284250A98];
  [(SDSeedingConfiguration *)v2 setAccountID:&unk_284250A98];

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [SDSeedProgramManager stringForSeedProgram:[(SDSeedingConfiguration *)self seedProgram]];
  assetAudience = [(SDSeedingConfiguration *)self assetAudience];
  v8 = [v3 stringWithFormat:@"%@: %@ - %@", v5, v6, assetAudience];

  return v8;
}

@end