@interface TISupplementalPersonItem(TextInputCore)
- (id)core_nameReadingPairsWithGenerationMode:()TextInputCore mecabraEnvironment:;
- (id)core_nonPhoneticRangesInString:()TextInputCore options:locale:;
- (uint64_t)core_isEqualToMecabraCandidate:()TextInputCore;
- (void)core_appendEntitiesToArray:()TextInputCore;
@end

@implementation TISupplementalPersonItem(TextInputCore)

- (id)core_nameReadingPairsWithGenerationMode:()TextInputCore mecabraEnvironment:
{
  v5 = a4;
  v6 = objc_alloc(MEMORY[0x277D1C0A8]);
  v7 = [a1 givenName];
  v8 = [a1 phoneticGivenName];
  v9 = [a1 middleName];
  v10 = [a1 phoneticMiddleName];
  v11 = [a1 familyName];
  v12 = [a1 phoneticFamilyName];
  v13 = [a1 organizationName];
  v14 = [a1 nickname];
  v15 = [v6 initWithFirstName:v7 phoneticFirstName:v8 middleName:v9 phoneticMiddleName:v10 lastName:v11 phoneticLastName:v12 organizationName:0.0 jobTitle:v13 nickname:0 relations:v14 streets:0 cities:0 score:0];

  v16 = v5;
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  TICreateNameReadingPairFromContactAndAppendToArray(v15, a3, v5, v17);
  v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v17, "count") >> 1}];
  if ([v17 count])
  {
    v19 = 0;
    do
    {
      v20 = [v17 objectAtIndexedSubscript:v19];
      if ([v17 count] <= v19 + 1)
      {
        v21 = 0;
      }

      else
      {
        v21 = [v17 objectAtIndexedSubscript:v19 + 1];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      v23 = [TINameReadingPair nameReadingPairWithName:v20 reading:v22];
      [v18 addObject:v23];

      v19 += 2;
    }

    while ([v17 count] > v19);
  }

  return v18;
}

- (id)core_nonPhoneticRangesInString:()TextInputCore options:locale:
{
  v8 = a3;
  v9 = a5;
  v10 = objc_opt_new();
  v11 = [a1 givenName];
  v12 = [v11 length];

  if (v12)
  {
    v13 = [a1 givenName];
    v14 = rangesOfStringInString(v13, v8, a4, v9);
    [v10 addObjectsFromArray:v14];
  }

  v15 = [a1 middleName];
  v16 = [v15 length];

  if (v16)
  {
    v17 = [a1 middleName];
    v18 = rangesOfStringInString(v17, v8, a4, v9);
    [v10 addObjectsFromArray:v18];
  }

  v19 = [a1 familyName];
  v20 = [v19 length];

  if (v20)
  {
    v21 = [a1 familyName];
    v22 = rangesOfStringInString(v21, v8, a4, v9);
    [v10 addObjectsFromArray:v22];
  }

  v23 = [a1 nickname];
  v24 = [v23 length];

  if (v24)
  {
    v25 = [a1 nickname];
    v26 = rangesOfStringInString(v25, v8, a4, v9);
    [v10 addObjectsFromArray:v26];
  }

  v27 = [a1 previousFamilyName];
  v28 = [v27 length];

  if (v28)
  {
    v29 = [a1 previousFamilyName];
    v30 = rangesOfStringInString(v29, v8, a4, v9);
    [v10 addObjectsFromArray:v30];
  }

  return v10;
}

