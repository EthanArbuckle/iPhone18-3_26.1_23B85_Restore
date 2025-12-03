@interface SDBetaProgram
+ (BOOL)isPad;
+ (id)betaProgramWithJSON:(id)n;
- (BOOL)isMDMProgram;
- (SDBetaProgram)initWithCoder:(id)coder;
- (SDBetaProgram)initWithID:(int64_t)d title:(id)title program:(id)program catalog:(id)catalog assetUpdate:(id)update assetBrain:(id)brain assetAudience:(id)audience legalDocs:(id)self0 platform:(unint64_t)self1 buildPrefix:(id)self2 accountID:(int64_t)self3 betaEnrollmentTokens:(id)self4;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SDBetaProgram

+ (id)betaProgramWithJSON:(id)n
{
  v90[1] = *MEMORY[0x277D85DE8];
  nCopy = n;
  v5 = [nCopy objectForKeyedSubscript:@"catalog"];
  v6 = NilIfNSNull(v5);

  if (v6)
  {
    v7 = MEMORY[0x277CBEBC0];
    v8 = [nCopy objectForKeyedSubscript:@"catalog"];
    v78 = [v7 URLWithString:v8];
  }

  else
  {
    v78 = 0;
  }

  v9 = [nCopy objectForKeyedSubscript:@"id"];
  v10 = NilIfNSNull(v9);

  if (v10)
  {
    v11 = [nCopy objectForKeyedSubscript:@"id"];
    integerValue = [v11 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  v13 = [nCopy objectForKeyedSubscript:@"title"];
  v14 = NilIfNSNull(v13);

  if (v14)
  {
    v15 = [nCopy objectForKeyedSubscript:@"title"];
    if ([self isPad])
    {
      v16 = [v15 stringByReplacingOccurrencesOfString:@"iOS" withString:@"iPadOS"];

      v15 = v16;
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = [nCopy objectForKeyedSubscript:@"program"];
  v18 = NilIfNSNull(v17);

  if (v18)
  {
    v19 = [nCopy objectForKeyedSubscript:@"program"];
    v20 = NilIfNSNull(v19);
  }

  else
  {
    v20 = 0;
  }

  v21 = [nCopy objectForKeyedSubscript:@"asset_update_url"];
  v22 = NilIfNSNull(v21);

  if (v22)
  {
    v23 = MEMORY[0x277CBEBC0];
    v24 = [nCopy objectForKeyedSubscript:@"asset_update_url"];
    v25 = [v23 URLWithString:v24];
  }

  else
  {
    v25 = 0;
  }

  v26 = [nCopy objectForKeyedSubscript:@"asset_brain_url"];
  v27 = NilIfNSNull(v26);

  if (v27)
  {
    v28 = MEMORY[0x277CBEBC0];
    v29 = [nCopy objectForKeyedSubscript:@"asset_brain_url"];
    v77 = [v28 URLWithString:v29];
  }

  else
  {
    v77 = 0;
  }

  v30 = [nCopy objectForKeyedSubscript:@"asset_audience"];
  v31 = NilIfNSNull(v30);

  if (v31)
  {
    v76 = [nCopy objectForKeyedSubscript:@"asset_audience"];
  }

  else
  {
    v76 = 0;
  }

  v32 = [nCopy objectForKeyedSubscript:@"legal_id"];
  v33 = NilIfNSNull(v32);

  if (v33)
  {
    v34 = [nCopy objectForKeyedSubscript:@"legal_id"];
    integerValue2 = [v34 integerValue];

    [nCopy objectForKeyedSubscript:@"legal"];
    v37 = v36 = v25;
    v38 = [SDLegalDoc legalDocWithID:integerValue2 title:@"Legal" content:v37];
    v90[0] = v38;
    v75 = [MEMORY[0x277CBEA60] arrayWithObjects:v90 count:1];

    v25 = v36;
  }

  else
  {
    v75 = MEMORY[0x277CBEBF8];
  }

  v39 = [nCopy objectForKeyedSubscript:@"platform"];
  v40 = NilIfNSNull(v39);

  if (v40)
  {
    v41 = [nCopy objectForKeyedSubscript:@"platform"];
    v73 = SDPlatformFromString(v41);
  }

  else
  {
    v41 = +[SDSeedingLogging fwHandle];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v87 = integerValue;
      v88 = 2114;
      v89 = v15;
      _os_log_impl(&dword_22E41E000, v41, OS_LOG_TYPE_DEFAULT, "No platform specified for beta program [%ld: %{public}@], falling back to TV", buf, 0x16u);
    }

    v73 = 4;
  }

  v42 = [nCopy objectForKeyedSubscript:@"program"];
  v43 = NilIfNSNull(v42);

  if (v43)
  {
    v44 = [nCopy objectForKeyedSubscript:@"program"];
    [SDSeedProgramManager _seedProgramForString:v44];
  }

  else
  {
    v44 = +[SDSeedingLogging fwHandle];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v87 = integerValue;
      v88 = 2114;
      v89 = v15;
      _os_log_impl(&dword_22E41E000, v44, OS_LOG_TYPE_DEFAULT, "No programType specified for beta program [%ld: %{public}@], falling back to None", buf, 0x16u);
    }
  }

  v45 = [nCopy objectForKeyedSubscript:@"build_prefix"];
  v46 = NilIfNSNull(v45);

  if (v46)
  {
    v47 = [nCopy objectForKeyedSubscript:@"build_prefix"];
  }

  else
  {
    v47 = 0;
  }

  v48 = [nCopy objectForKeyedSubscript:@"account_id"];
  v49 = NilIfNSNull(v48);

  if (v49)
  {
    v50 = [nCopy objectForKeyedSubscript:@"account_id"];
    integerValue3 = [v50 integerValue];

    v52 = integerValue3;
  }

  else
  {
    v52 = 0;
  }

  v80 = [MEMORY[0x277CBEB58] setWithCapacity:3];
  v53 = [nCopy objectForKeyedSubscript:@"provided_by"];
  v54 = NilIfNSNull(v53);

  v55 = v54;
  v79 = nCopy;
  if (v54)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v70 = v47;
      v71 = v20;
      v72 = integerValue;
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

      integerValue = v72;
      v20 = v71;
      v47 = v70;
      v55 = v69;
    }
  }

  v74 = [[SDBetaProgram alloc] initWithID:integerValue title:v15 program:v20 catalog:v78 assetUpdate:v25 assetBrain:v77 assetAudience:v76 legalDocs:v75 platform:v73 buildPrefix:v47 accountID:v52 betaEnrollmentTokens:v80];

  v67 = *MEMORY[0x277D85DE8];

  return v74;
}

