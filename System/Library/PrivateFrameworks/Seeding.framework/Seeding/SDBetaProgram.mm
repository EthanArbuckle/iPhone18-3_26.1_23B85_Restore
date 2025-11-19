@interface SDBetaProgram
+ (BOOL)isPad;
+ (id)betaProgramWithJSON:(id)a3;
- (BOOL)isMDMProgram;
- (SDBetaProgram)initWithCoder:(id)a3;
- (SDBetaProgram)initWithID:(int64_t)a3 title:(id)a4 program:(id)a5 catalog:(id)a6 assetUpdate:(id)a7 assetBrain:(id)a8 assetAudience:(id)a9 legalDocs:(id)a10 platform:(unint64_t)a11 buildPrefix:(id)a12 accountID:(int64_t)a13 betaEnrollmentTokens:(id)a14;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SDBetaProgram

+ (id)betaProgramWithJSON:(id)a3
{
  v90[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"catalog"];
  v6 = NilIfNSNull(v5);

  if (v6)
  {
    v7 = MEMORY[0x277CBEBC0];
    v8 = [v4 objectForKeyedSubscript:@"catalog"];
    v78 = [v7 URLWithString:v8];
  }

  else
  {
    v78 = 0;
  }

  v9 = [v4 objectForKeyedSubscript:@"id"];
  v10 = NilIfNSNull(v9);

  if (v10)
  {
    v11 = [v4 objectForKeyedSubscript:@"id"];
    v12 = [v11 integerValue];
  }

  else
  {
    v12 = 0;
  }

  v13 = [v4 objectForKeyedSubscript:@"title"];
  v14 = NilIfNSNull(v13);

  if (v14)
  {
    v15 = [v4 objectForKeyedSubscript:@"title"];
    if ([a1 isPad])
    {
      v16 = [v15 stringByReplacingOccurrencesOfString:@"iOS" withString:@"iPadOS"];

      v15 = v16;
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = [v4 objectForKeyedSubscript:@"program"];
  v18 = NilIfNSNull(v17);

  if (v18)
  {
    v19 = [v4 objectForKeyedSubscript:@"program"];
    v20 = NilIfNSNull(v19);
  }

  else
  {
    v20 = 0;
  }

  v21 = [v4 objectForKeyedSubscript:@"asset_update_url"];
  v22 = NilIfNSNull(v21);

  if (v22)
  {
    v23 = MEMORY[0x277CBEBC0];
    v24 = [v4 objectForKeyedSubscript:@"asset_update_url"];
    v25 = [v23 URLWithString:v24];
  }

  else
  {
    v25 = 0;
  }

  v26 = [v4 objectForKeyedSubscript:@"asset_brain_url"];
  v27 = NilIfNSNull(v26);

  if (v27)
  {
    v28 = MEMORY[0x277CBEBC0];
    v29 = [v4 objectForKeyedSubscript:@"asset_brain_url"];
    v77 = [v28 URLWithString:v29];
  }

  else
  {
    v77 = 0;
  }

  v30 = [v4 objectForKeyedSubscript:@"asset_audience"];
  v31 = NilIfNSNull(v30);

  if (v31)
  {
    v76 = [v4 objectForKeyedSubscript:@"asset_audience"];
  }

  else
  {
    v76 = 0;
  }

  v32 = [v4 objectForKeyedSubscript:@"legal_id"];
  v33 = NilIfNSNull(v32);

  if (v33)
  {
    v34 = [v4 objectForKeyedSubscript:@"legal_id"];
    v35 = [v34 integerValue];

    [v4 objectForKeyedSubscript:@"legal"];
    v37 = v36 = v25;
    v38 = [SDLegalDoc legalDocWithID:v35 title:@"Legal" content:v37];
    v90[0] = v38;
    v75 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:1];

    v25 = v36;
  }

  else
  {
    v75 = MEMORY[0x277CBEBF8];
  }

  v39 = [v4 objectForKeyedSubscript:@"platform"];
  v40 = NilIfNSNull(v39);

  if (v40)
  {
    v41 = [v4 objectForKeyedSubscript:@"platform"];
    v73 = SDPlatformFromString(v41);
  }

  else
  {
    v41 = +[SDSeedingLogging fwHandle];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v87 = v12;
      v88 = 2114;
      v89 = v15;
      _os_log_impl(&dword_22E41E000, v41, OS_LOG_TYPE_DEFAULT, "No platform specified for beta program [%ld: %{public}@], falling back to TV", buf, 0x16u);
    }

    v73 = 4;
  }

  v42 = [v4 objectForKeyedSubscript:@"program"];
  v43 = NilIfNSNull(v42);

  if (v43)
  {
    v44 = [v4 objectForKeyedSubscript:@"program"];
    [SDSeedProgramManager _seedProgramForString:v44];
  }

  else
  {
    v44 = +[SDSeedingLogging fwHandle];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v87 = v12;
      v88 = 2114;
      v89 = v15;
      _os_log_impl(&dword_22E41E000, v44, OS_LOG_TYPE_DEFAULT, "No programType specified for beta program [%ld: %{public}@], falling back to None", buf, 0x16u);
    }
  }

  v45 = [v4 objectForKeyedSubscript:@"build_prefix"];
  v46 = NilIfNSNull(v45);

  if (v46)
  {
    v47 = [v4 objectForKeyedSubscript:@"build_prefix"];
  }

  else
  {
    v47 = 0;
  }

  v48 = [v4 objectForKeyedSubscript:@"account_id"];
  v49 = NilIfNSNull(v48);

  if (v49)
  {
    v50 = [v4 objectForKeyedSubscript:@"account_id"];
    v51 = [v50 integerValue];

    v52 = v51;
  }

  else
  {
    v52 = 0;
  }

  v80 = [MEMORY[0x277CBEB58] setWithCapacity:3];
  v53 = [v4 objectForKeyedSubscript:@"provided_by"];
  v54 = NilIfNSNull(v53);

  v55 = v54;
  v79 = v4;
  if (v54)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v70 = v47;
      v71 = v20;
      v72 = v12;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v69 = v54;
      v56 = v54;
      v57 = [v56 countByEnumeratingWithState:&v81 objects:v85 count:16];
      if (v57)
      {
        v58 = v57;
        v59 = *v82;
        do
        {
          for (i = 0; i != v58; ++i)
          {
            if (*v82 != v59)
            {
              objc_enumerationMutation(v56);
            }

            v61 = *(*(&v81 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v62 = v61;
              v63 = [v62 objectForKeyedSubscript:@"type"];
              v64 = NilIfNSNull(v63);

              v65 = [v62 objectForKeyedSubscript:@"token"];

              v66 = NilIfNSNull(v65);

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && [v64 isEqualToString:@"BetaEnrollmentToken"] && objc_msgSend(v66, "length"))
                {
                  [v80 addObject:v66];
                }
              }
            }
          }

          v58 = [v56 countByEnumeratingWithState:&v81 objects:v85 count:16];
        }

        while (v58);
      }

      v12 = v72;
      v20 = v71;
      v47 = v70;
      v55 = v69;
    }
  }

  v74 = [[SDBetaProgram alloc] initWithID:v12 title:v15 program:v20 catalog:v78 assetUpdate:v25 assetBrain:v77 assetAudience:v76 legalDocs:v75 platform:v73 buildPrefix:v47 accountID:v52 betaEnrollmentTokens:v80];

  v67 = *MEMORY[0x277D85DE8];

  return v74;
}

