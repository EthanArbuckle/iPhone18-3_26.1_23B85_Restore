@interface PPContactNameRecordChangeHistoryAccumulator
- (PPInternalContactNameRecord)_nameRecordWithContactIdentifier:(unsigned int)a3 changeType:;
- (void)visitAddContactEvent:(id)a3;
- (void)visitDeleteContactEvent:(id)a3;
- (void)visitUpdateContactEvent:(id)a3;
@end

@implementation PPContactNameRecordChangeHistoryAccumulator

- (void)visitDeleteContactEvent:(id)a3
{
  if (!self->_truncated)
  {
    v5 = [a3 contactIdentifier];
    v7 = [(PPContactNameRecordChangeHistoryAccumulator *)self _nameRecordWithContactIdentifier:v5 changeType:3u];

    v6 = v7;
    if (v7)
    {
      [(NSMutableArray *)self->_records addObject:v7];
      v6 = v7;
    }
  }
}

- (PPInternalContactNameRecord)_nameRecordWithContactIdentifier:(unsigned int)a3 changeType:
{
  v37 = *MEMORY[0x277D85DE8];
  v31 = a2;
  if (a1)
  {
    if (a3 == 3)
    {
      v28 = 3;
      v5 = 0;
      v27 = 0;
    }

    else
    {
      v6 = *(a1 + 8);
      v7 = *(a1 + 16);
      v32 = 0;
      v5 = [v6 unifiedContactWithIdentifier:v31 keysToFetch:v7 error:&v32];
      v8 = v32;
      v9 = v8;
      if (!v5)
      {
        v16 = pp_contacts_log_handle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v34 = v31;
          v35 = 2112;
          v36 = v9;
          _os_log_error_impl(&dword_23224A000, v16, OS_LOG_TYPE_ERROR, "unifiedContactWithIdentifier failed for id: %@ error: %@", buf, 0x16u);
        }

        v5 = 0;
        v29 = 0;
        goto LABEL_7;
      }

      v28 = a3;
      v27 = v8;
    }

    v25 = [PPInternalContactNameRecord alloc];
    v26 = [MEMORY[0x277CCAD78] UUID];
    v24 = [v26 UUIDString];
    v23 = [v5 givenName];
    v22 = [v5 phoneticGivenName];
    v30 = [v5 middleName];
    v21 = [v5 phoneticMiddleName];
    v20 = [v5 familyName];
    v10 = [v5 phoneticFamilyName];
    v11 = [v5 organizationName];
    v19 = [v5 jobTitle];
    v12 = [v5 nickname];
    v13 = PPRelatedNamesForContact(v5);
    v14 = PPStreetNamesForContact(v5);
    v15 = PPCityNamesForContact(v5);
    v29 = [(PPInternalContactNameRecord *)v25 initWithIdentifier:v24 score:1 source:v31 sourceIdentifier:v28 changeType:v23 firstName:v22 phoneticFirstName:0.0 middleName:v30 phoneticMiddleName:v21 lastName:v20 phoneticLastName:v10 organizationName:v11 jobTitle:v19 nickname:v12 relatedNames:v13 streetNames:v14 cityNames:v15];

    v16 = v26;
    v9 = v27;
LABEL_7:

    goto LABEL_8;
  }

  v29 = 0;
LABEL_8:

  v17 = *MEMORY[0x277D85DE8];

  return v29;
}

- (void)visitUpdateContactEvent:(id)a3
{
  if (!self->_truncated)
  {
    v5 = [a3 contact];
    v6 = [v5 identifier];
    v8 = [(PPContactNameRecordChangeHistoryAccumulator *)self _nameRecordWithContactIdentifier:v6 changeType:2u];

    v7 = v8;
    if (v8)
    {
      [(NSMutableArray *)self->_records addObject:v8];
      v7 = v8;
    }
  }
}

- (void)visitAddContactEvent:(id)a3
{
  if (!self->_truncated)
  {
    v5 = [a3 contact];
    v6 = [v5 identifier];
    v8 = [(PPContactNameRecordChangeHistoryAccumulator *)self _nameRecordWithContactIdentifier:v6 changeType:1u];

    v7 = v8;
    if (v8)
    {
      [(NSMutableArray *)self->_records addObject:v8];
      v7 = v8;
    }
  }
}

@end