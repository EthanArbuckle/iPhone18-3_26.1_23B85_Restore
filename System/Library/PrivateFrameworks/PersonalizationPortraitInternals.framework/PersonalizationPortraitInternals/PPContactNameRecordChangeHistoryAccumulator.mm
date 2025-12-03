@interface PPContactNameRecordChangeHistoryAccumulator
- (PPInternalContactNameRecord)_nameRecordWithContactIdentifier:(unsigned int)identifier changeType:;
- (void)visitAddContactEvent:(id)event;
- (void)visitDeleteContactEvent:(id)event;
- (void)visitUpdateContactEvent:(id)event;
@end

@implementation PPContactNameRecordChangeHistoryAccumulator

- (void)visitDeleteContactEvent:(id)event
{
  if (!self->_truncated)
  {
    contactIdentifier = [event contactIdentifier];
    v7 = [(PPContactNameRecordChangeHistoryAccumulator *)self _nameRecordWithContactIdentifier:contactIdentifier changeType:3u];

    v6 = v7;
    if (v7)
    {
      [(NSMutableArray *)self->_records addObject:v7];
      v6 = v7;
    }
  }
}

- (PPInternalContactNameRecord)_nameRecordWithContactIdentifier:(unsigned int)identifier changeType:
{
  v37 = *MEMORY[0x277D85DE8];
  v31 = a2;
  if (self)
  {
    if (identifier == 3)
    {
      identifierCopy = 3;
      v5 = 0;
      v27 = 0;
    }

    else
    {
      v6 = *(self + 8);
      v7 = *(self + 16);
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

      identifierCopy = identifier;
      v27 = v8;
    }

    v25 = [PPInternalContactNameRecord alloc];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    givenName = [v5 givenName];
    phoneticGivenName = [v5 phoneticGivenName];
    middleName = [v5 middleName];
    phoneticMiddleName = [v5 phoneticMiddleName];
    familyName = [v5 familyName];
    phoneticFamilyName = [v5 phoneticFamilyName];
    organizationName = [v5 organizationName];
    jobTitle = [v5 jobTitle];
    nickname = [v5 nickname];
    v13 = PPRelatedNamesForContact(v5);
    v14 = PPStreetNamesForContact(v5);
    v15 = PPCityNamesForContact(v5);
    v29 = [(PPInternalContactNameRecord *)v25 initWithIdentifier:uUIDString score:1 source:v31 sourceIdentifier:identifierCopy changeType:givenName firstName:phoneticGivenName phoneticFirstName:0.0 middleName:middleName phoneticMiddleName:phoneticMiddleName lastName:familyName phoneticLastName:phoneticFamilyName organizationName:organizationName jobTitle:jobTitle nickname:nickname relatedNames:v13 streetNames:v14 cityNames:v15];

    v16 = uUID;
    v9 = v27;
LABEL_7:

    goto LABEL_8;
  }

  v29 = 0;
LABEL_8:

  v17 = *MEMORY[0x277D85DE8];

  return v29;
}

- (void)visitUpdateContactEvent:(id)event
{
  if (!self->_truncated)
  {
    contact = [event contact];
    identifier = [contact identifier];
    v8 = [(PPContactNameRecordChangeHistoryAccumulator *)self _nameRecordWithContactIdentifier:identifier changeType:2u];

    v7 = v8;
    if (v8)
    {
      [(NSMutableArray *)self->_records addObject:v8];
      v7 = v8;
    }
  }
}

- (void)visitAddContactEvent:(id)event
{
  if (!self->_truncated)
  {
    contact = [event contact];
    identifier = [contact identifier];
    v8 = [(PPContactNameRecordChangeHistoryAccumulator *)self _nameRecordWithContactIdentifier:identifier changeType:1u];

    v7 = v8;
    if (v8)
    {
      [(NSMutableArray *)self->_records addObject:v8];
      v7 = v8;
    }
  }
}

@end