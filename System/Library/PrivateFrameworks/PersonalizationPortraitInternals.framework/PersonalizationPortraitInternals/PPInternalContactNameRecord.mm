@interface PPInternalContactNameRecord
- (PPInternalContactNameRecord)initWithIdentifier:(id)a3 score:(double)a4 source:(unsigned __int8)a5 sourceIdentifier:(id)a6 changeType:(unsigned __int8)a7 firstName:(id)a8 phoneticFirstName:(id)a9 middleName:(id)a10 phoneticMiddleName:(id)a11 lastName:(id)a12 phoneticLastName:(id)a13 organizationName:(id)a14 jobTitle:(id)a15 nickname:(id)a16 relatedNames:(id)a17 streetNames:(id)a18 cityNames:(id)a19;
- (PPInternalContactNameRecord)initWithPBContactNameRecord:(id)a3;
- (id)clientCopy;
- (id)copyWithZone:(_NSZone *)a3;
- (id)localizedFullName;
- (id)relatedNames;
@end

@implementation PPInternalContactNameRecord

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PPInternalContactNameRecord alloc];
  v5 = [(PPPBContactNameRecord *)self->_pbRecord copy];
  v6 = [(PPInternalContactNameRecord *)v4 initWithPBContactNameRecord:v5];

  return v6;
}

- (id)localizedFullName
{
  localizedFullName = self->_localizedFullName;
  if (!localizedFullName)
  {
    v4 = objc_opt_new();
    v5 = [(PPPBContactNameRecord *)self->_pbRecord firstName];
    v6 = [(PPPBContactNameRecord *)self->_pbRecord middleName];
    v7 = [(PPPBContactNameRecord *)self->_pbRecord lastName];
    v8 = [(PPPBContactNameRecord *)self->_pbRecord nickname];
    if (v5)
    {
      [v4 setGivenName:v5];
    }

    if (v6)
    {
      [v4 setMiddleName:v6];
    }

    if (v7)
    {
      [v4 setFamilyName:v7];
    }

    if (v8)
    {
      [v4 setNickname:v8];
    }

    [v4 setContactType:0];
    v9 = [MEMORY[0x277CBDA78] stringFromContact:v4 style:0];
    v10 = self->_localizedFullName;
    self->_localizedFullName = v9;

    localizedFullName = self->_localizedFullName;
  }

  return localizedFullName;
}

- (id)relatedNames
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB38]);
  v4 = [(PPPBContactNameRecord *)self->_pbRecord relatedNames];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [(PPPBContactNameRecord *)self->_pbRecord relatedNames];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 key];
        if (v12)
        {
          v13 = v12;
          v14 = [v11 value];

          if (v14)
          {
            v15 = [v11 value];
            v16 = [v11 key];
            [v5 setObject:v15 forKeyedSubscript:v16];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)clientCopy
{
  v21 = objc_alloc(MEMORY[0x277D3A360]);
  v23 = [(PPInternalContactNameRecord *)self identifier];
  [(PPInternalContactNameRecord *)self score];
  v4 = v3;
  v20 = [(PPInternalContactNameRecord *)self source];
  v19 = [(PPInternalContactNameRecord *)self sourceIdentifier];
  v18 = [(PPInternalContactNameRecord *)self changeType];
  v17 = [(PPInternalContactNameRecord *)self firstName];
  v16 = [(PPInternalContactNameRecord *)self phoneticFirstName];
  v15 = [(PPInternalContactNameRecord *)self middleName];
  v14 = [(PPInternalContactNameRecord *)self phoneticMiddleName];
  v13 = [(PPInternalContactNameRecord *)self lastName];
  v5 = [(PPInternalContactNameRecord *)self phoneticLastName];
  v6 = [(PPInternalContactNameRecord *)self organizationName];
  v7 = [(PPInternalContactNameRecord *)self jobTitle];
  v8 = [(PPInternalContactNameRecord *)self nickname];
  v9 = [(PPInternalContactNameRecord *)self relatedNames];
  v10 = [(PPInternalContactNameRecord *)self streetNames];
  v11 = [(PPInternalContactNameRecord *)self cityNames];
  v22 = [v21 initWithIdentifier:v23 score:v20 source:v19 sourceIdentifier:v18 changeType:v17 firstName:v16 phoneticFirstName:v4 middleName:v15 phoneticMiddleName:v14 lastName:v13 phoneticLastName:v5 organizationName:v6 jobTitle:v7 nickname:v8 relatedNames:v9 streetNames:v10 cityNames:v11];

  return v22;
}

- (PPInternalContactNameRecord)initWithPBContactNameRecord:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PPInternalContactNameRecord;
  v6 = [(PPContactNameRecord *)&v9 init_];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 1, a3);
  }

  return v7;
}

