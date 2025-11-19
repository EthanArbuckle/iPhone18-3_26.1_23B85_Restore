@interface ABSPBContact
+ (id)toPBContact:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)toContact;
- (unint64_t)hash;
- (void)addAddresses:(id)a3;
- (void)addEmails:(id)a3;
- (void)addPhoneNumbers:(id)a3;
- (void)addUrls:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ABSPBContact

- (void)addPhoneNumbers:(id)a3
{
  v4 = a3;
  phoneNumbers = self->_phoneNumbers;
  v8 = v4;
  if (!phoneNumbers)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_phoneNumbers;
    self->_phoneNumbers = v6;

    v4 = v8;
    phoneNumbers = self->_phoneNumbers;
  }

  [(NSMutableArray *)phoneNumbers addObject:v4];
}

- (void)addUrls:(id)a3
{
  v4 = a3;
  urls = self->_urls;
  v8 = v4;
  if (!urls)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_urls;
    self->_urls = v6;

    v4 = v8;
    urls = self->_urls;
  }

  [(NSMutableArray *)urls addObject:v4];
}

- (void)addEmails:(id)a3
{
  v4 = a3;
  emails = self->_emails;
  v8 = v4;
  if (!emails)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_emails;
    self->_emails = v6;

    v4 = v8;
    emails = self->_emails;
  }

  [(NSMutableArray *)emails addObject:v4];
}