- (SDBetaProgram)initWithID:(int64_t)a3 title:(id)a4 program:(id)a5 catalog:(id)a6 assetUpdate:(id)a7 assetBrain:(id)a8 assetAudience:(id)a9 legalDocs:(id)a10 platform:(unint64_t)a11 buildPrefix:(id)a12 accountID:(int64_t)a13 betaEnrollmentTokens:(id)a14
{
  v31 = a4;
  v30 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a12;
  v26 = a14;
  v32.receiver = self;
  v32.super_class = SDBetaProgram;
  v27 = [(SDBetaProgram *)&v32 init];
  v28 = v27;
  if (v27)
  {
    [(SDBetaProgram *)v27 setProgramID:a3];
    [(SDBetaProgram *)v28 setTitle:v31];
    [(SDBetaProgram *)v28 setProgram:[SDSeedProgramManager _seedProgramForString:v30]];
    [(SDBetaProgram *)v28 setCatalog:v20];
    [(SDBetaProgram *)v28 setAssetUpdate:v21];
    [(SDBetaProgram *)v28 setAssetBrain:v22];
    [(SDBetaProgram *)v28 setAssetAudience:v23];
    [(SDBetaProgram *)v28 setLegalDocs:v24];
    [(SDBetaProgram *)v28 setPlatform:a11];
    [(SDBetaProgram *)v28 setBuildPrefix:v25];
    [(SDBetaProgram *)v28 setAccountID:a13];
    [(SDBetaProgram *)v28 setBetaEnrollmentTokens:v26];
  }

  return v28;
}

