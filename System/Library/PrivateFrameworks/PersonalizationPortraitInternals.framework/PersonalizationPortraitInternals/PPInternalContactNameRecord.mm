@interface PPInternalContactNameRecord
- (PPInternalContactNameRecord)initWithIdentifier:(id)identifier score:(double)score source:(unsigned __int8)source sourceIdentifier:(id)sourceIdentifier changeType:(unsigned __int8)type firstName:(id)name phoneticFirstName:(id)firstName middleName:(id)self0 phoneticMiddleName:(id)self1 lastName:(id)self2 phoneticLastName:(id)self3 organizationName:(id)self4 jobTitle:(id)self5 nickname:(id)self6 relatedNames:(id)self7 streetNames:(id)self8 cityNames:(id)self9;
- (PPInternalContactNameRecord)initWithPBContactNameRecord:(id)record;
- (id)clientCopy;
- (id)copyWithZone:(_NSZone *)zone;
- (id)localizedFullName;
- (id)relatedNames;
@end

@implementation PPInternalContactNameRecord

- (id)copyWithZone:(_NSZone *)zone
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
    firstName = [(PPPBContactNameRecord *)self->_pbRecord firstName];
    middleName = [(PPPBContactNameRecord *)self->_pbRecord middleName];
    lastName = [(PPPBContactNameRecord *)self->_pbRecord lastName];
    nickname = [(PPPBContactNameRecord *)self->_pbRecord nickname];
    if (firstName)
    {
      [v4 setGivenName:firstName];
    }

    if (middleName)
    {
      [v4 setMiddleName:middleName];
    }

    if (lastName)
    {
      [v4 setFamilyName:lastName];
    }

    if (nickname)
    {
      [v4 setNickname:nickname];
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
  relatedNames = [(PPPBContactNameRecord *)self->_pbRecord relatedNames];
  v5 = [v3 initWithCapacity:{objc_msgSend(relatedNames, "count")}];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  relatedNames2 = [(PPPBContactNameRecord *)self->_pbRecord relatedNames];
  v7 = [relatedNames2 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(relatedNames2);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 key];
        if (v12)
        {
          v13 = v12;
          value = [v11 value];

          if (value)
          {
            value2 = [v11 value];
            v16 = [v11 key];
            [v5 setObject:value2 forKeyedSubscript:v16];
          }
        }
      }

      v8 = [relatedNames2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)clientCopy
{
  v21 = objc_alloc(MEMORY[0x277D3A360]);
  identifier = [(PPInternalContactNameRecord *)self identifier];
  [(PPInternalContactNameRecord *)self score];
  v4 = v3;
  source = [(PPInternalContactNameRecord *)self source];
  sourceIdentifier = [(PPInternalContactNameRecord *)self sourceIdentifier];
  changeType = [(PPInternalContactNameRecord *)self changeType];
  firstName = [(PPInternalContactNameRecord *)self firstName];
  phoneticFirstName = [(PPInternalContactNameRecord *)self phoneticFirstName];
  middleName = [(PPInternalContactNameRecord *)self middleName];
  phoneticMiddleName = [(PPInternalContactNameRecord *)self phoneticMiddleName];
  lastName = [(PPInternalContactNameRecord *)self lastName];
  phoneticLastName = [(PPInternalContactNameRecord *)self phoneticLastName];
  organizationName = [(PPInternalContactNameRecord *)self organizationName];
  jobTitle = [(PPInternalContactNameRecord *)self jobTitle];
  nickname = [(PPInternalContactNameRecord *)self nickname];
  relatedNames = [(PPInternalContactNameRecord *)self relatedNames];
  streetNames = [(PPInternalContactNameRecord *)self streetNames];
  cityNames = [(PPInternalContactNameRecord *)self cityNames];
  v22 = [v21 initWithIdentifier:identifier score:source source:sourceIdentifier sourceIdentifier:changeType changeType:firstName firstName:phoneticFirstName phoneticFirstName:v4 middleName:middleName phoneticMiddleName:phoneticMiddleName lastName:lastName phoneticLastName:phoneticLastName organizationName:organizationName jobTitle:jobTitle nickname:nickname relatedNames:relatedNames streetNames:streetNames cityNames:cityNames];

  return v22;
}

- (PPInternalContactNameRecord)initWithPBContactNameRecord:(id)record
{
  recordCopy = record;
  v9.receiver = self;
  v9.super_class = PPInternalContactNameRecord;
  init_ = [(PPContactNameRecord *)&v9 init_];
  v7 = init_;
  if (init_)
  {
    objc_storeStrong(init_ + 1, record);
  }

  return v7;
}