- (SDBetaProgram)initWithID:(int64_t)d title:(id)title program:(id)program catalog:(id)catalog assetUpdate:(id)update assetBrain:(id)brain assetAudience:(id)audience legalDocs:(id)self0 platform:(unint64_t)self1 buildPrefix:(id)self2 accountID:(int64_t)self3 betaEnrollmentTokens:(id)self4
{
  titleCopy = title;
  programCopy = program;
  catalogCopy = catalog;
  updateCopy = update;
  brainCopy = brain;
  audienceCopy = audience;
  docsCopy = docs;
  prefixCopy = prefix;
  tokensCopy = tokens;
  v32.receiver = self;
  v32.super_class = SDBetaProgram;
  v27 = [(SDBetaProgram *)&v32 init];
  v28 = v27;
  if (v27)
  {
    [(SDBetaProgram *)v27 setProgramID:d];
    [(SDBetaProgram *)v28 setTitle:titleCopy];
    [(SDBetaProgram *)v28 setProgram:[SDSeedProgramManager _seedProgramForString:programCopy]];
    [(SDBetaProgram *)v28 setCatalog:catalogCopy];
    [(SDBetaProgram *)v28 setAssetUpdate:updateCopy];
    [(SDBetaProgram *)v28 setAssetBrain:brainCopy];
    [(SDBetaProgram *)v28 setAssetAudience:audienceCopy];
    [(SDBetaProgram *)v28 setLegalDocs:docsCopy];
    [(SDBetaProgram *)v28 setPlatform:platform];
    [(SDBetaProgram *)v28 setBuildPrefix:prefixCopy];
    [(SDBetaProgram *)v28 setAccountID:iD];
    [(SDBetaProgram *)v28 setBetaEnrollmentTokens:tokensCopy];
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
  betaEnrollmentTokens = [(SDBetaProgram *)self betaEnrollmentTokens];
  v3 = [betaEnrollmentTokens countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(betaEnrollmentTokens);
        }

        if ([*(*(&v8 + 1) + 8 * i) length])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [betaEnrollmentTokens countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (SDBetaProgram)initWithCoder:(id)coder
{
  v29[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = SDBetaProgram;
  v5 = [(SDBetaProgram *)&v28 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"programID"];
    -[SDBetaProgram setProgramID:](v5, "setProgramID:", [v6 integerValue]);
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    [(SDBetaProgram *)v5 setTitle:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"program"];
    [(SDBetaProgram *)v5 setProgram:[SDSeedProgramManager _seedProgramForString:v8]];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"catalog"];
    [(SDBetaProgram *)v5 setCatalog:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetUpdate"];
    [(SDBetaProgram *)v5 setAssetUpdate:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetBrain"];
    [(SDBetaProgram *)v5 setAssetBrain:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetAudience"];
    [(SDBetaProgram *)v5 setAssetAudience:v12];

    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"legalDocs"];
    [(SDBetaProgram *)v5 setLegalDocs:v16];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"platform"];
    -[SDBetaProgram setPlatform:](v5, "setPlatform:", [v17 integerValue]);
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"buildPrefix"];
    [(SDBetaProgram *)v5 setBuildPrefix:v18];

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountID"];
    -[SDBetaProgram setAccountID:](v5, "setAccountID:", [v19 integerValue]);
    v20 = MEMORY[0x277CBEB98];
    v29[0] = objc_opt_class();
    v29[1] = objc_opt_class();
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
    v22 = [v20 setWithArray:v21];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"betaEnrollmentTokens"];

    if (v23)
    {
      [(SDBetaProgram *)v5 setBetaEnrollmentTokens:v23];
    }

    else
    {
      v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"betaEnrollmentToken"];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SDBetaProgram programID](self, "programID")}];
  [coderCopy encodeObject:v4 forKey:@"programID"];

  title = [(SDBetaProgram *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  v6 = [SDSeedProgramManager stringForSeedProgram:[(SDBetaProgram *)self program]];
  [coderCopy encodeObject:v6 forKey:@"program"];

  catalog = [(SDBetaProgram *)self catalog];
  [coderCopy encodeObject:catalog forKey:@"catalog"];

  assetUpdate = [(SDBetaProgram *)self assetUpdate];
  [coderCopy encodeObject:assetUpdate forKey:@"assetUpdate"];

  assetBrain = [(SDBetaProgram *)self assetBrain];
  [coderCopy encodeObject:assetBrain forKey:@"assetBrain"];

  assetAudience = [(SDBetaProgram *)self assetAudience];
  [coderCopy encodeObject:assetAudience forKey:@"assetAudience"];

  legalDocs = [(SDBetaProgram *)self legalDocs];
  [coderCopy encodeObject:legalDocs forKey:@"legalDocs"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SDBetaProgram platform](self, "platform")}];
  [coderCopy encodeObject:v12 forKey:@"platform"];

  buildPrefix = [(SDBetaProgram *)self buildPrefix];
  [coderCopy encodeObject:buildPrefix forKey:@"buildPrefix"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SDBetaProgram accountID](self, "accountID")}];
  [coderCopy encodeObject:v14 forKey:@"accountID"];

  betaEnrollmentTokens = [(SDBetaProgram *)self betaEnrollmentTokens];
  if (betaEnrollmentTokens)
  {
    v16 = betaEnrollmentTokens;
    betaEnrollmentTokens2 = [(SDBetaProgram *)self betaEnrollmentTokens];
    v18 = [betaEnrollmentTokens2 count];

    if (v18)
    {
      v19 = MEMORY[0x277CBEB98];
      betaEnrollmentTokens3 = [(SDBetaProgram *)self betaEnrollmentTokens];
      v21 = [v19 setWithSet:betaEnrollmentTokens3];
      [coderCopy encodeObject:v21 forKey:@"betaEnrollmentTokens"];
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  title = [(SDBetaProgram *)self title];
  v5 = [v3 stringWithFormat:@"<SDBetaProgram: %@, ID: %ld MDM? %i>", title, -[SDBetaProgram programID](self, "programID"), -[SDBetaProgram isMDMProgram](self, "isMDMProgram")];

  return v5;
}

- (id)debugDescription
{
  v3 = SDStringArrayFromPlatforms([(SDBetaProgram *)self platform]);
  v4 = [v3 componentsJoinedByString:{@", "}];

  v5 = MEMORY[0x277CCACA8];
  title = [(SDBetaProgram *)self title];
  programID = [(SDBetaProgram *)self programID];
  assetAudience = [(SDBetaProgram *)self assetAudience];
  buildPrefix = [(SDBetaProgram *)self buildPrefix];
  accountID = [(SDBetaProgram *)self accountID];
  betaEnrollmentTokens = [(SDBetaProgram *)self betaEnrollmentTokens];
  v12 = [v5 stringWithFormat:@"<SDBetaProgram:\n\tTitle: %@\n\tID: %ld\n\tAssetAudience: %@\n\tPlatform: %@\n\tBuildPrefix: %@\n\tAccountID: %ld\n\tBetaEnrollmentTokens: %@\n>", title, programID, assetAudience, v4, buildPrefix, accountID, betaEnrollmentTokens];

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