- (BOOL)isMDMProgram
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(SDBetaProgram *)self betaEnrollmentTokens];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) length])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (SDBetaProgram)initWithCoder:(id)a3
{
  v29[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = SDBetaProgram;
  v5 = [(SDBetaProgram *)&v28 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"programID"];
    -[SDBetaProgram setProgramID:](v5, "setProgramID:", [v6 integerValue]);
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    [(SDBetaProgram *)v5 setTitle:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"program"];
    [(SDBetaProgram *)v5 setProgram:[SDSeedProgramManager _seedProgramForString:v8]];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"catalog"];
    [(SDBetaProgram *)v5 setCatalog:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetUpdate"];
    [(SDBetaProgram *)v5 setAssetUpdate:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetBrain"];
    [(SDBetaProgram *)v5 setAssetBrain:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetAudience"];
    [(SDBetaProgram *)v5 setAssetAudience:v12];

    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"legalDocs"];
    [(SDBetaProgram *)v5 setLegalDocs:v16];

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"platform"];
    -[SDBetaProgram setPlatform:](v5, "setPlatform:", [v17 integerValue]);
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"buildPrefix"];
    [(SDBetaProgram *)v5 setBuildPrefix:v18];

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
    -[SDBetaProgram setAccountID:](v5, "setAccountID:", [v19 integerValue]);
    v20 = MEMORY[0x277CBEB98];
    v29[0] = objc_opt_class();
    v29[1] = objc_opt_class();
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
    v22 = [v20 setWithArray:v21];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"betaEnrollmentTokens"];

    if (v23)
    {
      [(SDBetaProgram *)v5 setBetaEnrollmentTokens:v23];
    }

    else
    {
      v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"betaEnrollmentToken"];
      if (v24)
      {
        v25 = [MEMORY[0x277CBEB98] setWithObject:v24];
        [(SDBetaProgram *)v5 setBetaEnrollmentTokens:v25];
      }
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v22 = a3;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SDBetaProgram programID](self, "programID")}];
  [v22 encodeObject:v4 forKey:@"programID"];

  v5 = [(SDBetaProgram *)self title];
  [v22 encodeObject:v5 forKey:@"title"];

  v6 = [SDSeedProgramManager stringForSeedProgram:[(SDBetaProgram *)self program]];
  [v22 encodeObject:v6 forKey:@"program"];

  v7 = [(SDBetaProgram *)self catalog];
  [v22 encodeObject:v7 forKey:@"catalog"];

  v8 = [(SDBetaProgram *)self assetUpdate];
  [v22 encodeObject:v8 forKey:@"assetUpdate"];

  v9 = [(SDBetaProgram *)self assetBrain];
  [v22 encodeObject:v9 forKey:@"assetBrain"];

  v10 = [(SDBetaProgram *)self assetAudience];
  [v22 encodeObject:v10 forKey:@"assetAudience"];

  v11 = [(SDBetaProgram *)self legalDocs];
  [v22 encodeObject:v11 forKey:@"legalDocs"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SDBetaProgram platform](self, "platform")}];
  [v22 encodeObject:v12 forKey:@"platform"];

  v13 = [(SDBetaProgram *)self buildPrefix];
  [v22 encodeObject:v13 forKey:@"buildPrefix"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SDBetaProgram accountID](self, "accountID")}];
  [v22 encodeObject:v14 forKey:@"accountID"];

  v15 = [(SDBetaProgram *)self betaEnrollmentTokens];
  if (v15)
  {
    v16 = v15;
    v17 = [(SDBetaProgram *)self betaEnrollmentTokens];
    v18 = [v17 count];

    if (v18)
    {
      v19 = MEMORY[0x277CBEB98];
      v20 = [(SDBetaProgram *)self betaEnrollmentTokens];
      v21 = [v19 setWithSet:v20];
      [v22 encodeObject:v21 forKey:@"betaEnrollmentTokens"];
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SDBetaProgram *)self title];
  v5 = [v3 stringWithFormat:@"<SDBetaProgram: %@, ID: %ld MDM? %i>", v4, -[SDBetaProgram programID](self, "programID"), -[SDBetaProgram isMDMProgram](self, "isMDMProgram")];

  return v5;
}

- (id)debugDescription
{
  v3 = SDStringArrayFromPlatforms([(SDBetaProgram *)self platform]);
  v4 = [v3 componentsJoinedByString:{@", "}];

  v5 = MEMORY[0x277CCACA8];
  v6 = [(SDBetaProgram *)self title];
  v7 = [(SDBetaProgram *)self programID];
  v8 = [(SDBetaProgram *)self assetAudience];
  v9 = [(SDBetaProgram *)self buildPrefix];
  v10 = [(SDBetaProgram *)self accountID];
  v11 = [(SDBetaProgram *)self betaEnrollmentTokens];
  v12 = [v5 stringWithFormat:@"<SDBetaProgram:\n\tTitle: %@\n\tID: %ld\n\tAssetAudience: %@\n\tPlatform: %@\n\tBuildPrefix: %@\n\tAccountID: %ld\n\tBetaEnrollmentTokens: %@\n>", v6, v7, v8, v4, v9, v10, v11];

  return v12;
}

+ (BOOL)isPad
{
  if (isPad_onceToken != -1)
  {
    +[SDBetaProgram isPad];
  }

  return isPad_isPad;
}

uint64_t __22__SDBetaProgram_isPad__block_invoke()
{
  result = MGGetBoolAnswer();
  isPad_isPad = result;
  return result;
}

@end