- (PPInternalContactNameRecord)initWithIdentifier:(id)identifier score:(double)score source:(unsigned __int8)source sourceIdentifier:(id)sourceIdentifier changeType:(unsigned __int8)type firstName:(id)name phoneticFirstName:(id)firstName middleName:(id)self0 phoneticMiddleName:(id)self1 lastName:(id)self2 phoneticLastName:(id)self3 organizationName:(id)self4 jobTitle:(id)self5 nickname:(id)self6 relatedNames:(id)self7 streetNames:(id)self8 cityNames:(id)self9
{
  typeCopy = type;
  sourceCopy = source;
  v71 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  sourceIdentifierCopy = sourceIdentifier;
  nameCopy = name;
  firstNameCopy = firstName;
  middleNameCopy = middleName;
  phoneticMiddleNameCopy = phoneticMiddleName;
  lastNameCopy = lastName;
  phoneticLastNameCopy = phoneticLastName;
  v28 = identifierCopy;
  organizationNameCopy = organizationName;
  titleCopy = title;
  nicknameCopy = nickname;
  namesCopy = names;
  streetNamesCopy = streetNames;
  cityNamesCopy = cityNames;
  v69.receiver = self;
  v69.super_class = PPInternalContactNameRecord;
  init_ = [(PPContactNameRecord *)&v69 init_];
  if (init_)
  {
    v34 = objc_opt_new();
    v59 = phoneticMiddleNameCopy;
    pbRecord = init_->_pbRecord;
    init_->_pbRecord = v34;

    [(PPPBContactNameRecord *)init_->_pbRecord setIdentifier:v28];
    [(PPPBContactNameRecord *)init_->_pbRecord setScore:score];
    [(PPPBContactNameRecord *)init_->_pbRecord setSource:sourceCopy];
    v55 = sourceIdentifierCopy;
    [(PPPBContactNameRecord *)init_->_pbRecord setSourceIdentifier:sourceIdentifierCopy];
    [(PPPBContactNameRecord *)init_->_pbRecord setChangeType:typeCopy];
    [(PPPBContactNameRecord *)init_->_pbRecord setFirstName:nameCopy];
    v57 = firstNameCopy;
    [(PPPBContactNameRecord *)init_->_pbRecord setPhoneticFirstName:firstNameCopy];
    [(PPPBContactNameRecord *)init_->_pbRecord setMiddleName:middleNameCopy];
    [(PPPBContactNameRecord *)init_->_pbRecord setPhoneticMiddleName:phoneticMiddleNameCopy];
    [(PPPBContactNameRecord *)init_->_pbRecord setLastName:lastNameCopy];
    [(PPPBContactNameRecord *)init_->_pbRecord setPhoneticLastName:phoneticLastNameCopy];
    [(PPPBContactNameRecord *)init_->_pbRecord setOrganizationName:organizationNameCopy];
    v56 = titleCopy;
    [(PPPBContactNameRecord *)init_->_pbRecord setJobTitle:titleCopy];
    [(PPPBContactNameRecord *)init_->_pbRecord setNickname:nicknameCopy];
    v52 = namesCopy;
    v54 = nicknameCopy;
    v36 = sourceIdentifierCopy;
    if ([namesCopy count])
    {
      v50 = v28;
      v37 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(namesCopy, "count")}];
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v38 = namesCopy;
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

      [(PPPBContactNameRecord *)init_->_pbRecord setRelatedNames:v37];
      v28 = v50;
      v36 = v55;
    }

    sourceIdentifierCopy = v36;
    if ([streetNamesCopy count])
    {
      v46 = [streetNamesCopy mutableCopy];
      [(PPPBContactNameRecord *)init_->_pbRecord setStreetNames:v46];
    }

    else
    {
      [(PPPBContactNameRecord *)init_->_pbRecord setStreetNames:0];
    }

    phoneticMiddleNameCopy = v59;
    if ([cityNamesCopy count])
    {
      v47 = [cityNamesCopy mutableCopy];
      [(PPPBContactNameRecord *)init_->_pbRecord setCityNames:v47];
    }

    else
    {
      [(PPPBContactNameRecord *)init_->_pbRecord setCityNames:0];
    }

    firstNameCopy = v57;
    titleCopy = v56;
    namesCopy = v52;
    nicknameCopy = v54;
  }

  v48 = *MEMORY[0x277D85DE8];
  return init_;
}

@end