- (void)addAddresses:(id)a3
{
  v4 = a3;
  addresses = self->_addresses;
  v8 = v4;
  if (!addresses)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_addresses;
    self->_addresses = v6;

    v4 = v8;
    addresses = self->_addresses;
  }

  [(NSMutableArray *)addresses addObject:v4];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = ABSPBContact;
  v3 = [(ABSPBContact *)&v7 description];
  v4 = [(ABSPBContact *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  namePrefix = self->_namePrefix;
  if (namePrefix)
  {
    [v4 setObject:namePrefix forKey:@"namePrefix"];
  }

  givenName = self->_givenName;
  if (givenName)
  {
    [v4 setObject:givenName forKey:@"givenName"];
  }

  middleName = self->_middleName;
  if (middleName)
  {
    [v4 setObject:middleName forKey:@"middleName"];
  }

  familyName = self->_familyName;
  if (familyName)
  {
    [v4 setObject:familyName forKey:@"familyName"];
  }

  previousFamilyName = self->_previousFamilyName;
  if (previousFamilyName)
  {
    [v4 setObject:previousFamilyName forKey:@"previousFamilyName"];
  }

  nameSuffix = self->_nameSuffix;
  if (nameSuffix)
  {
    [v4 setObject:nameSuffix forKey:@"nameSuffix"];
  }

  nickname = self->_nickname;
  if (nickname)
  {
    [v4 setObject:nickname forKey:@"nickname"];
  }

  organizationName = self->_organizationName;
  if (organizationName)
  {
    [v4 setObject:organizationName forKey:@"organizationName"];
  }

  departmentName = self->_departmentName;
  if (departmentName)
  {
    [v4 setObject:departmentName forKey:@"departmentName"];
  }

  jobTitle = self->_jobTitle;
  if (jobTitle)
  {
    [v4 setObject:jobTitle forKey:@"jobTitle"];
  }

  note = self->_note;
  if (note)
  {
    [v4 setObject:note forKey:@"note"];
  }

  birthday = self->_birthday;
  if (birthday)
  {
    v18 = [(ABSPBDate *)birthday dictionaryRepresentation];
    [v4 setObject:v18 forKey:@"birthday"];
  }

  nonGregorianBirthday = self->_nonGregorianBirthday;
  if (nonGregorianBirthday)
  {
    v20 = [(ABSPBDate *)nonGregorianBirthday dictionaryRepresentation];
    [v4 setObject:v20 forKey:@"nonGregorianBirthday"];
  }

  phoneticOrganizationName = self->_phoneticOrganizationName;
  if (phoneticOrganizationName)
  {
    [v4 setObject:phoneticOrganizationName forKey:@"phoneticOrganizationName"];
  }

  phoneticFamilyName = self->_phoneticFamilyName;
  if (phoneticFamilyName)
  {
    [v4 setObject:phoneticFamilyName forKey:@"phoneticFamilyName"];
  }

  phoneticGivenName = self->_phoneticGivenName;
  if (phoneticGivenName)
  {
    [v4 setObject:phoneticGivenName forKey:@"phoneticGivenName"];
  }

  phoneticMiddleName = self->_phoneticMiddleName;
  if (phoneticMiddleName)
  {
    [v4 setObject:phoneticMiddleName forKey:@"phoneticMiddleName"];
  }

  pronunciationGivenName = self->_pronunciationGivenName;
  if (pronunciationGivenName)
  {
    [v4 setObject:pronunciationGivenName forKey:@"pronunciationGivenName"];
  }

  pronunciationFamilyName = self->_pronunciationFamilyName;
  if (pronunciationFamilyName)
  {
    [v4 setObject:pronunciationFamilyName forKey:@"pronunciationFamilyName"];
  }

  phonemeData = self->_phonemeData;
  if (phonemeData)
  {
    [v4 setObject:phonemeData forKey:@"phonemeData"];
  }

  callAlert = self->_callAlert;
  if (callAlert)
  {
    v29 = [(ABSPBAlert *)callAlert dictionaryRepresentation];
    [v4 setObject:v29 forKey:@"callAlert"];
  }

  textAlert = self->_textAlert;
  if (textAlert)
  {
    v31 = [(ABSPBAlert *)textAlert dictionaryRepresentation];
    [v4 setObject:v31 forKey:@"textAlert"];
  }

  if ([(NSMutableArray *)self->_phoneNumbers count])
  {
    v32 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_phoneNumbers, "count")}];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v33 = self->_phoneNumbers;
    v34 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v75 objects:v82 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v76;
      do
      {
        for (i = 0; i != v35; i = i + 1)
        {
          if (*v76 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = [*(*(&v75 + 1) + 8 * i) dictionaryRepresentation];
          [v32 addObject:v38];
        }

        v35 = [(NSMutableArray *)v33 countByEnumeratingWithState:&v75 objects:v82 count:16];
      }

      while (v35);
    }

    [v4 setObject:v32 forKey:@"phoneNumbers"];
  }

  if ([(NSMutableArray *)self->_urls count])
  {
    v39 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_urls, "count")}];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v40 = self->_urls;
    v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v71 objects:v81 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v72;
      do
      {
        for (j = 0; j != v42; j = j + 1)
        {
          if (*v72 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = [*(*(&v71 + 1) + 8 * j) dictionaryRepresentation];
          [v39 addObject:v45];
        }

        v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v71 objects:v81 count:16];
      }

      while (v42);
    }

    [v4 setObject:v39 forKey:@"urls"];
  }

  if ([(NSMutableArray *)self->_emails count])
  {
    v46 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_emails, "count")}];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v47 = self->_emails;
    v48 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v67 objects:v80 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v68;
      do
      {
        for (k = 0; k != v49; k = k + 1)
        {
          if (*v68 != v50)
          {
            objc_enumerationMutation(v47);
          }

          v52 = [*(*(&v67 + 1) + 8 * k) dictionaryRepresentation];
          [v46 addObject:v52];
        }

        v49 = [(NSMutableArray *)v47 countByEnumeratingWithState:&v67 objects:v80 count:16];
      }

      while (v49);
    }

    [v4 setObject:v46 forKey:@"emails"];
  }

  if ([(NSMutableArray *)self->_addresses count])
  {
    v53 = [[NSMutableArray alloc] initWithCapacity:{-[NSMutableArray count](self->_addresses, "count")}];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v54 = self->_addresses;
    v55 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v63 objects:v79 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v64;
      do
      {
        for (m = 0; m != v56; m = m + 1)
        {
          if (*v64 != v57)
          {
            objc_enumerationMutation(v54);
          }

          v59 = [*(*(&v63 + 1) + 8 * m) dictionaryRepresentation];
          [v53 addObject:v59];
        }

        v56 = [(NSMutableArray *)v54 countByEnumeratingWithState:&v63 objects:v79 count:16];
      }

      while (v56);
    }

    [v4 setObject:v53 forKey:@"addresses"];
  }

  preferredChannel = self->_preferredChannel;
  if (preferredChannel)
  {
    [v4 setObject:preferredChannel forKey:@"preferredChannel"];
  }

  v61 = v4;

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_namePrefix)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_givenName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_middleName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_familyName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_previousFamilyName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_nameSuffix)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_nickname)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_organizationName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_departmentName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_jobTitle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_note)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_birthday)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_nonGregorianBirthday)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_phoneticOrganizationName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_phoneticFamilyName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_phoneticGivenName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_phoneticMiddleName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_pronunciationGivenName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_pronunciationFamilyName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_phonemeData)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_callAlert)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_textAlert)
  {
    PBDataWriterWriteSubmessage();
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = self->_phoneNumbers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v42;
    do
    {
      v9 = 0;
      do
      {
        if (*v42 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v41 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v7);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = self->_urls;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v38;
    do
    {
      v15 = 0;
      do
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v37 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v13);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v17 = self->_emails;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v33 objects:v46 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v34;
    do
    {
      v21 = 0;
      do
      {
        if (*v34 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v33 + 1) + 8 * v21);
        PBDataWriterWriteSubmessage();
        v21 = v21 + 1;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v33 objects:v46 count:16];
    }

    while (v19);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v23 = self->_addresses;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v29 objects:v45 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v30;
    do
    {
      v27 = 0;
      do
      {
        if (*v30 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v29 + 1) + 8 * v27);
        PBDataWriterWriteSubmessage();
        v27 = v27 + 1;
      }

      while (v25 != v27);
      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v29 objects:v45 count:16];
    }

    while (v25);
  }

  if (self->_preferredChannel)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  v20 = a3;
  if (self->_identifier)
  {
    [v20 setIdentifier:?];
  }

  if (self->_namePrefix)
  {
    [v20 setNamePrefix:?];
  }

  if (self->_givenName)
  {
    [v20 setGivenName:?];
  }

  if (self->_middleName)
  {
    [v20 setMiddleName:?];
  }

  if (self->_familyName)
  {
    [v20 setFamilyName:?];
  }

  if (self->_previousFamilyName)
  {
    [v20 setPreviousFamilyName:?];
  }

  if (self->_nameSuffix)
  {
    [v20 setNameSuffix:?];
  }

  if (self->_nickname)
  {
    [v20 setNickname:?];
  }

  if (self->_organizationName)
  {
    [v20 setOrganizationName:?];
  }

  if (self->_departmentName)
  {
    [v20 setDepartmentName:?];
  }

  if (self->_jobTitle)
  {
    [v20 setJobTitle:?];
  }

  if (self->_note)
  {
    [v20 setNote:?];
  }

  if (self->_birthday)
  {
    [v20 setBirthday:?];
  }

  if (self->_nonGregorianBirthday)
  {
    [v20 setNonGregorianBirthday:?];
  }

  if (self->_phoneticOrganizationName)
  {
    [v20 setPhoneticOrganizationName:?];
  }

  if (self->_phoneticFamilyName)
  {
    [v20 setPhoneticFamilyName:?];
  }

  if (self->_phoneticGivenName)
  {
    [v20 setPhoneticGivenName:?];
  }

  if (self->_phoneticMiddleName)
  {
    [v20 setPhoneticMiddleName:?];
  }

  if (self->_pronunciationGivenName)
  {
    [v20 setPronunciationGivenName:?];
  }

  if (self->_pronunciationFamilyName)
  {
    [v20 setPronunciationFamilyName:?];
  }

  if (self->_phonemeData)
  {
    [v20 setPhonemeData:?];
  }

  if (self->_callAlert)
  {
    [v20 setCallAlert:?];
  }

  if (self->_textAlert)
  {
    [v20 setTextAlert:?];
  }

  if ([(ABSPBContact *)self phoneNumbersCount])
  {
    [v20 clearPhoneNumbers];
    v4 = [(ABSPBContact *)self phoneNumbersCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ABSPBContact *)self phoneNumbersAtIndex:i];
        [v20 addPhoneNumbers:v7];
      }
    }
  }

  if ([(ABSPBContact *)self urlsCount])
  {
    [v20 clearUrls];
    v8 = [(ABSPBContact *)self urlsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(ABSPBContact *)self urlsAtIndex:j];
        [v20 addUrls:v11];
      }
    }
  }

  if ([(ABSPBContact *)self emailsCount])
  {
    [v20 clearEmails];
    v12 = [(ABSPBContact *)self emailsCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(ABSPBContact *)self emailsAtIndex:k];
        [v20 addEmails:v15];
      }
    }
  }

  if ([(ABSPBContact *)self addressesCount])
  {
    [v20 clearAddresses];
    v16 = [(ABSPBContact *)self addressesCount];
    if (v16)
    {
      v17 = v16;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(ABSPBContact *)self addressesAtIndex:m];
        [v20 addAddresses:v19];
      }
    }
  }

  if (self->_preferredChannel)
  {
    [v20 setPreferredChannel:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = v5[8];
  v5[8] = v6;

  v8 = [(NSString *)self->_namePrefix copyWithZone:a3];
  v9 = v5[11];
  v5[11] = v8;

  v10 = [(NSString *)self->_givenName copyWithZone:a3];
  v11 = v5[7];
  v5[7] = v10;

  v12 = [(NSString *)self->_middleName copyWithZone:a3];
  v13 = v5[10];
  v5[10] = v12;

  v14 = [(NSString *)self->_familyName copyWithZone:a3];
  v15 = v5[6];
  v5[6] = v14;

  v16 = [(NSString *)self->_previousFamilyName copyWithZone:a3];
  v17 = v5[24];
  v5[24] = v16;

  v18 = [(NSString *)self->_nameSuffix copyWithZone:a3];
  v19 = v5[12];
  v5[12] = v18;

  v20 = [(NSString *)self->_nickname copyWithZone:a3];
  v21 = v5[13];
  v5[13] = v20;

  v22 = [(NSString *)self->_organizationName copyWithZone:a3];
  v23 = v5[16];
  v5[16] = v22;

  v24 = [(NSString *)self->_departmentName copyWithZone:a3];
  v25 = v5[4];
  v5[4] = v24;

  v26 = [(NSString *)self->_jobTitle copyWithZone:a3];
  v27 = v5[9];
  v5[9] = v26;

  v28 = [(NSString *)self->_note copyWithZone:a3];
  v29 = v5[15];
  v5[15] = v28;

  v30 = [(ABSPBDate *)self->_birthday copyWithZone:a3];
  v31 = v5[2];
  v5[2] = v30;

  v32 = [(ABSPBDate *)self->_nonGregorianBirthday copyWithZone:a3];
  v33 = v5[14];
  v5[14] = v32;

  v34 = [(NSString *)self->_phoneticOrganizationName copyWithZone:a3];
  v35 = v5[22];
  v5[22] = v34;

  v36 = [(NSString *)self->_phoneticFamilyName copyWithZone:a3];
  v37 = v5[19];
  v5[19] = v36;

  v38 = [(NSString *)self->_phoneticGivenName copyWithZone:a3];
  v39 = v5[20];
  v5[20] = v38;

  v40 = [(NSString *)self->_phoneticMiddleName copyWithZone:a3];
  v41 = v5[21];
  v5[21] = v40;

  v42 = [(NSString *)self->_pronunciationGivenName copyWithZone:a3];
  v43 = v5[26];
  v5[26] = v42;

  v44 = [(NSString *)self->_pronunciationFamilyName copyWithZone:a3];
  v45 = v5[25];
  v5[25] = v44;

  v46 = [(NSString *)self->_phonemeData copyWithZone:a3];
  v47 = v5[18];
  v5[18] = v46;

  v48 = [(ABSPBAlert *)self->_callAlert copyWithZone:a3];
  v49 = v5[3];
  v5[3] = v48;

  v50 = [(ABSPBAlert *)self->_textAlert copyWithZone:a3];
  v51 = v5[27];
  v5[27] = v50;

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v52 = self->_phoneNumbers;
  v53 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v91 objects:v98 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v92;
    do
    {
      v56 = 0;
      do
      {
        if (*v92 != v55)
        {
          objc_enumerationMutation(v52);
        }

        v57 = [*(*(&v91 + 1) + 8 * v56) copyWithZone:a3];
        [v5 addPhoneNumbers:v57];

        v56 = v56 + 1;
      }

      while (v54 != v56);
      v54 = [(NSMutableArray *)v52 countByEnumeratingWithState:&v91 objects:v98 count:16];
    }

    while (v54);
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v58 = self->_urls;
  v59 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v87 objects:v97 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v88;
    do
    {
      v62 = 0;
      do
      {
        if (*v88 != v61)
        {
          objc_enumerationMutation(v58);
        }

        v63 = [*(*(&v87 + 1) + 8 * v62) copyWithZone:a3];
        [v5 addUrls:v63];

        v62 = v62 + 1;
      }

      while (v60 != v62);
      v60 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v87 objects:v97 count:16];
    }

    while (v60);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v64 = self->_emails;
  v65 = [(NSMutableArray *)v64 countByEnumeratingWithState:&v83 objects:v96 count:16];
  if (v65)
  {
    v66 = v65;
    v67 = *v84;
    do
    {
      v68 = 0;
      do
      {
        if (*v84 != v67)
        {
          objc_enumerationMutation(v64);
        }

        v69 = [*(*(&v83 + 1) + 8 * v68) copyWithZone:a3];
        [v5 addEmails:v69];

        v68 = v68 + 1;
      }

      while (v66 != v68);
      v66 = [(NSMutableArray *)v64 countByEnumeratingWithState:&v83 objects:v96 count:16];
    }

    while (v66);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v70 = self->_addresses;
  v71 = [(NSMutableArray *)v70 countByEnumeratingWithState:&v79 objects:v95 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v80;
    do
    {
      v74 = 0;
      do
      {
        if (*v80 != v73)
        {
          objc_enumerationMutation(v70);
        }

        v75 = [*(*(&v79 + 1) + 8 * v74) copyWithZone:{a3, v79}];
        [v5 addAddresses:v75];

        v74 = v74 + 1;
      }

      while (v72 != v74);
      v72 = [(NSMutableArray *)v70 countByEnumeratingWithState:&v79 objects:v95 count:16];
    }

    while (v72);
  }

  v76 = [(NSString *)self->_preferredChannel copyWithZone:a3];
  v77 = v5[23];
  v5[23] = v76;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_58;
  }

  identifier = self->_identifier;
  if (identifier | v4[8])
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_58;
    }
  }

  namePrefix = self->_namePrefix;
  if (namePrefix | v4[11] && ![(NSString *)namePrefix isEqual:?])
  {
    goto LABEL_58;
  }

  givenName = self->_givenName;
  if (givenName | v4[7] && ![(NSString *)givenName isEqual:?])
  {
    goto LABEL_58;
  }

  middleName = self->_middleName;
  if (middleName | v4[10] && ![(NSString *)middleName isEqual:?])
  {
    goto LABEL_58;
  }

  familyName = self->_familyName;
  if (familyName | v4[6] && ![(NSString *)familyName isEqual:?])
  {
    goto LABEL_58;
  }

  previousFamilyName = self->_previousFamilyName;
  if (previousFamilyName | v4[24] && ![(NSString *)previousFamilyName isEqual:?])
  {
    goto LABEL_58;
  }

  nameSuffix = self->_nameSuffix;
  if (nameSuffix | v4[12] && ![(NSString *)nameSuffix isEqual:?])
  {
    goto LABEL_58;
  }

  nickname = self->_nickname;
  if (nickname | v4[13] && ![(NSString *)nickname isEqual:?])
  {
    goto LABEL_58;
  }

  organizationName = self->_organizationName;
  if (organizationName | v4[16] && ![(NSString *)organizationName isEqual:?])
  {
    goto LABEL_58;
  }

  departmentName = self->_departmentName;
  if (departmentName | v4[4] && ![(NSString *)departmentName isEqual:?])
  {
    goto LABEL_58;
  }

  jobTitle = self->_jobTitle;
  if (jobTitle | v4[9] && ![(NSString *)jobTitle isEqual:?])
  {
    goto LABEL_58;
  }

  note = self->_note;
  if (note | v4[15] && ![(NSString *)note isEqual:?])
  {
    goto LABEL_58;
  }

  birthday = self->_birthday;
  if (birthday | v4[2] && ![(ABSPBDate *)birthday isEqual:?])
  {
    goto LABEL_58;
  }

  nonGregorianBirthday = self->_nonGregorianBirthday;
  if (nonGregorianBirthday | v4[14] && ![(ABSPBDate *)nonGregorianBirthday isEqual:?])
  {
    goto LABEL_58;
  }

  phoneticOrganizationName = self->_phoneticOrganizationName;
  if (phoneticOrganizationName | v4[22] && ![(NSString *)phoneticOrganizationName isEqual:?])
  {
    goto LABEL_58;
  }

  phoneticFamilyName = self->_phoneticFamilyName;
  if (phoneticFamilyName | v4[19] && ![(NSString *)phoneticFamilyName isEqual:?])
  {
    goto LABEL_58;
  }

  phoneticGivenName = self->_phoneticGivenName;
  if (phoneticGivenName | v4[20] && ![(NSString *)phoneticGivenName isEqual:?])
  {
    goto LABEL_58;
  }

  phoneticMiddleName = self->_phoneticMiddleName;
  if (phoneticMiddleName | v4[21] && ![(NSString *)phoneticMiddleName isEqual:?])
  {
    goto LABEL_58;
  }

  pronunciationGivenName = self->_pronunciationGivenName;
  if (pronunciationGivenName | v4[26] && ![(NSString *)pronunciationGivenName isEqual:?])
  {
    goto LABEL_58;
  }

  pronunciationFamilyName = self->_pronunciationFamilyName;
  if (pronunciationFamilyName | v4[25] && ![(NSString *)pronunciationFamilyName isEqual:?])
  {
    goto LABEL_58;
  }

  if (((phonemeData = self->_phonemeData, !(phonemeData | v4[18])) || [(NSString *)phonemeData isEqual:?]) && ((callAlert = self->_callAlert, !(callAlert | v4[3])) || [(ABSPBAlert *)callAlert isEqual:?]) && ((textAlert = self->_textAlert, !(textAlert | v4[27])) || [(ABSPBAlert *)textAlert isEqual:?]) && ((phoneNumbers = self->_phoneNumbers, !(phoneNumbers | v4[17])) || [(NSMutableArray *)phoneNumbers isEqual:?]) && ((urls = self->_urls, !(urls | v4[28])) || [(NSMutableArray *)urls isEqual:?]) && ((emails = self->_emails, !(emails | v4[5])) || [(NSMutableArray *)emails isEqual:?]) && ((addresses = self->_addresses, !(addresses | v4[1])) || [(NSMutableArray *)addresses isEqual:?]))
  {
    preferredChannel = self->_preferredChannel;
    if (preferredChannel | v4[23])
    {
      v33 = [(NSString *)preferredChannel isEqual:?];
    }

    else
    {
      v33 = 1;
    }
  }

  else
  {
LABEL_58:
    v33 = 0;
  }

  return v33;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_namePrefix hash]^ v3;
  v5 = [(NSString *)self->_givenName hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_middleName hash];
  v7 = [(NSString *)self->_familyName hash];
  v8 = v7 ^ [(NSString *)self->_previousFamilyName hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_nameSuffix hash];
  v10 = [(NSString *)self->_nickname hash];
  v11 = v10 ^ [(NSString *)self->_organizationName hash];
  v12 = v11 ^ [(NSString *)self->_departmentName hash];
  v13 = v9 ^ v12 ^ [(NSString *)self->_jobTitle hash];
  v14 = [(NSString *)self->_note hash];
  v15 = v14 ^ [(ABSPBDate *)self->_birthday hash];
  v16 = v15 ^ [(ABSPBDate *)self->_nonGregorianBirthday hash];
  v17 = v16 ^ [(NSString *)self->_phoneticOrganizationName hash];
  v18 = v13 ^ v17 ^ [(NSString *)self->_phoneticFamilyName hash];
  v19 = [(NSString *)self->_phoneticGivenName hash];
  v20 = v19 ^ [(NSString *)self->_phoneticMiddleName hash];
  v21 = v20 ^ [(NSString *)self->_pronunciationGivenName hash];
  v22 = v21 ^ [(NSString *)self->_pronunciationFamilyName hash];
  v23 = v22 ^ [(NSString *)self->_phonemeData hash];
  v24 = v18 ^ v23 ^ [(ABSPBAlert *)self->_callAlert hash];
  v25 = [(ABSPBAlert *)self->_textAlert hash];
  v26 = v25 ^ [(NSMutableArray *)self->_phoneNumbers hash];
  v27 = v26 ^ [(NSMutableArray *)self->_urls hash];
  v28 = v27 ^ [(NSMutableArray *)self->_emails hash];
  v29 = v28 ^ [(NSMutableArray *)self->_addresses hash];
  return v24 ^ v29 ^ [(NSString *)self->_preferredChannel hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 8))
  {
    [(ABSPBContact *)self setIdentifier:?];
  }

  if (*(v4 + 11))
  {
    [(ABSPBContact *)self setNamePrefix:?];
  }

  if (*(v4 + 7))
  {
    [(ABSPBContact *)self setGivenName:?];
  }

  if (*(v4 + 10))
  {
    [(ABSPBContact *)self setMiddleName:?];
  }

  if (*(v4 + 6))
  {
    [(ABSPBContact *)self setFamilyName:?];
  }

  if (*(v4 + 24))
  {
    [(ABSPBContact *)self setPreviousFamilyName:?];
  }

  if (*(v4 + 12))
  {
    [(ABSPBContact *)self setNameSuffix:?];
  }

  if (*(v4 + 13))
  {
    [(ABSPBContact *)self setNickname:?];
  }

  if (*(v4 + 16))
  {
    [(ABSPBContact *)self setOrganizationName:?];
  }

  if (*(v4 + 4))
  {
    [(ABSPBContact *)self setDepartmentName:?];
  }

  if (*(v4 + 9))
  {
    [(ABSPBContact *)self setJobTitle:?];
  }

  if (*(v4 + 15))
  {
    [(ABSPBContact *)self setNote:?];
  }

  birthday = self->_birthday;
  v6 = *(v4 + 2);
  if (birthday)
  {
    if (v6)
    {
      [(ABSPBDate *)birthday mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(ABSPBContact *)self setBirthday:?];
  }

  nonGregorianBirthday = self->_nonGregorianBirthday;
  v8 = *(v4 + 14);
  if (nonGregorianBirthday)
  {
    if (v8)
    {
      [(ABSPBDate *)nonGregorianBirthday mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(ABSPBContact *)self setNonGregorianBirthday:?];
  }

  if (*(v4 + 22))
  {
    [(ABSPBContact *)self setPhoneticOrganizationName:?];
  }

  if (*(v4 + 19))
  {
    [(ABSPBContact *)self setPhoneticFamilyName:?];
  }

  if (*(v4 + 20))
  {
    [(ABSPBContact *)self setPhoneticGivenName:?];
  }

  if (*(v4 + 21))
  {
    [(ABSPBContact *)self setPhoneticMiddleName:?];
  }

  if (*(v4 + 26))
  {
    [(ABSPBContact *)self setPronunciationGivenName:?];
  }

  if (*(v4 + 25))
  {
    [(ABSPBContact *)self setPronunciationFamilyName:?];
  }

  if (*(v4 + 18))
  {
    [(ABSPBContact *)self setPhonemeData:?];
  }

  callAlert = self->_callAlert;
  v10 = *(v4 + 3);
  if (callAlert)
  {
    if (v10)
    {
      [(ABSPBAlert *)callAlert mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(ABSPBContact *)self setCallAlert:?];
  }

  textAlert = self->_textAlert;
  v12 = *(v4 + 27);
  if (textAlert)
  {
    if (v12)
    {
      [(ABSPBAlert *)textAlert mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(ABSPBContact *)self setTextAlert:?];
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v13 = *(v4 + 17);
  v14 = [v13 countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v46;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v46 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(ABSPBContact *)self addPhoneNumbers:*(*(&v45 + 1) + 8 * i)];
      }

      v15 = [v13 countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v15);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v18 = *(v4 + 28);
  v19 = [v18 countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v42;
    do
    {
      for (j = 0; j != v20; j = j + 1)
      {
        if (*v42 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [(ABSPBContact *)self addUrls:*(*(&v41 + 1) + 8 * j)];
      }

      v20 = [v18 countByEnumeratingWithState:&v41 objects:v51 count:16];
    }

    while (v20);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v23 = *(v4 + 5);
  v24 = [v23 countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v38;
    do
    {
      for (k = 0; k != v25; k = k + 1)
      {
        if (*v38 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [(ABSPBContact *)self addEmails:*(*(&v37 + 1) + 8 * k)];
      }

      v25 = [v23 countByEnumeratingWithState:&v37 objects:v50 count:16];
    }

    while (v25);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v28 = *(v4 + 1);
  v29 = [v28 countByEnumeratingWithState:&v33 objects:v49 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v34;
    do
    {
      for (m = 0; m != v30; m = m + 1)
      {
        if (*v34 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [(ABSPBContact *)self addAddresses:*(*(&v33 + 1) + 8 * m), v33];
      }

      v30 = [v28 countByEnumeratingWithState:&v33 objects:v49 count:16];
    }

    while (v30);
  }

  if (*(v4 + 23))
  {
    [(ABSPBContact *)self setPreferredChannel:?];
  }
}

- (id)toContact
{
  v3 = [CNMutableContact alloc];
  v4 = [(ABSPBContact *)self identifier];
  v5 = [v3 initWithIdentifier:v4];

  v6 = [(ABSPBContact *)self namePrefix];

  if (v6)
  {
    v7 = [(ABSPBContact *)self namePrefix];
    [v5 setNamePrefix:v7];
  }

  v8 = [(ABSPBContact *)self givenName];

  if (v8)
  {
    v9 = [(ABSPBContact *)self givenName];
    [v5 setGivenName:v9];
  }

  v10 = [(ABSPBContact *)self middleName];

  if (v10)
  {
    v11 = [(ABSPBContact *)self middleName];
    [v5 setMiddleName:v11];
  }

  v12 = [(ABSPBContact *)self familyName];

  if (v12)
  {
    v13 = [(ABSPBContact *)self familyName];
    [v5 setFamilyName:v13];
  }

  v14 = [(ABSPBContact *)self previousFamilyName];

  if (v14)
  {
    v15 = [(ABSPBContact *)self previousFamilyName];
    [v5 setPreviousFamilyName:v15];
  }

  v16 = [(ABSPBContact *)self nameSuffix];

  if (v16)
  {
    v17 = [(ABSPBContact *)self nameSuffix];
    [v5 setNameSuffix:v17];
  }

  v18 = [(ABSPBContact *)self nickname];

  if (v18)
  {
    v19 = [(ABSPBContact *)self nickname];
    [v5 setNickname:v19];
  }

  v20 = [(ABSPBContact *)self organizationName];

  if (v20)
  {
    v21 = [(ABSPBContact *)self organizationName];
    [v5 setOrganizationName:v21];
  }

  v22 = [(ABSPBContact *)self departmentName];

  if (v22)
  {
    v23 = [(ABSPBContact *)self departmentName];
    [v5 setDepartmentName:v23];
  }

  v24 = [(ABSPBContact *)self jobTitle];

  if (v24)
  {
    v25 = [(ABSPBContact *)self jobTitle];
    [v5 setJobTitle:v25];
  }

  v26 = [(ABSPBContact *)self note];

  if (v26)
  {
    v27 = [(ABSPBContact *)self note];
    [v5 setNote:v27];
  }

  if ([(ABSPBContact *)self hasBirthday])
  {
    v28 = objc_alloc_init(NSDateComponents);
    v29 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    [v28 setCalendar:v29];

    v30 = [(ABSPBContact *)self birthday];
    if ([v30 hasYear])
    {
      v31 = [(ABSPBContact *)self birthday];
      v32 = [v31 year];

      if (v32 == -1)
      {
        goto LABEL_28;
      }

      v30 = [(ABSPBContact *)self birthday];
      [v28 setYear:{objc_msgSend(v30, "year")}];
    }

LABEL_28:
    v33 = [(ABSPBContact *)self birthday];
    if ([v33 hasMonth])
    {
      v34 = [(ABSPBContact *)self birthday];
      v35 = [v34 month];

      if (v35 == -1)
      {
        goto LABEL_32;
      }

      v33 = [(ABSPBContact *)self birthday];
      [v28 setMonth:{objc_msgSend(v33, "month")}];
    }

LABEL_32:
    v36 = [(ABSPBContact *)self birthday];
    if ([v36 hasDay])
    {
      v37 = [(ABSPBContact *)self birthday];
      v38 = [v37 day];

      if (v38 == -1)
      {
LABEL_36:
        [v5 setBirthday:v28];

        goto LABEL_37;
      }

      v36 = [(ABSPBContact *)self birthday];
      [v28 setDay:{objc_msgSend(v36, "day")}];
    }

    goto LABEL_36;
  }

LABEL_37:
  if (![(ABSPBContact *)self hasNonGregorianBirthday])
  {
    goto LABEL_55;
  }

  v39 = objc_alloc_init(NSDateComponents);
  v40 = [(ABSPBContact *)self nonGregorianBirthday];
  v41 = sub_10000697C([v40 calendar]);

  v42 = [NSCalendar calendarWithIdentifier:v41];
  [v39 setCalendar:v42];

  v43 = [(ABSPBContact *)self nonGregorianBirthday];
  if ([v43 hasEra])
  {
    v44 = [(ABSPBContact *)self nonGregorianBirthday];
    v45 = [v44 era];

    if (v45 == -1)
    {
      goto LABEL_42;
    }

    v43 = [(ABSPBContact *)self nonGregorianBirthday];
    [v39 setEra:{objc_msgSend(v43, "era")}];
  }

LABEL_42:
  v46 = [(ABSPBContact *)self nonGregorianBirthday];
  if ([v46 hasYear])
  {
    v47 = [(ABSPBContact *)self nonGregorianBirthday];
    v48 = [v47 year];

    if (v48 == -1)
    {
      goto LABEL_46;
    }

    v46 = [(ABSPBContact *)self nonGregorianBirthday];
    [v39 setYear:{objc_msgSend(v46, "year")}];
  }

LABEL_46:
  v49 = [(ABSPBContact *)self nonGregorianBirthday];
  if ([v49 hasMonth])
  {
    v50 = [(ABSPBContact *)self nonGregorianBirthday];
    v51 = [v50 month];

    if (v51 == -1)
    {
      goto LABEL_50;
    }

    v49 = [(ABSPBContact *)self nonGregorianBirthday];
    [v39 setMonth:{objc_msgSend(v49, "month")}];
  }

LABEL_50:
  v52 = [(ABSPBContact *)self nonGregorianBirthday];
  if (![v52 hasDay])
  {
LABEL_53:

    goto LABEL_54;
  }

  v53 = [(ABSPBContact *)self nonGregorianBirthday];
  v54 = [v53 day];

  if (v54 != -1)
  {
    v52 = [(ABSPBContact *)self nonGregorianBirthday];
    [v39 setDay:{objc_msgSend(v52, "day")}];
    goto LABEL_53;
  }

LABEL_54:
  v55 = [(ABSPBContact *)self nonGregorianBirthday];
  [v39 setLeapMonth:{objc_msgSend(v55, "isLeapMonth")}];

  [v5 setNonGregorianBirthday:v39];
LABEL_55:
  v56 = [(ABSPBContact *)self phoneticOrganizationName];

  if (v56)
  {
    v57 = [(ABSPBContact *)self phoneticOrganizationName];
    [v5 setPhoneticOrganizationName:v57];
  }

  v58 = [(ABSPBContact *)self phoneticFamilyName];

  if (v58)
  {
    v59 = [(ABSPBContact *)self phoneticFamilyName];
    [v5 setPhoneticFamilyName:v59];
  }

  v60 = [(ABSPBContact *)self phoneticGivenName];

  if (v60)
  {
    v61 = [(ABSPBContact *)self phoneticGivenName];
    [v5 setPhoneticGivenName:v61];
  }

  v62 = [(ABSPBContact *)self phoneticMiddleName];

  if (v62)
  {
    v63 = [(ABSPBContact *)self phoneticMiddleName];
    [v5 setPhoneticMiddleName:v63];
  }

  v64 = [(ABSPBContact *)self pronunciationGivenName];

  if (v64)
  {
    v65 = [(ABSPBContact *)self pronunciationGivenName];
    [v5 setPronunciationGivenName:v65];
  }

  v66 = [(ABSPBContact *)self pronunciationFamilyName];

  if (v66)
  {
    v67 = [(ABSPBContact *)self pronunciationFamilyName];
    [v5 setPronunciationFamilyName:v67];
  }

  v68 = [(ABSPBContact *)self phonemeData];

  if (v68)
  {
    v69 = [(ABSPBContact *)self phonemeData];
    [v5 setPhonemeData:v69];
  }

  v70 = [(ABSPBContact *)self preferredChannel];

  if (v70)
  {
    v71 = [(ABSPBContact *)self preferredChannel];
    [v5 setPreferredChannel:v71];
  }

  if ([(ABSPBContact *)self hasCallAlert])
  {
    v72 = [CNActivityAlert alloc];
    v73 = [(ABSPBContact *)self callAlert];
    v74 = [v73 sound];
    v75 = [(ABSPBContact *)self callAlert];
    v76 = [v75 vibration];
    v77 = [(ABSPBContact *)self callAlert];
    v78 = [v72 initWithSound:v74 vibration:v76 ignoreMute:{objc_msgSend(v77, "ignoreMute")}];

    [v5 setCallAlert:v78];
  }

  if ([(ABSPBContact *)self hasTextAlert])
  {
    v79 = [CNActivityAlert alloc];
    v80 = [(ABSPBContact *)self textAlert];
    v81 = [v80 sound];
    v82 = [(ABSPBContact *)self textAlert];
    v83 = [v82 vibration];
    v84 = [(ABSPBContact *)self textAlert];
    v85 = [v79 initWithSound:v81 vibration:v83 ignoreMute:{objc_msgSend(v84, "ignoreMute")}];

    [v5 setTextAlert:v85];
  }

  v86 = [(ABSPBContact *)self phoneNumbers];
  v87 = [v86 count];

  v158 = v5;
  v160 = self;
  if (v87)
  {
    v88 = [NSMutableArray alloc];
    v89 = [(ABSPBContact *)self phoneNumbers];
    v90 = [v88 initWithCapacity:{objc_msgSend(v89, "count")}];

    v175 = 0u;
    v176 = 0u;
    v173 = 0u;
    v174 = 0u;
    v91 = [(ABSPBContact *)self phoneNumbers];
    v92 = [v91 countByEnumeratingWithState:&v173 objects:v180 count:16];
    if (v92)
    {
      v93 = v92;
      v94 = *v174;
      do
      {
        for (i = 0; i != v93; i = i + 1)
        {
          if (*v174 != v94)
          {
            objc_enumerationMutation(v91);
          }

          v96 = *(*(&v173 + 1) + 8 * i);
          v97 = [CNPhoneNumber alloc];
          v98 = [v96 value];
          v99 = [v97 initWithStringValue:v98];

          v100 = [CNLabeledValue alloc];
          v101 = [v96 label];
          v102 = [v100 initWithLabel:v101 value:v99];

          [v90 addObject:v102];
        }

        v93 = [v91 countByEnumeratingWithState:&v173 objects:v180 count:16];
      }

      while (v93);
    }

    v5 = v158;
    [v158 setPhoneNumbers:v90];
  }

  v103 = [(ABSPBContact *)self addresses];
  v104 = [v103 count];

  if (v104)
  {
    v105 = [NSMutableArray alloc];
    v106 = [(ABSPBContact *)self addresses];
    v107 = [v105 initWithCapacity:{objc_msgSend(v106, "count")}];

    v171 = 0u;
    v172 = 0u;
    v169 = 0u;
    v170 = 0u;
    v108 = [(ABSPBContact *)self addresses];
    v109 = [v108 countByEnumeratingWithState:&v169 objects:v179 count:16];
    if (v109)
    {
      v110 = v109;
      v111 = *v170;
      do
      {
        for (j = 0; j != v110; j = j + 1)
        {
          if (*v170 != v111)
          {
            objc_enumerationMutation(v108);
          }

          v113 = *(*(&v169 + 1) + 8 * j);
          v114 = objc_alloc_init(CNMutablePostalAddress);
          v115 = [v113 street];
          [v114 setStreet:v115];

          v116 = [v113 city];
          [v114 setCity:v116];

          v117 = [v113 state];
          [v114 setState:v117];

          v118 = [v113 postalCode];
          [v114 setPostalCode:v118];

          v119 = [v113 country];
          [v114 setCountry:v119];

          v120 = [v113 iSOCountryCode];
          [v114 setISOCountryCode:v120];

          v121 = [v113 subLocality];
          [v114 setSubLocality:v121];

          v122 = [v113 subAdministrativeArea];
          [v114 setSubAdministrativeArea:v122];

          v123 = [CNLabeledValue alloc];
          v124 = [v113 label];
          v125 = [v123 initWithLabel:v124 value:v114];

          [v107 addObject:v125];
        }

        v110 = [v108 countByEnumeratingWithState:&v169 objects:v179 count:16];
      }

      while (v110);
    }

    v5 = v159;
    [v159 setPostalAddresses:v107];

    self = v160;
  }

  v126 = [(ABSPBContact *)self urls];
  v127 = [v126 count];

  if (v127)
  {
    v128 = [NSMutableArray alloc];
    v129 = [(ABSPBContact *)self urls];
    v130 = [v128 initWithCapacity:{objc_msgSend(v129, "count")}];

    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    v131 = [(ABSPBContact *)self urls];
    v132 = [v131 countByEnumeratingWithState:&v165 objects:v178 count:16];
    if (v132)
    {
      v133 = v132;
      v134 = *v166;
      do
      {
        for (k = 0; k != v133; k = k + 1)
        {
          if (*v166 != v134)
          {
            objc_enumerationMutation(v131);
          }

          v136 = *(*(&v165 + 1) + 8 * k);
          v137 = [CNLabeledValue alloc];
          v138 = [v136 label];
          v139 = [v136 value];
          v140 = [v137 initWithLabel:v138 value:v139];

          [v130 addObject:v140];
        }

        v133 = [v131 countByEnumeratingWithState:&v165 objects:v178 count:16];
      }

      while (v133);
    }

    [v5 setUrlAddresses:v130];
    self = v160;
  }

  v141 = [(ABSPBContact *)self emails];
  v142 = [v141 count];

  if (v142)
  {
    v143 = [NSMutableArray alloc];
    v144 = [(ABSPBContact *)self emails];
    v145 = [v143 initWithCapacity:{objc_msgSend(v144, "count")}];

    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v146 = [(ABSPBContact *)self emails];
    v147 = [v146 countByEnumeratingWithState:&v161 objects:v177 count:16];
    if (v147)
    {
      v148 = v147;
      v149 = *v162;
      do
      {
        for (m = 0; m != v148; m = m + 1)
        {
          if (*v162 != v149)
          {
            objc_enumerationMutation(v146);
          }

          v151 = *(*(&v161 + 1) + 8 * m);
          v152 = [CNLabeledValue alloc];
          v153 = [v151 label];
          v154 = [v151 value];
          v155 = [v152 initWithLabel:v153 value:v154];

          [v145 addObject:v155];
        }

        v148 = [v146 countByEnumeratingWithState:&v161 objects:v177 count:16];
      }

      while (v148);
    }

    [v5 setEmailAddresses:v145];
  }

  v156 = v5;

  return v5;
}

+ (id)toPBContact:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(ABSPBContact);
  v5 = [v3 identifier];

  if (v5)
  {
    v6 = [v3 identifier];
    [(ABSPBContact *)v4 setIdentifier:v6];
  }

  v7 = [v3 namePrefix];

  if (v7)
  {
    v8 = [v3 namePrefix];
    [(ABSPBContact *)v4 setNamePrefix:v8];
  }

  v9 = [v3 givenName];

  if (v9)
  {
    v10 = [v3 givenName];
    [(ABSPBContact *)v4 setGivenName:v10];
  }

  v11 = [v3 middleName];

  if (v11)
  {
    v12 = [v3 middleName];
    [(ABSPBContact *)v4 setMiddleName:v12];
  }

  v13 = [v3 familyName];

  if (v13)
  {
    v14 = [v3 familyName];
    [(ABSPBContact *)v4 setFamilyName:v14];
  }

  v15 = [v3 previousFamilyName];

  if (v15)
  {
    v16 = [v3 previousFamilyName];
    [(ABSPBContact *)v4 setPreviousFamilyName:v16];
  }

  v17 = [v3 nameSuffix];

  if (v17)
  {
    v18 = [v3 nameSuffix];
    [(ABSPBContact *)v4 setNameSuffix:v18];
  }

  v19 = [v3 nickname];

  if (v19)
  {
    v20 = [v3 nickname];
    [(ABSPBContact *)v4 setNickname:v20];
  }

  v21 = [v3 organizationName];

  if (v21)
  {
    v22 = [v3 organizationName];
    [(ABSPBContact *)v4 setOrganizationName:v22];
  }

  v23 = [v3 departmentName];

  if (v23)
  {
    v24 = [v3 departmentName];
    [(ABSPBContact *)v4 setDepartmentName:v24];
  }

  v25 = [v3 jobTitle];

  if (v25)
  {
    v26 = [v3 jobTitle];
    [(ABSPBContact *)v4 setJobTitle:v26];
  }

  v27 = [v3 note];

  if (v27)
  {
    v28 = [v3 note];
    [(ABSPBContact *)v4 setNote:v28];
  }

  v29 = [v3 birthday];

  if (v29)
  {
    v30 = objc_alloc_init(ABSPBDate);
    [(ABSPBDate *)v30 setCalendar:1];
    v31 = [v3 birthday];
    -[ABSPBDate setYear:](v30, "setYear:", [v31 year]);

    v32 = [v3 birthday];
    -[ABSPBDate setMonth:](v30, "setMonth:", [v32 month]);

    v33 = [v3 birthday];
    -[ABSPBDate setDay:](v30, "setDay:", [v33 day]);

    [(ABSPBContact *)v4 setBirthday:v30];
  }

  v34 = [v3 nonGregorianBirthday];

  if (v34)
  {
    v35 = objc_alloc_init(ABSPBDate);
    v36 = [v3 nonGregorianBirthday];
    v37 = [v36 calendar];
    v38 = [v37 calendarIdentifier];
    [(ABSPBDate *)v35 setCalendar:sub_100016CEC(v38)];

    v39 = [v3 nonGregorianBirthday];
    -[ABSPBDate setEra:](v35, "setEra:", [v39 era]);

    v40 = [v3 nonGregorianBirthday];
    -[ABSPBDate setYear:](v35, "setYear:", [v40 year]);

    v41 = [v3 nonGregorianBirthday];
    -[ABSPBDate setMonth:](v35, "setMonth:", [v41 month]);

    v42 = [v3 nonGregorianBirthday];
    -[ABSPBDate setDay:](v35, "setDay:", [v42 day]);

    v43 = [v3 nonGregorianBirthday];
    -[ABSPBDate setIsLeapMonth:](v35, "setIsLeapMonth:", [v43 isLeapMonth]);

    [(ABSPBContact *)v4 setNonGregorianBirthday:v35];
  }

  v44 = [v3 phoneticOrganizationName];

  if (v44)
  {
    v45 = [v3 phoneticOrganizationName];
    [(ABSPBContact *)v4 setPhoneticOrganizationName:v45];
  }

  v46 = [v3 phoneticFamilyName];

  if (v46)
  {
    v47 = [v3 phoneticFamilyName];
    [(ABSPBContact *)v4 setPhoneticFamilyName:v47];
  }

  v48 = [v3 phoneticGivenName];

  if (v48)
  {
    v49 = [v3 phoneticGivenName];
    [(ABSPBContact *)v4 setPhoneticGivenName:v49];
  }

  v50 = [v3 phoneticMiddleName];

  if (v50)
  {
    v51 = [v3 phoneticMiddleName];
    [(ABSPBContact *)v4 setPhoneticMiddleName:v51];
  }

  v52 = [v3 pronunciationGivenName];

  if (v52)
  {
    v53 = [v3 pronunciationGivenName];
    [(ABSPBContact *)v4 setPronunciationGivenName:v53];
  }

  v54 = [v3 pronunciationFamilyName];

  if (v54)
  {
    v55 = [v3 pronunciationFamilyName];
    [(ABSPBContact *)v4 setPronunciationFamilyName:v55];
  }

  v56 = [v3 phonemeData];

  if (v56)
  {
    v57 = [v3 phonemeData];
    [(ABSPBContact *)v4 setPhonemeData:v57];
  }

  v58 = [v3 preferredChannel];

  if (v58)
  {
    v59 = [v3 preferredChannel];
    [(ABSPBContact *)v4 setPreferredChannel:v59];
  }

  v60 = [v3 callAlert];

  if (v60)
  {
    v61 = objc_alloc_init(ABSPBAlert);
    v62 = [v3 callAlert];
    v63 = [v62 sound];
    [(ABSPBAlert *)v61 setSound:v63];

    v64 = [v3 callAlert];
    v65 = [v64 vibration];
    [(ABSPBAlert *)v61 setVibration:v65];

    v66 = [v3 callAlert];
    -[ABSPBAlert setIgnoreMute:](v61, "setIgnoreMute:", [v66 ignoreMute]);

    [(ABSPBContact *)v4 setCallAlert:v61];
  }

  v67 = [v3 textAlert];

  if (v67)
  {
    v68 = objc_alloc_init(ABSPBAlert);
    v69 = [v3 textAlert];
    v70 = [v69 sound];
    [(ABSPBAlert *)v68 setSound:v70];

    v71 = [v3 textAlert];
    v72 = [v71 vibration];
    [(ABSPBAlert *)v68 setVibration:v72];

    v73 = [v3 textAlert];
    -[ABSPBAlert setIgnoreMute:](v68, "setIgnoreMute:", [v73 ignoreMute]);

    [(ABSPBContact *)v4 setTextAlert:v68];
  }

  v74 = [v3 phoneNumbers];

  v146 = v3;
  if (v74)
  {
    v75 = [NSMutableArray alloc];
    v76 = [v3 phoneNumbers];
    v77 = [v75 initWithCapacity:{objc_msgSend(v76, "count")}];

    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
    v78 = [v3 phoneNumbers];
    v79 = [v78 countByEnumeratingWithState:&v159 objects:v166 count:16];
    if (v79)
    {
      v80 = v79;
      v81 = *v160;
      do
      {
        for (i = 0; i != v80; i = i + 1)
        {
          if (*v160 != v81)
          {
            objc_enumerationMutation(v78);
          }

          v83 = *(*(&v159 + 1) + 8 * i);
          v84 = objc_alloc_init(ABSPBLabeledString);
          v85 = [v83 label];
          [(ABSPBLabeledString *)v84 setLabel:v85];

          v86 = [v83 value];
          v87 = [v86 stringValue];
          [(ABSPBLabeledString *)v84 setValue:v87];

          [v77 addObject:v84];
        }

        v80 = [v78 countByEnumeratingWithState:&v159 objects:v166 count:16];
      }

      while (v80);
    }

    [(ABSPBContact *)v4 setPhoneNumbers:v77];
  }

  v88 = [v3 postalAddresses];
  v89 = [v88 count];

  if (v89)
  {
    v145 = v4;
    v90 = [NSMutableArray alloc];
    v91 = [v3 postalAddresses];
    v92 = [v90 initWithCapacity:{objc_msgSend(v91, "count")}];

    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    v93 = [v3 postalAddresses];
    v94 = [v93 countByEnumeratingWithState:&v155 objects:v165 count:16];
    if (v94)
    {
      v95 = v94;
      v96 = *v156;
      do
      {
        for (j = 0; j != v95; j = j + 1)
        {
          if (*v156 != v96)
          {
            objc_enumerationMutation(v93);
          }

          v98 = *(*(&v155 + 1) + 8 * j);
          v99 = objc_alloc_init(ABSPBPostalAddress);
          v100 = [v98 value];
          v101 = [v100 street];
          [(ABSPBPostalAddress *)v99 setStreet:v101];

          v102 = [v98 value];
          v103 = [v102 city];
          [(ABSPBPostalAddress *)v99 setCity:v103];

          v104 = [v98 value];
          v105 = [v104 state];
          [(ABSPBPostalAddress *)v99 setState:v105];

          v106 = [v98 value];
          v107 = [v106 postalCode];
          [(ABSPBPostalAddress *)v99 setPostalCode:v107];

          v108 = [v98 value];
          v109 = [v108 country];
          [(ABSPBPostalAddress *)v99 setCountry:v109];

          v110 = [v98 value];
          v111 = [v110 ISOCountryCode];
          [(ABSPBPostalAddress *)v99 setISOCountryCode:v111];

          v112 = [v98 value];
          v113 = [v112 subLocality];
          [(ABSPBPostalAddress *)v99 setSubLocality:v113];

          v114 = [v98 value];
          v115 = [v114 subAdministrativeArea];
          [(ABSPBPostalAddress *)v99 setSubAdministrativeArea:v115];

          [v92 addObject:v99];
        }

        v95 = [v93 countByEnumeratingWithState:&v155 objects:v165 count:16];
      }

      while (v95);
    }

    v4 = v145;
    [(ABSPBContact *)v145 setAddresses:v92];

    v3 = v146;
  }

  v116 = [v3 urlAddresses];
  v117 = [v116 count];

  if (v117)
  {
    v118 = [NSMutableArray alloc];
    v119 = [v3 urlAddresses];
    v120 = [v118 initWithCapacity:{objc_msgSend(v119, "count")}];

    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v121 = [v3 urlAddresses];
    v122 = [v121 countByEnumeratingWithState:&v151 objects:v164 count:16];
    if (v122)
    {
      v123 = v122;
      v124 = *v152;
      do
      {
        for (k = 0; k != v123; k = k + 1)
        {
          if (*v152 != v124)
          {
            objc_enumerationMutation(v121);
          }

          v126 = *(*(&v151 + 1) + 8 * k);
          v127 = objc_alloc_init(ABSPBLabeledString);
          v128 = [v126 label];
          [(ABSPBLabeledString *)v127 setLabel:v128];

          v129 = [v126 value];
          [(ABSPBLabeledString *)v127 setValue:v129];

          [v120 addObject:v127];
        }

        v123 = [v121 countByEnumeratingWithState:&v151 objects:v164 count:16];
      }

      while (v123);
    }

    [(ABSPBContact *)v4 setUrls:v120];
    v3 = v146;
  }

  v130 = [v3 emailAddresses];

  if (v130)
  {
    v131 = [NSMutableArray alloc];
    v132 = [v3 emailAddresses];
    v133 = [v131 initWithCapacity:{objc_msgSend(v132, "count")}];

    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v134 = [v3 emailAddresses];
    v135 = [v134 countByEnumeratingWithState:&v147 objects:v163 count:16];
    if (v135)
    {
      v136 = v135;
      v137 = *v148;
      do
      {
        for (m = 0; m != v136; m = m + 1)
        {
          if (*v148 != v137)
          {
            objc_enumerationMutation(v134);
          }

          v139 = *(*(&v147 + 1) + 8 * m);
          v140 = objc_alloc_init(ABSPBLabeledString);
          v141 = [v139 label];
          [(ABSPBLabeledString *)v140 setLabel:v141];

          v142 = [v139 value];
          [(ABSPBLabeledString *)v140 setValue:v142];

          [v133 addObject:v140];
        }

        v136 = [v134 countByEnumeratingWithState:&v147 objects:v163 count:16];
      }

      while (v136);
    }

    [(ABSPBContact *)v4 setEmails:v133];
    v3 = v146;
  }

  v143 = v4;

  return v4;
}

@end