- (PPInternalContactNameRecord)initWithIdentifier:(id)a3 score:(double)a4 source:(unsigned __int8)a5 sourceIdentifier:(id)a6 changeType:(unsigned __int8)a7 firstName:(id)a8 phoneticFirstName:(id)a9 middleName:(id)a10 phoneticMiddleName:(id)a11 lastName:(id)a12 phoneticLastName:(id)a13 organizationName:(id)a14 jobTitle:(id)a15 nickname:(id)a16 relatedNames:(id)a17 streetNames:(id)a18 cityNames:(id)a19
{
  v53 = a7;
  v51 = a5;
  v71 = *MEMORY[0x277D85DE8];
  v23 = a3;
  v24 = a6;
  v25 = a8;
  v26 = a9;
  v64 = a10;
  v27 = a11;
  v63 = a12;
  v62 = a13;
  v28 = v23;
  v61 = a14;
  v29 = a15;
  v30 = a16;
  v31 = a17;
  v60 = a18;
  v32 = a19;
  v69.receiver = self;
  v69.super_class = PPInternalContactNameRecord;
  v33 = [(PPContactNameRecord *)&v69 init_];
  if (v33)
  {
    v34 = objc_opt_new();
    v59 = v27;
    pbRecord = v33->_pbRecord;
    v33->_pbRecord = v34;

    [(PPPBContactNameRecord *)v33->_pbRecord setIdentifier:v28];
    [(PPPBContactNameRecord *)v33->_pbRecord setScore:a4];
    [(PPPBContactNameRecord *)v33->_pbRecord setSource:v51];
    v55 = v24;
    [(PPPBContactNameRecord *)v33->_pbRecord setSourceIdentifier:v24];
    [(PPPBContactNameRecord *)v33->_pbRecord setChangeType:v53];
    [(PPPBContactNameRecord *)v33->_pbRecord setFirstName:v25];
    v57 = v26;
    [(PPPBContactNameRecord *)v33->_pbRecord setPhoneticFirstName:v26];
    [(PPPBContactNameRecord *)v33->_pbRecord setMiddleName:v64];
    [(PPPBContactNameRecord *)v33->_pbRecord setPhoneticMiddleName:v27];
    [(PPPBContactNameRecord *)v33->_pbRecord setLastName:v63];
    [(PPPBContactNameRecord *)v33->_pbRecord setPhoneticLastName:v62];
    [(PPPBContactNameRecord *)v33->_pbRecord setOrganizationName:v61];
    v56 = v29;
    [(PPPBContactNameRecord *)v33->_pbRecord setJobTitle:v29];
    [(PPPBContactNameRecord *)v33->_pbRecord setNickname:v30];
    v52 = v31;
    v54 = v30;
    v36 = v24;
    if ([v31 count])
    {
      v50 = v28;
      v37 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v31, "count")}];
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v38 = v31;
      v39 = [v38 countByEnumeratingWithState:&v65 objects:v70 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v66;
        do
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v66 != v41)
            {
              objc_enumerationMutation(v38);
            }

            v43 = *(*(&v65 + 1) + 8 * i);
            v44 = objc_opt_new();
            [v44 setKey:v43];
            v45 = [v38 objectForKeyedSubscript:v43];
            [v44 setValue:v45];

            [v37 addObject:v44];
          }

          v40 = [v38 countByEnumeratingWithState:&v65 objects:v70 count:16];
        }

        while (v40);
      }

      [(PPPBContactNameRecord *)v33->_pbRecord setRelatedNames:v37];
      v28 = v50;
      v36 = v55;
    }

    v24 = v36;
    if ([v60 count])
    {
      v46 = [v60 mutableCopy];
      [(PPPBContactNameRecord *)v33->_pbRecord setStreetNames:v46];
    }

    else
    {
      [(PPPBContactNameRecord *)v33->_pbRecord setStreetNames:0];
    }

    v27 = v59;
    if ([v32 count])
    {
      v47 = [v32 mutableCopy];
      [(PPPBContactNameRecord *)v33->_pbRecord setCityNames:v47];
    }

    else
    {
      [(PPPBContactNameRecord *)v33->_pbRecord setCityNames:0];
    }

    v26 = v57;
    v29 = v56;
    v31 = v52;
    v30 = v54;
  }

  v48 = *MEMORY[0x277D85DE8];
  return v33;
}

@end