- (uint64_t)core_isEqualToMecabraCandidate:()TextInputCore
{
  v4 = a3;
  v5 = [v4 input];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [a1 phoneticGivenName];
    v8 = [v4 input];
    v9 = [v7 isEqualToString:v8];

    if (v9)
    {
      goto LABEL_13;
    }

    v10 = [a1 phoneticMiddleName];
    v11 = [v4 input];
    v12 = [v10 isEqualToString:v11];

    if (v12)
    {
      goto LABEL_13;
    }

    v13 = [a1 phoneticFamilyName];
    v14 = [v4 input];
    v15 = [v13 isEqualToString:v14];

    if (v15)
    {
      goto LABEL_13;
    }

    v16 = [a1 nickname];
    v17 = [v4 input];
    v18 = [v16 isEqualToString:v17];

    if (v18)
    {
      goto LABEL_13;
    }

    v19 = [a1 previousFamilyName];
    v20 = [v4 input];
    v21 = [v19 isEqualToString:v20];

    if (v21)
    {
      goto LABEL_13;
    }
  }

  v22 = [v4 candidate];
  v23 = [v22 length];

  if (!v23)
  {
    goto LABEL_15;
  }

  v24 = [a1 givenName];
  v25 = [v4 candidate];
  v26 = [v24 isEqualToString:v25];

  if (v26)
  {
    goto LABEL_13;
  }

  v27 = [a1 middleName];
  v28 = [v4 candidate];
  v29 = [v27 isEqualToString:v28];

  if (v29)
  {
    goto LABEL_13;
  }

  v30 = [a1 familyName];
  v31 = [v4 candidate];
  v32 = [v30 isEqualToString:v31];

  if (v32)
  {
    goto LABEL_13;
  }

  v33 = [a1 nickname];
  v34 = [v4 candidate];
  v35 = [v33 isEqualToString:v34];

  if (v35 & 1) != 0 || ([a1 previousFamilyName], v36 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "candidate"), v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend(v36, "isEqualToString:", v37), v37, v36, (v38))
  {
LABEL_13:
    v39 = 1;
  }

  else
  {
LABEL_15:
    v39 = 0;
  }

  return v39;
}

- (void)core_appendEntitiesToArray:()TextInputCore
{
  v47 = a3;
  v4 = [a1 givenName];
  v5 = [v4 length];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D1C0B8]);
    v7 = [a1 givenName];
    v8 = [v6 initWithName:v7 data:{objc_msgSend(a1, "identifier")}];
    [v47 addObject:v8];
  }

  v9 = [a1 phoneticGivenName];
  v10 = [v9 length];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x277D1C0B8]);
    v12 = [a1 phoneticGivenName];
    v13 = [v11 initWithName:v12 data:{objc_msgSend(a1, "identifier")}];
    [v47 addObject:v13];
  }

  v14 = [a1 middleName];
  v15 = [v14 length];

  if (v15)
  {
    v16 = objc_alloc(MEMORY[0x277D1C0B8]);
    v17 = [a1 middleName];
    v18 = [v16 initWithName:v17 data:{objc_msgSend(a1, "identifier")}];
    [v47 addObject:v18];
  }

  v19 = [a1 phoneticMiddleName];
  v20 = [v19 length];

  if (v20)
  {
    v21 = objc_alloc(MEMORY[0x277D1C0B8]);
    v22 = [a1 phoneticMiddleName];
    v23 = [v21 initWithName:v22 data:{objc_msgSend(a1, "identifier")}];
    [v47 addObject:v23];
  }

  v24 = [a1 familyName];
  v25 = [v24 length];

  if (v25)
  {
    v26 = objc_alloc(MEMORY[0x277D1C0B8]);
    v27 = [a1 familyName];
    v28 = [v26 initWithName:v27 data:{objc_msgSend(a1, "identifier")}];
    [v47 addObject:v28];
  }

  v29 = [a1 phoneticFamilyName];
  v30 = [v29 length];

  if (v30)
  {
    v31 = objc_alloc(MEMORY[0x277D1C0B8]);
    v32 = [a1 phoneticFamilyName];
    v33 = [v31 initWithName:v32 data:{objc_msgSend(a1, "identifier")}];
    [v47 addObject:v33];
  }

  v34 = [a1 previousFamilyName];
  v35 = [v34 length];

  if (v35)
  {
    v36 = objc_alloc(MEMORY[0x277D1C0B8]);
    v37 = [a1 previousFamilyName];
    v38 = [v36 initWithName:v37 data:{objc_msgSend(a1, "identifier")}];
    [v47 addObject:v38];
  }

  v39 = [a1 nickname];
  v40 = [v39 length];

  if (v40)
  {
    v41 = objc_alloc(MEMORY[0x277D1C0B8]);
    v42 = [a1 nickname];
    v43 = [v41 initWithName:v42 data:{objc_msgSend(a1, "identifier")}];
    [v47 addObject:v43];
  }

  v44 = [a1 personNameComponents];
  if (v44)
  {
    v45 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v44 style:2 options:0];
    v46 = [objc_alloc(MEMORY[0x277D1C0B8]) initWithName:v45 data:{objc_msgSend(a1, "identifier")}];
    [v47 addObject:v46];
  }
}

@end