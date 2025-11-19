@interface SDSeedingConfiguration
+ (SDSeedingConfiguration)nullConfiguration;
+ (id)currentConfiguration;
- (BOOL)isEqual:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (NSDictionary)enrollmentMetadata;
- (SDSeedingConfiguration)initWithBetaProgram:(id)a3;
- (SDSeedingConfiguration)initWithCoder:(id)a3;
- (SDSeedingConfiguration)initWithDictionaryRepresentation:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SDSeedingConfiguration

- (SDSeedingConfiguration)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SDSeedingConfiguration;
  v5 = [(SDSeedingConfiguration *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"seedProgram"];
    [(SDSeedingConfiguration *)v5 setSeedProgram:[SDSeedProgramManager _seedProgramForString:v6]];

    v7 = [v4 objectForKeyedSubscript:@"assetAudience"];
    [(SDSeedingConfiguration *)v5 setAssetAudience:v7];

    v8 = [v4 objectForKeyedSubscript:@"catalog"];
    [(SDSeedingConfiguration *)v5 setCatalog:v8];

    v9 = [v4 objectForKeyedSubscript:@"accountID"];
    [(SDSeedingConfiguration *)v5 setAccountID:v9];
  }

  return v5;
}

- (SDSeedingConfiguration)initWithBetaProgram:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SDSeedingConfiguration;
  v5 = [(SDSeedingConfiguration *)&v16 init];
  if (v5)
  {
    -[SDSeedingConfiguration setSeedProgram:](v5, "setSeedProgram:", [v4 program]);
    v6 = [v4 assetAudience];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_28424D460;
    }

    [(SDSeedingConfiguration *)v5 setAssetAudience:v8];

    v9 = [v4 catalog];
    v10 = [v9 absoluteString];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &stru_28424D460;
    }

    [(SDSeedingConfiguration *)v5 setCatalog:v12];

    v13 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "programID")}];
    [(SDSeedingConfiguration *)v5 setSeedProgramID:v13];

    v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "accountID")}];
    [(SDSeedingConfiguration *)v5 setAccountID:v14];
  }

  return v5;
}

- (SDSeedingConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SDSeedingConfiguration;
  v5 = [(SDSeedingConfiguration *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"seedProgram"];
    [(SDSeedingConfiguration *)v5 setSeedProgram:[SDSeedProgramManager _seedProgramForString:v6]];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetAudience"];
    [(SDSeedingConfiguration *)v5 setAssetAudience:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"catalog"];
    [(SDSeedingConfiguration *)v5 setCatalog:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"seedProgramID"];
    [(SDSeedingConfiguration *)v5 setSeedProgramID:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
    [(SDSeedingConfiguration *)v5 setAccountID:v10];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [SDSeedProgramManager stringForSeedProgram:[(SDSeedingConfiguration *)self seedProgram]];
  [v4 encodeObject:v5 forKey:@"seedProgram"];

  v6 = [(SDSeedingConfiguration *)self assetAudience];
  [v4 encodeObject:v6 forKey:@"assetAudience"];

  v7 = [(SDSeedingConfiguration *)self catalog];
  [v4 encodeObject:v7 forKey:@"catalog"];

  v8 = [(SDSeedingConfiguration *)self seedProgramID];
  [v4 encodeObject:v8 forKey:@"seedProgramID"];

  v9 = [(SDSeedingConfiguration *)self accountID];
  [v4 encodeObject:v9 forKey:@"accountID"];
}

+ (id)currentConfiguration
{
  v2 = objc_alloc_init(SDSeedingConfiguration);
  v3 = +[SDBetaManager _currentBetaProgram];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 program];
  }

  else
  {
    v5 = 0;
  }

  [(SDSeedingConfiguration *)v2 setSeedProgram:v5];
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
  v10 = [v9 _assetServerURLString];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
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
  v6 = [(SDSeedingConfiguration *)self assetAudience];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_28424D460;
  }

  v23[1] = v8;
  v22[2] = @"catalog";
  v9 = [(SDSeedingConfiguration *)self catalog];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_28424D460;
  }

  v23[2] = v11;
  v22[3] = @"seedProgramID";
  v12 = [(SDSeedingConfiguration *)self seedProgramID];
  v13 = [v12 stringValue];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = &stru_28424D460;
  }

  v23[3] = v15;
  v22[4] = @"accountID";
  v16 = [(SDSeedingConfiguration *)self accountID];
  v17 = v16;
  v18 = &unk_284250A80;
  if (v16)
  {
    v18 = v16;
  }

  v23[4] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (NSDictionary)enrollmentMetadata
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v4 = [(SDSeedingConfiguration *)self assetAudience];
  [v3 setObject:v4 forKeyedSubscript:@"AssetAudience"];

  v5 = [(SDSeedingConfiguration *)self seedProgramID];
  v6 = [v5 stringValue];
  [v3 setObject:v6 forKeyedSubscript:@"ProgramID"];

  v7 = [SDSeedProgramManager stringForSeedProgram:[(SDSeedingConfiguration *)self seedProgram]];
  [v3 setObject:v7 forKeyedSubscript:@"SeedProgram"];

  v8 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    v6 = [(SDSeedingConfiguration *)self seedProgram];
    if (v6 == [v5 seedProgram])
    {
      v7 = [(SDSeedingConfiguration *)self assetAudience];
      v8 = [v5 assetAudience];
      if ([v7 isEqualToString:v8])
      {
        v9 = [(SDSeedingConfiguration *)self catalog];
        v10 = [v5 catalog];
        if ([v9 isEqualToString:v10])
        {
          v11 = [(SDSeedingConfiguration *)self seedProgramID];
          v12 = [v5 seedProgramID];
          v13 = [v11 isEqualToNumber:v12];
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
  v7 = [(SDSeedingConfiguration *)self assetAudience];
  v8 = [v3 stringWithFormat:@"%@: %@ - %@", v5, v6, v7];

  return v8;
}

@end