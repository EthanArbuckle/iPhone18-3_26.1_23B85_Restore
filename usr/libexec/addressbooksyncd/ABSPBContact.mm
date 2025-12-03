@interface ABSPBContact
+ (id)toPBContact:(id)contact;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)toContact;
- (unint64_t)hash;
- (void)addAddresses:(id)addresses;
- (void)addEmails:(id)emails;
- (void)addPhoneNumbers:(id)numbers;
- (void)addUrls:(id)urls;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ABSPBContact

- (void)addPhoneNumbers:(id)numbers
{
  numbersCopy = numbers;
  phoneNumbers = self->_phoneNumbers;
  v8 = numbersCopy;
  if (!phoneNumbers)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_phoneNumbers;
    self->_phoneNumbers = v6;

    numbersCopy = v8;
    phoneNumbers = self->_phoneNumbers;
  }

  [(NSMutableArray *)phoneNumbers addObject:numbersCopy];
}

- (void)addUrls:(id)urls
{
  urlsCopy = urls;
  urls = self->_urls;
  v8 = urlsCopy;
  if (!urls)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_urls;
    self->_urls = v6;

    urlsCopy = v8;
    urls = self->_urls;
  }

  [(NSMutableArray *)urls addObject:urlsCopy];
}

- (void)addEmails:(id)emails
{
  emailsCopy = emails;
  emails = self->_emails;
  v8 = emailsCopy;
  if (!emails)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_emails;
    self->_emails = v6;

    emailsCopy = v8;
    emails = self->_emails;
  }

  [(NSMutableArray *)emails addObject:emailsCopy];
}

- (void)addAddresses:(id)addresses
{
  addressesCopy = addresses;
  addresses = self->_addresses;
  v8 = addressesCopy;
  if (!addresses)
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = self->_addresses;
    self->_addresses = v6;

    addressesCopy = v8;
    addresses = self->_addresses;
  }

  [(NSMutableArray *)addresses addObject:addressesCopy];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = ABSPBContact;
  v3 = [(ABSPBContact *)&v7 description];
  dictionaryRepresentation = [(ABSPBContact *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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
    dictionaryRepresentation = [(ABSPBDate *)birthday dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"birthday"];
  }

  nonGregorianBirthday = self->_nonGregorianBirthday;
  if (nonGregorianBirthday)
  {
    dictionaryRepresentation2 = [(ABSPBDate *)nonGregorianBirthday dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"nonGregorianBirthday"];
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
    dictionaryRepresentation3 = [(ABSPBAlert *)callAlert dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"callAlert"];
  }

  textAlert = self->_textAlert;
  if (textAlert)
  {
    dictionaryRepresentation4 = [(ABSPBAlert *)textAlert dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation4 forKey:@"textAlert"];
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

          dictionaryRepresentation5 = [*(*(&v75 + 1) + 8 * i) dictionaryRepresentation];
          [v32 addObject:dictionaryRepresentation5];
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

          dictionaryRepresentation6 = [*(*(&v71 + 1) + 8 * j) dictionaryRepresentation];
          [v39 addObject:dictionaryRepresentation6];
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

          dictionaryRepresentation7 = [*(*(&v67 + 1) + 8 * k) dictionaryRepresentation];
          [v46 addObject:dictionaryRepresentation7];
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

          dictionaryRepresentation8 = [*(*(&v63 + 1) + 8 * m) dictionaryRepresentation];
          [v53 addObject:dictionaryRepresentation8];
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

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
  }

  if (self->_namePrefix)
  {
    [toCopy setNamePrefix:?];
  }

  if (self->_givenName)
  {
    [toCopy setGivenName:?];
  }

  if (self->_middleName)
  {
    [toCopy setMiddleName:?];
  }

  if (self->_familyName)
  {
    [toCopy setFamilyName:?];
  }

  if (self->_previousFamilyName)
  {
    [toCopy setPreviousFamilyName:?];
  }

  if (self->_nameSuffix)
  {
    [toCopy setNameSuffix:?];
  }

  if (self->_nickname)
  {
    [toCopy setNickname:?];
  }

  if (self->_organizationName)
  {
    [toCopy setOrganizationName:?];
  }

  if (self->_departmentName)
  {
    [toCopy setDepartmentName:?];
  }

  if (self->_jobTitle)
  {
    [toCopy setJobTitle:?];
  }

  if (self->_note)
  {
    [toCopy setNote:?];
  }

  if (self->_birthday)
  {
    [toCopy setBirthday:?];
  }

  if (self->_nonGregorianBirthday)
  {
    [toCopy setNonGregorianBirthday:?];
  }

  if (self->_phoneticOrganizationName)
  {
    [toCopy setPhoneticOrganizationName:?];
  }

  if (self->_phoneticFamilyName)
  {
    [toCopy setPhoneticFamilyName:?];
  }

  if (self->_phoneticGivenName)
  {
    [toCopy setPhoneticGivenName:?];
  }

  if (self->_phoneticMiddleName)
  {
    [toCopy setPhoneticMiddleName:?];
  }

  if (self->_pronunciationGivenName)
  {
    [toCopy setPronunciationGivenName:?];
  }

  if (self->_pronunciationFamilyName)
  {
    [toCopy setPronunciationFamilyName:?];
  }

  if (self->_phonemeData)
  {
    [toCopy setPhonemeData:?];
  }

  if (self->_callAlert)
  {
    [toCopy setCallAlert:?];
  }

  if (self->_textAlert)
  {
    [toCopy setTextAlert:?];
  }

  if ([(ABSPBContact *)self phoneNumbersCount])
  {
    [toCopy clearPhoneNumbers];
    phoneNumbersCount = [(ABSPBContact *)self phoneNumbersCount];
    if (phoneNumbersCount)
    {
      v5 = phoneNumbersCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ABSPBContact *)self phoneNumbersAtIndex:i];
        [toCopy addPhoneNumbers:v7];
      }
    }
  }

  if ([(ABSPBContact *)self urlsCount])
  {
    [toCopy clearUrls];
    urlsCount = [(ABSPBContact *)self urlsCount];
    if (urlsCount)
    {
      v9 = urlsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(ABSPBContact *)self urlsAtIndex:j];
        [toCopy addUrls:v11];
      }
    }
  }

  if ([(ABSPBContact *)self emailsCount])
  {
    [toCopy clearEmails];
    emailsCount = [(ABSPBContact *)self emailsCount];
    if (emailsCount)
    {
      v13 = emailsCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(ABSPBContact *)self emailsAtIndex:k];
        [toCopy addEmails:v15];
      }
    }
  }

  if ([(ABSPBContact *)self addressesCount])
  {
    [toCopy clearAddresses];
    addressesCount = [(ABSPBContact *)self addressesCount];
    if (addressesCount)
    {
      v17 = addressesCount;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(ABSPBContact *)self addressesAtIndex:m];
        [toCopy addAddresses:v19];
      }
    }
  }

  if (self->_preferredChannel)
  {
    [toCopy setPreferredChannel:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = v5[8];
  v5[8] = v6;

  v8 = [(NSString *)self->_namePrefix copyWithZone:zone];
  v9 = v5[11];
  v5[11] = v8;

  v10 = [(NSString *)self->_givenName copyWithZone:zone];
  v11 = v5[7];
  v5[7] = v10;

  v12 = [(NSString *)self->_middleName copyWithZone:zone];
  v13 = v5[10];
  v5[10] = v12;

  v14 = [(NSString *)self->_familyName copyWithZone:zone];
  v15 = v5[6];
  v5[6] = v14;

  v16 = [(NSString *)self->_previousFamilyName copyWithZone:zone];
  v17 = v5[24];
  v5[24] = v16;

  v18 = [(NSString *)self->_nameSuffix copyWithZone:zone];
  v19 = v5[12];
  v5[12] = v18;

  v20 = [(NSString *)self->_nickname copyWithZone:zone];
  v21 = v5[13];
  v5[13] = v20;

  v22 = [(NSString *)self->_organizationName copyWithZone:zone];
  v23 = v5[16];
  v5[16] = v22;

  v24 = [(NSString *)self->_departmentName copyWithZone:zone];
  v25 = v5[4];
  v5[4] = v24;

  v26 = [(NSString *)self->_jobTitle copyWithZone:zone];
  v27 = v5[9];
  v5[9] = v26;

  v28 = [(NSString *)self->_note copyWithZone:zone];
  v29 = v5[15];
  v5[15] = v28;

  v30 = [(ABSPBDate *)self->_birthday copyWithZone:zone];
  v31 = v5[2];
  v5[2] = v30;

  v32 = [(ABSPBDate *)self->_nonGregorianBirthday copyWithZone:zone];
  v33 = v5[14];
  v5[14] = v32;

  v34 = [(NSString *)self->_phoneticOrganizationName copyWithZone:zone];
  v35 = v5[22];
  v5[22] = v34;

  v36 = [(NSString *)self->_phoneticFamilyName copyWithZone:zone];
  v37 = v5[19];
  v5[19] = v36;

  v38 = [(NSString *)self->_phoneticGivenName copyWithZone:zone];
  v39 = v5[20];
  v5[20] = v38;

  v40 = [(NSString *)self->_phoneticMiddleName copyWithZone:zone];
  v41 = v5[21];
  v5[21] = v40;

  v42 = [(NSString *)self->_pronunciationGivenName copyWithZone:zone];
  v43 = v5[26];
  v5[26] = v42;

  v44 = [(NSString *)self->_pronunciationFamilyName copyWithZone:zone];
  v45 = v5[25];
  v5[25] = v44;

  v46 = [(NSString *)self->_phonemeData copyWithZone:zone];
  v47 = v5[18];
  v5[18] = v46;

  v48 = [(ABSPBAlert *)self->_callAlert copyWithZone:zone];
  v49 = v5[3];
  v5[3] = v48;

  v50 = [(ABSPBAlert *)self->_textAlert copyWithZone:zone];
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

        v57 = [*(*(&v91 + 1) + 8 * v56) copyWithZone:zone];
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

        v63 = [*(*(&v87 + 1) + 8 * v62) copyWithZone:zone];
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

        v69 = [*(*(&v83 + 1) + 8 * v68) copyWithZone:zone];
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

        v75 = [*(*(&v79 + 1) + 8 * v74) copyWithZone:{zone, v79}];
        [v5 addAddresses:v75];

        v74 = v74 + 1;
      }

      while (v72 != v74);
      v72 = [(NSMutableArray *)v70 countByEnumeratingWithState:&v79 objects:v95 count:16];
    }

    while (v72);
  }

  v76 = [(NSString *)self->_preferredChannel copyWithZone:zone];
  v77 = v5[23];
  v5[23] = v76;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_58;
  }

  identifier = self->_identifier;
  if (identifier | equalCopy[8])
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_58;
    }
  }

  namePrefix = self->_namePrefix;
  if (namePrefix | equalCopy[11] && ![(NSString *)namePrefix isEqual:?])
  {
    goto LABEL_58;
  }

  givenName = self->_givenName;
  if (givenName | equalCopy[7] && ![(NSString *)givenName isEqual:?])
  {
    goto LABEL_58;
  }

  middleName = self->_middleName;
  if (middleName | equalCopy[10] && ![(NSString *)middleName isEqual:?])
  {
    goto LABEL_58;
  }

  familyName = self->_familyName;
  if (familyName | equalCopy[6] && ![(NSString *)familyName isEqual:?])
  {
    goto LABEL_58;
  }

  previousFamilyName = self->_previousFamilyName;
  if (previousFamilyName | equalCopy[24] && ![(NSString *)previousFamilyName isEqual:?])
  {
    goto LABEL_58;
  }

  nameSuffix = self->_nameSuffix;
  if (nameSuffix | equalCopy[12] && ![(NSString *)nameSuffix isEqual:?])
  {
    goto LABEL_58;
  }

  nickname = self->_nickname;
  if (nickname | equalCopy[13] && ![(NSString *)nickname isEqual:?])
  {
    goto LABEL_58;
  }

  organizationName = self->_organizationName;
  if (organizationName | equalCopy[16] && ![(NSString *)organizationName isEqual:?])
  {
    goto LABEL_58;
  }

  departmentName = self->_departmentName;
  if (departmentName | equalCopy[4] && ![(NSString *)departmentName isEqual:?])
  {
    goto LABEL_58;
  }

  jobTitle = self->_jobTitle;
  if (jobTitle | equalCopy[9] && ![(NSString *)jobTitle isEqual:?])
  {
    goto LABEL_58;
  }

  note = self->_note;
  if (note | equalCopy[15] && ![(NSString *)note isEqual:?])
  {
    goto LABEL_58;
  }

  birthday = self->_birthday;
  if (birthday | equalCopy[2] && ![(ABSPBDate *)birthday isEqual:?])
  {
    goto LABEL_58;
  }

  nonGregorianBirthday = self->_nonGregorianBirthday;
  if (nonGregorianBirthday | equalCopy[14] && ![(ABSPBDate *)nonGregorianBirthday isEqual:?])
  {
    goto LABEL_58;
  }

  phoneticOrganizationName = self->_phoneticOrganizationName;
  if (phoneticOrganizationName | equalCopy[22] && ![(NSString *)phoneticOrganizationName isEqual:?])
  {
    goto LABEL_58;
  }

  phoneticFamilyName = self->_phoneticFamilyName;
  if (phoneticFamilyName | equalCopy[19] && ![(NSString *)phoneticFamilyName isEqual:?])
  {
    goto LABEL_58;
  }

  phoneticGivenName = self->_phoneticGivenName;
  if (phoneticGivenName | equalCopy[20] && ![(NSString *)phoneticGivenName isEqual:?])
  {
    goto LABEL_58;
  }

  phoneticMiddleName = self->_phoneticMiddleName;
  if (phoneticMiddleName | equalCopy[21] && ![(NSString *)phoneticMiddleName isEqual:?])
  {
    goto LABEL_58;
  }

  pronunciationGivenName = self->_pronunciationGivenName;
  if (pronunciationGivenName | equalCopy[26] && ![(NSString *)pronunciationGivenName isEqual:?])
  {
    goto LABEL_58;
  }

  pronunciationFamilyName = self->_pronunciationFamilyName;
  if (pronunciationFamilyName | equalCopy[25] && ![(NSString *)pronunciationFamilyName isEqual:?])
  {
    goto LABEL_58;
  }

  if (((phonemeData = self->_phonemeData, !(phonemeData | equalCopy[18])) || [(NSString *)phonemeData isEqual:?]) && ((callAlert = self->_callAlert, !(callAlert | equalCopy[3])) || [(ABSPBAlert *)callAlert isEqual:?]) && ((textAlert = self->_textAlert, !(textAlert | equalCopy[27])) || [(ABSPBAlert *)textAlert isEqual:?]) && ((phoneNumbers = self->_phoneNumbers, !(phoneNumbers | equalCopy[17])) || [(NSMutableArray *)phoneNumbers isEqual:?]) && ((urls = self->_urls, !(urls | equalCopy[28])) || [(NSMutableArray *)urls isEqual:?]) && ((emails = self->_emails, !(emails | equalCopy[5])) || [(NSMutableArray *)emails isEqual:?]) && ((addresses = self->_addresses, !(addresses | equalCopy[1])) || [(NSMutableArray *)addresses isEqual:?]))
  {
    preferredChannel = self->_preferredChannel;
    if (preferredChannel | equalCopy[23])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 8))
  {
    [(ABSPBContact *)self setIdentifier:?];
  }

  if (*(fromCopy + 11))
  {
    [(ABSPBContact *)self setNamePrefix:?];
  }

  if (*(fromCopy + 7))
  {
    [(ABSPBContact *)self setGivenName:?];
  }

  if (*(fromCopy + 10))
  {
    [(ABSPBContact *)self setMiddleName:?];
  }

  if (*(fromCopy + 6))
  {
    [(ABSPBContact *)self setFamilyName:?];
  }

  if (*(fromCopy + 24))
  {
    [(ABSPBContact *)self setPreviousFamilyName:?];
  }

  if (*(fromCopy + 12))
  {
    [(ABSPBContact *)self setNameSuffix:?];
  }

  if (*(fromCopy + 13))
  {
    [(ABSPBContact *)self setNickname:?];
  }

  if (*(fromCopy + 16))
  {
    [(ABSPBContact *)self setOrganizationName:?];
  }

  if (*(fromCopy + 4))
  {
    [(ABSPBContact *)self setDepartmentName:?];
  }

  if (*(fromCopy + 9))
  {
    [(ABSPBContact *)self setJobTitle:?];
  }

  if (*(fromCopy + 15))
  {
    [(ABSPBContact *)self setNote:?];
  }

  birthday = self->_birthday;
  v6 = *(fromCopy + 2);
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
  v8 = *(fromCopy + 14);
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

  if (*(fromCopy + 22))
  {
    [(ABSPBContact *)self setPhoneticOrganizationName:?];
  }

  if (*(fromCopy + 19))
  {
    [(ABSPBContact *)self setPhoneticFamilyName:?];
  }

  if (*(fromCopy + 20))
  {
    [(ABSPBContact *)self setPhoneticGivenName:?];
  }

  if (*(fromCopy + 21))
  {
    [(ABSPBContact *)self setPhoneticMiddleName:?];
  }

  if (*(fromCopy + 26))
  {
    [(ABSPBContact *)self setPronunciationGivenName:?];
  }

  if (*(fromCopy + 25))
  {
    [(ABSPBContact *)self setPronunciationFamilyName:?];
  }

  if (*(fromCopy + 18))
  {
    [(ABSPBContact *)self setPhonemeData:?];
  }

  callAlert = self->_callAlert;
  v10 = *(fromCopy + 3);
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
  v12 = *(fromCopy + 27);
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
  v13 = *(fromCopy + 17);
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
  v18 = *(fromCopy + 28);
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
  v23 = *(fromCopy + 5);
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
  v28 = *(fromCopy + 1);
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

  if (*(fromCopy + 23))
  {
    [(ABSPBContact *)self setPreferredChannel:?];
  }
}

- (id)toContact
{
  v3 = [CNMutableContact alloc];
  identifier = [(ABSPBContact *)self identifier];
  v5 = [v3 initWithIdentifier:identifier];

  namePrefix = [(ABSPBContact *)self namePrefix];

  if (namePrefix)
  {
    namePrefix2 = [(ABSPBContact *)self namePrefix];
    [v5 setNamePrefix:namePrefix2];
  }

  givenName = [(ABSPBContact *)self givenName];

  if (givenName)
  {
    givenName2 = [(ABSPBContact *)self givenName];
    [v5 setGivenName:givenName2];
  }

  middleName = [(ABSPBContact *)self middleName];

  if (middleName)
  {
    middleName2 = [(ABSPBContact *)self middleName];
    [v5 setMiddleName:middleName2];
  }

  familyName = [(ABSPBContact *)self familyName];

  if (familyName)
  {
    familyName2 = [(ABSPBContact *)self familyName];
    [v5 setFamilyName:familyName2];
  }

  previousFamilyName = [(ABSPBContact *)self previousFamilyName];

  if (previousFamilyName)
  {
    previousFamilyName2 = [(ABSPBContact *)self previousFamilyName];
    [v5 setPreviousFamilyName:previousFamilyName2];
  }

  nameSuffix = [(ABSPBContact *)self nameSuffix];

  if (nameSuffix)
  {
    nameSuffix2 = [(ABSPBContact *)self nameSuffix];
    [v5 setNameSuffix:nameSuffix2];
  }

  nickname = [(ABSPBContact *)self nickname];

  if (nickname)
  {
    nickname2 = [(ABSPBContact *)self nickname];
    [v5 setNickname:nickname2];
  }

  organizationName = [(ABSPBContact *)self organizationName];

  if (organizationName)
  {
    organizationName2 = [(ABSPBContact *)self organizationName];
    [v5 setOrganizationName:organizationName2];
  }

  departmentName = [(ABSPBContact *)self departmentName];

  if (departmentName)
  {
    departmentName2 = [(ABSPBContact *)self departmentName];
    [v5 setDepartmentName:departmentName2];
  }

  jobTitle = [(ABSPBContact *)self jobTitle];

  if (jobTitle)
  {
    jobTitle2 = [(ABSPBContact *)self jobTitle];
    [v5 setJobTitle:jobTitle2];
  }

  note = [(ABSPBContact *)self note];

  if (note)
  {
    note2 = [(ABSPBContact *)self note];
    [v5 setNote:note2];
  }

  if ([(ABSPBContact *)self hasBirthday])
  {
    v28 = objc_alloc_init(NSDateComponents);
    v29 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    [v28 setCalendar:v29];

    birthday = [(ABSPBContact *)self birthday];
    if ([birthday hasYear])
    {
      birthday2 = [(ABSPBContact *)self birthday];
      year = [birthday2 year];

      if (year == -1)
      {
        goto LABEL_28;
      }

      birthday = [(ABSPBContact *)self birthday];
      [v28 setYear:{objc_msgSend(birthday, "year")}];
    }

LABEL_28:
    birthday3 = [(ABSPBContact *)self birthday];
    if ([birthday3 hasMonth])
    {
      birthday4 = [(ABSPBContact *)self birthday];
      month = [birthday4 month];

      if (month == -1)
      {
        goto LABEL_32;
      }

      birthday3 = [(ABSPBContact *)self birthday];
      [v28 setMonth:{objc_msgSend(birthday3, "month")}];
    }

LABEL_32:
    birthday5 = [(ABSPBContact *)self birthday];
    if ([birthday5 hasDay])
    {
      birthday6 = [(ABSPBContact *)self birthday];
      v38 = [birthday6 day];

      if (v38 == -1)
      {
LABEL_36:
        [v5 setBirthday:v28];

        goto LABEL_37;
      }

      birthday5 = [(ABSPBContact *)self birthday];
      [v28 setDay:{objc_msgSend(birthday5, "day")}];
    }

    goto LABEL_36;
  }

LABEL_37:
  if (![(ABSPBContact *)self hasNonGregorianBirthday])
  {
    goto LABEL_55;
  }

  v39 = objc_alloc_init(NSDateComponents);
  nonGregorianBirthday = [(ABSPBContact *)self nonGregorianBirthday];
  v41 = sub_10000697C([nonGregorianBirthday calendar]);

  v42 = [NSCalendar calendarWithIdentifier:v41];
  [v39 setCalendar:v42];

  nonGregorianBirthday2 = [(ABSPBContact *)self nonGregorianBirthday];
  if ([nonGregorianBirthday2 hasEra])
  {
    nonGregorianBirthday3 = [(ABSPBContact *)self nonGregorianBirthday];
    v45 = [nonGregorianBirthday3 era];

    if (v45 == -1)
    {
      goto LABEL_42;
    }

    nonGregorianBirthday2 = [(ABSPBContact *)self nonGregorianBirthday];
    [v39 setEra:{objc_msgSend(nonGregorianBirthday2, "era")}];
  }

LABEL_42:
  nonGregorianBirthday4 = [(ABSPBContact *)self nonGregorianBirthday];
  if ([nonGregorianBirthday4 hasYear])
  {
    nonGregorianBirthday5 = [(ABSPBContact *)self nonGregorianBirthday];
    year2 = [nonGregorianBirthday5 year];

    if (year2 == -1)
    {
      goto LABEL_46;
    }

    nonGregorianBirthday4 = [(ABSPBContact *)self nonGregorianBirthday];
    [v39 setYear:{objc_msgSend(nonGregorianBirthday4, "year")}];
  }

LABEL_46:
  nonGregorianBirthday6 = [(ABSPBContact *)self nonGregorianBirthday];
  if ([nonGregorianBirthday6 hasMonth])
  {
    nonGregorianBirthday7 = [(ABSPBContact *)self nonGregorianBirthday];
    month2 = [nonGregorianBirthday7 month];

    if (month2 == -1)
    {
      goto LABEL_50;
    }

    nonGregorianBirthday6 = [(ABSPBContact *)self nonGregorianBirthday];
    [v39 setMonth:{objc_msgSend(nonGregorianBirthday6, "month")}];
  }

LABEL_50:
  nonGregorianBirthday8 = [(ABSPBContact *)self nonGregorianBirthday];
  if (![nonGregorianBirthday8 hasDay])
  {
LABEL_53:

    goto LABEL_54;
  }

  nonGregorianBirthday9 = [(ABSPBContact *)self nonGregorianBirthday];
  v54 = [nonGregorianBirthday9 day];

  if (v54 != -1)
  {
    nonGregorianBirthday8 = [(ABSPBContact *)self nonGregorianBirthday];
    [v39 setDay:{objc_msgSend(nonGregorianBirthday8, "day")}];
    goto LABEL_53;
  }

LABEL_54:
  nonGregorianBirthday10 = [(ABSPBContact *)self nonGregorianBirthday];
  [v39 setLeapMonth:{objc_msgSend(nonGregorianBirthday10, "isLeapMonth")}];

  [v5 setNonGregorianBirthday:v39];
LABEL_55:
  phoneticOrganizationName = [(ABSPBContact *)self phoneticOrganizationName];

  if (phoneticOrganizationName)
  {
    phoneticOrganizationName2 = [(ABSPBContact *)self phoneticOrganizationName];
    [v5 setPhoneticOrganizationName:phoneticOrganizationName2];
  }

  phoneticFamilyName = [(ABSPBContact *)self phoneticFamilyName];

  if (phoneticFamilyName)
  {
    phoneticFamilyName2 = [(ABSPBContact *)self phoneticFamilyName];
    [v5 setPhoneticFamilyName:phoneticFamilyName2];
  }

  phoneticGivenName = [(ABSPBContact *)self phoneticGivenName];

  if (phoneticGivenName)
  {
    phoneticGivenName2 = [(ABSPBContact *)self phoneticGivenName];
    [v5 setPhoneticGivenName:phoneticGivenName2];
  }

  phoneticMiddleName = [(ABSPBContact *)self phoneticMiddleName];

  if (phoneticMiddleName)
  {
    phoneticMiddleName2 = [(ABSPBContact *)self phoneticMiddleName];
    [v5 setPhoneticMiddleName:phoneticMiddleName2];
  }

  pronunciationGivenName = [(ABSPBContact *)self pronunciationGivenName];

  if (pronunciationGivenName)
  {
    pronunciationGivenName2 = [(ABSPBContact *)self pronunciationGivenName];
    [v5 setPronunciationGivenName:pronunciationGivenName2];
  }

  pronunciationFamilyName = [(ABSPBContact *)self pronunciationFamilyName];

  if (pronunciationFamilyName)
  {
    pronunciationFamilyName2 = [(ABSPBContact *)self pronunciationFamilyName];
    [v5 setPronunciationFamilyName:pronunciationFamilyName2];
  }

  phonemeData = [(ABSPBContact *)self phonemeData];

  if (phonemeData)
  {
    phonemeData2 = [(ABSPBContact *)self phonemeData];
    [v5 setPhonemeData:phonemeData2];
  }

  preferredChannel = [(ABSPBContact *)self preferredChannel];

  if (preferredChannel)
  {
    preferredChannel2 = [(ABSPBContact *)self preferredChannel];
    [v5 setPreferredChannel:preferredChannel2];
  }

  if ([(ABSPBContact *)self hasCallAlert])
  {
    v72 = [CNActivityAlert alloc];
    callAlert = [(ABSPBContact *)self callAlert];
    sound = [callAlert sound];
    callAlert2 = [(ABSPBContact *)self callAlert];
    vibration = [callAlert2 vibration];
    callAlert3 = [(ABSPBContact *)self callAlert];
    v78 = [v72 initWithSound:sound vibration:vibration ignoreMute:{objc_msgSend(callAlert3, "ignoreMute")}];

    [v5 setCallAlert:v78];
  }

  if ([(ABSPBContact *)self hasTextAlert])
  {
    v79 = [CNActivityAlert alloc];
    textAlert = [(ABSPBContact *)self textAlert];
    sound2 = [textAlert sound];
    textAlert2 = [(ABSPBContact *)self textAlert];
    vibration2 = [textAlert2 vibration];
    textAlert3 = [(ABSPBContact *)self textAlert];
    v85 = [v79 initWithSound:sound2 vibration:vibration2 ignoreMute:{objc_msgSend(textAlert3, "ignoreMute")}];

    [v5 setTextAlert:v85];
  }

  phoneNumbers = [(ABSPBContact *)self phoneNumbers];
  v87 = [phoneNumbers count];

  v158 = v5;
  selfCopy = self;
  if (v87)
  {
    v88 = [NSMutableArray alloc];
    phoneNumbers2 = [(ABSPBContact *)self phoneNumbers];
    v90 = [v88 initWithCapacity:{objc_msgSend(phoneNumbers2, "count")}];

    v175 = 0u;
    v176 = 0u;
    v173 = 0u;
    v174 = 0u;
    phoneNumbers3 = [(ABSPBContact *)self phoneNumbers];
    v92 = [phoneNumbers3 countByEnumeratingWithState:&v173 objects:v180 count:16];
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
            objc_enumerationMutation(phoneNumbers3);
          }

          v96 = *(*(&v173 + 1) + 8 * i);
          v97 = [CNPhoneNumber alloc];
          value = [v96 value];
          v99 = [v97 initWithStringValue:value];

          v100 = [CNLabeledValue alloc];
          label = [v96 label];
          v102 = [v100 initWithLabel:label value:v99];

          [v90 addObject:v102];
        }

        v93 = [phoneNumbers3 countByEnumeratingWithState:&v173 objects:v180 count:16];
      }

      while (v93);
    }

    v5 = v158;
    [v158 setPhoneNumbers:v90];
  }

  addresses = [(ABSPBContact *)self addresses];
  v104 = [addresses count];

  if (v104)
  {
    v105 = [NSMutableArray alloc];
    addresses2 = [(ABSPBContact *)self addresses];
    v107 = [v105 initWithCapacity:{objc_msgSend(addresses2, "count")}];

    v171 = 0u;
    v172 = 0u;
    v169 = 0u;
    v170 = 0u;
    addresses3 = [(ABSPBContact *)self addresses];
    v109 = [addresses3 countByEnumeratingWithState:&v169 objects:v179 count:16];
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
            objc_enumerationMutation(addresses3);
          }

          v113 = *(*(&v169 + 1) + 8 * j);
          v114 = objc_alloc_init(CNMutablePostalAddress);
          street = [v113 street];
          [v114 setStreet:street];

          city = [v113 city];
          [v114 setCity:city];

          state = [v113 state];
          [v114 setState:state];

          postalCode = [v113 postalCode];
          [v114 setPostalCode:postalCode];

          country = [v113 country];
          [v114 setCountry:country];

          iSOCountryCode = [v113 iSOCountryCode];
          [v114 setISOCountryCode:iSOCountryCode];

          subLocality = [v113 subLocality];
          [v114 setSubLocality:subLocality];

          subAdministrativeArea = [v113 subAdministrativeArea];
          [v114 setSubAdministrativeArea:subAdministrativeArea];

          v123 = [CNLabeledValue alloc];
          label2 = [v113 label];
          v125 = [v123 initWithLabel:label2 value:v114];

          [v107 addObject:v125];
        }

        v110 = [addresses3 countByEnumeratingWithState:&v169 objects:v179 count:16];
      }

      while (v110);
    }

    v5 = v159;
    [v159 setPostalAddresses:v107];

    self = selfCopy;
  }

  urls = [(ABSPBContact *)self urls];
  v127 = [urls count];

  if (v127)
  {
    v128 = [NSMutableArray alloc];
    urls2 = [(ABSPBContact *)self urls];
    v130 = [v128 initWithCapacity:{objc_msgSend(urls2, "count")}];

    v167 = 0u;
    v168 = 0u;
    v165 = 0u;
    v166 = 0u;
    urls3 = [(ABSPBContact *)self urls];
    v132 = [urls3 countByEnumeratingWithState:&v165 objects:v178 count:16];
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
            objc_enumerationMutation(urls3);
          }

          v136 = *(*(&v165 + 1) + 8 * k);
          v137 = [CNLabeledValue alloc];
          label3 = [v136 label];
          value2 = [v136 value];
          v140 = [v137 initWithLabel:label3 value:value2];

          [v130 addObject:v140];
        }

        v133 = [urls3 countByEnumeratingWithState:&v165 objects:v178 count:16];
      }

      while (v133);
    }

    [v5 setUrlAddresses:v130];
    self = selfCopy;
  }

  emails = [(ABSPBContact *)self emails];
  v142 = [emails count];

  if (v142)
  {
    v143 = [NSMutableArray alloc];
    emails2 = [(ABSPBContact *)self emails];
    v145 = [v143 initWithCapacity:{objc_msgSend(emails2, "count")}];

    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    emails3 = [(ABSPBContact *)self emails];
    v147 = [emails3 countByEnumeratingWithState:&v161 objects:v177 count:16];
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
            objc_enumerationMutation(emails3);
          }

          v151 = *(*(&v161 + 1) + 8 * m);
          v152 = [CNLabeledValue alloc];
          label4 = [v151 label];
          value3 = [v151 value];
          v155 = [v152 initWithLabel:label4 value:value3];

          [v145 addObject:v155];
        }

        v148 = [emails3 countByEnumeratingWithState:&v161 objects:v177 count:16];
      }

      while (v148);
    }

    [v5 setEmailAddresses:v145];
  }

  v156 = v5;

  return v5;
}

+ (id)toPBContact:(id)contact
{
  contactCopy = contact;
  v4 = objc_alloc_init(ABSPBContact);
  identifier = [contactCopy identifier];

  if (identifier)
  {
    identifier2 = [contactCopy identifier];
    [(ABSPBContact *)v4 setIdentifier:identifier2];
  }

  namePrefix = [contactCopy namePrefix];

  if (namePrefix)
  {
    namePrefix2 = [contactCopy namePrefix];
    [(ABSPBContact *)v4 setNamePrefix:namePrefix2];
  }

  givenName = [contactCopy givenName];

  if (givenName)
  {
    givenName2 = [contactCopy givenName];
    [(ABSPBContact *)v4 setGivenName:givenName2];
  }

  middleName = [contactCopy middleName];

  if (middleName)
  {
    middleName2 = [contactCopy middleName];
    [(ABSPBContact *)v4 setMiddleName:middleName2];
  }

  familyName = [contactCopy familyName];

  if (familyName)
  {
    familyName2 = [contactCopy familyName];
    [(ABSPBContact *)v4 setFamilyName:familyName2];
  }

  previousFamilyName = [contactCopy previousFamilyName];

  if (previousFamilyName)
  {
    previousFamilyName2 = [contactCopy previousFamilyName];
    [(ABSPBContact *)v4 setPreviousFamilyName:previousFamilyName2];
  }

  nameSuffix = [contactCopy nameSuffix];

  if (nameSuffix)
  {
    nameSuffix2 = [contactCopy nameSuffix];
    [(ABSPBContact *)v4 setNameSuffix:nameSuffix2];
  }

  nickname = [contactCopy nickname];

  if (nickname)
  {
    nickname2 = [contactCopy nickname];
    [(ABSPBContact *)v4 setNickname:nickname2];
  }

  organizationName = [contactCopy organizationName];

  if (organizationName)
  {
    organizationName2 = [contactCopy organizationName];
    [(ABSPBContact *)v4 setOrganizationName:organizationName2];
  }

  departmentName = [contactCopy departmentName];

  if (departmentName)
  {
    departmentName2 = [contactCopy departmentName];
    [(ABSPBContact *)v4 setDepartmentName:departmentName2];
  }

  jobTitle = [contactCopy jobTitle];

  if (jobTitle)
  {
    jobTitle2 = [contactCopy jobTitle];
    [(ABSPBContact *)v4 setJobTitle:jobTitle2];
  }

  note = [contactCopy note];

  if (note)
  {
    note2 = [contactCopy note];
    [(ABSPBContact *)v4 setNote:note2];
  }

  birthday = [contactCopy birthday];

  if (birthday)
  {
    v30 = objc_alloc_init(ABSPBDate);
    [(ABSPBDate *)v30 setCalendar:1];
    birthday2 = [contactCopy birthday];
    -[ABSPBDate setYear:](v30, "setYear:", [birthday2 year]);

    birthday3 = [contactCopy birthday];
    -[ABSPBDate setMonth:](v30, "setMonth:", [birthday3 month]);

    birthday4 = [contactCopy birthday];
    -[ABSPBDate setDay:](v30, "setDay:", [birthday4 day]);

    [(ABSPBContact *)v4 setBirthday:v30];
  }

  nonGregorianBirthday = [contactCopy nonGregorianBirthday];

  if (nonGregorianBirthday)
  {
    v35 = objc_alloc_init(ABSPBDate);
    nonGregorianBirthday2 = [contactCopy nonGregorianBirthday];
    calendar = [nonGregorianBirthday2 calendar];
    calendarIdentifier = [calendar calendarIdentifier];
    [(ABSPBDate *)v35 setCalendar:sub_100016CEC(calendarIdentifier)];

    nonGregorianBirthday3 = [contactCopy nonGregorianBirthday];
    -[ABSPBDate setEra:](v35, "setEra:", [nonGregorianBirthday3 era]);

    nonGregorianBirthday4 = [contactCopy nonGregorianBirthday];
    -[ABSPBDate setYear:](v35, "setYear:", [nonGregorianBirthday4 year]);

    nonGregorianBirthday5 = [contactCopy nonGregorianBirthday];
    -[ABSPBDate setMonth:](v35, "setMonth:", [nonGregorianBirthday5 month]);

    nonGregorianBirthday6 = [contactCopy nonGregorianBirthday];
    -[ABSPBDate setDay:](v35, "setDay:", [nonGregorianBirthday6 day]);

    nonGregorianBirthday7 = [contactCopy nonGregorianBirthday];
    -[ABSPBDate setIsLeapMonth:](v35, "setIsLeapMonth:", [nonGregorianBirthday7 isLeapMonth]);

    [(ABSPBContact *)v4 setNonGregorianBirthday:v35];
  }

  phoneticOrganizationName = [contactCopy phoneticOrganizationName];

  if (phoneticOrganizationName)
  {
    phoneticOrganizationName2 = [contactCopy phoneticOrganizationName];
    [(ABSPBContact *)v4 setPhoneticOrganizationName:phoneticOrganizationName2];
  }

  phoneticFamilyName = [contactCopy phoneticFamilyName];

  if (phoneticFamilyName)
  {
    phoneticFamilyName2 = [contactCopy phoneticFamilyName];
    [(ABSPBContact *)v4 setPhoneticFamilyName:phoneticFamilyName2];
  }

  phoneticGivenName = [contactCopy phoneticGivenName];

  if (phoneticGivenName)
  {
    phoneticGivenName2 = [contactCopy phoneticGivenName];
    [(ABSPBContact *)v4 setPhoneticGivenName:phoneticGivenName2];
  }

  phoneticMiddleName = [contactCopy phoneticMiddleName];

  if (phoneticMiddleName)
  {
    phoneticMiddleName2 = [contactCopy phoneticMiddleName];
    [(ABSPBContact *)v4 setPhoneticMiddleName:phoneticMiddleName2];
  }

  pronunciationGivenName = [contactCopy pronunciationGivenName];

  if (pronunciationGivenName)
  {
    pronunciationGivenName2 = [contactCopy pronunciationGivenName];
    [(ABSPBContact *)v4 setPronunciationGivenName:pronunciationGivenName2];
  }

  pronunciationFamilyName = [contactCopy pronunciationFamilyName];

  if (pronunciationFamilyName)
  {
    pronunciationFamilyName2 = [contactCopy pronunciationFamilyName];
    [(ABSPBContact *)v4 setPronunciationFamilyName:pronunciationFamilyName2];
  }

  phonemeData = [contactCopy phonemeData];

  if (phonemeData)
  {
    phonemeData2 = [contactCopy phonemeData];
    [(ABSPBContact *)v4 setPhonemeData:phonemeData2];
  }

  preferredChannel = [contactCopy preferredChannel];

  if (preferredChannel)
  {
    preferredChannel2 = [contactCopy preferredChannel];
    [(ABSPBContact *)v4 setPreferredChannel:preferredChannel2];
  }

  callAlert = [contactCopy callAlert];

  if (callAlert)
  {
    v61 = objc_alloc_init(ABSPBAlert);
    callAlert2 = [contactCopy callAlert];
    sound = [callAlert2 sound];
    [(ABSPBAlert *)v61 setSound:sound];

    callAlert3 = [contactCopy callAlert];
    vibration = [callAlert3 vibration];
    [(ABSPBAlert *)v61 setVibration:vibration];

    callAlert4 = [contactCopy callAlert];
    -[ABSPBAlert setIgnoreMute:](v61, "setIgnoreMute:", [callAlert4 ignoreMute]);

    [(ABSPBContact *)v4 setCallAlert:v61];
  }

  textAlert = [contactCopy textAlert];

  if (textAlert)
  {
    v68 = objc_alloc_init(ABSPBAlert);
    textAlert2 = [contactCopy textAlert];
    sound2 = [textAlert2 sound];
    [(ABSPBAlert *)v68 setSound:sound2];

    textAlert3 = [contactCopy textAlert];
    vibration2 = [textAlert3 vibration];
    [(ABSPBAlert *)v68 setVibration:vibration2];

    textAlert4 = [contactCopy textAlert];
    -[ABSPBAlert setIgnoreMute:](v68, "setIgnoreMute:", [textAlert4 ignoreMute]);

    [(ABSPBContact *)v4 setTextAlert:v68];
  }

  phoneNumbers = [contactCopy phoneNumbers];

  v146 = contactCopy;
  if (phoneNumbers)
  {
    v75 = [NSMutableArray alloc];
    phoneNumbers2 = [contactCopy phoneNumbers];
    v77 = [v75 initWithCapacity:{objc_msgSend(phoneNumbers2, "count")}];

    v161 = 0u;
    v162 = 0u;
    v159 = 0u;
    v160 = 0u;
    phoneNumbers3 = [contactCopy phoneNumbers];
    v79 = [phoneNumbers3 countByEnumeratingWithState:&v159 objects:v166 count:16];
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
            objc_enumerationMutation(phoneNumbers3);
          }

          v83 = *(*(&v159 + 1) + 8 * i);
          v84 = objc_alloc_init(ABSPBLabeledString);
          label = [v83 label];
          [(ABSPBLabeledString *)v84 setLabel:label];

          value = [v83 value];
          stringValue = [value stringValue];
          [(ABSPBLabeledString *)v84 setValue:stringValue];

          [v77 addObject:v84];
        }

        v80 = [phoneNumbers3 countByEnumeratingWithState:&v159 objects:v166 count:16];
      }

      while (v80);
    }

    [(ABSPBContact *)v4 setPhoneNumbers:v77];
  }

  postalAddresses = [contactCopy postalAddresses];
  v89 = [postalAddresses count];

  if (v89)
  {
    v145 = v4;
    v90 = [NSMutableArray alloc];
    postalAddresses2 = [contactCopy postalAddresses];
    v92 = [v90 initWithCapacity:{objc_msgSend(postalAddresses2, "count")}];

    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    postalAddresses3 = [contactCopy postalAddresses];
    v94 = [postalAddresses3 countByEnumeratingWithState:&v155 objects:v165 count:16];
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
            objc_enumerationMutation(postalAddresses3);
          }

          v98 = *(*(&v155 + 1) + 8 * j);
          v99 = objc_alloc_init(ABSPBPostalAddress);
          value2 = [v98 value];
          street = [value2 street];
          [(ABSPBPostalAddress *)v99 setStreet:street];

          value3 = [v98 value];
          city = [value3 city];
          [(ABSPBPostalAddress *)v99 setCity:city];

          value4 = [v98 value];
          state = [value4 state];
          [(ABSPBPostalAddress *)v99 setState:state];

          value5 = [v98 value];
          postalCode = [value5 postalCode];
          [(ABSPBPostalAddress *)v99 setPostalCode:postalCode];

          value6 = [v98 value];
          country = [value6 country];
          [(ABSPBPostalAddress *)v99 setCountry:country];

          value7 = [v98 value];
          iSOCountryCode = [value7 ISOCountryCode];
          [(ABSPBPostalAddress *)v99 setISOCountryCode:iSOCountryCode];

          value8 = [v98 value];
          subLocality = [value8 subLocality];
          [(ABSPBPostalAddress *)v99 setSubLocality:subLocality];

          value9 = [v98 value];
          subAdministrativeArea = [value9 subAdministrativeArea];
          [(ABSPBPostalAddress *)v99 setSubAdministrativeArea:subAdministrativeArea];

          [v92 addObject:v99];
        }

        v95 = [postalAddresses3 countByEnumeratingWithState:&v155 objects:v165 count:16];
      }

      while (v95);
    }

    v4 = v145;
    [(ABSPBContact *)v145 setAddresses:v92];

    contactCopy = v146;
  }

  urlAddresses = [contactCopy urlAddresses];
  v117 = [urlAddresses count];

  if (v117)
  {
    v118 = [NSMutableArray alloc];
    urlAddresses2 = [contactCopy urlAddresses];
    v120 = [v118 initWithCapacity:{objc_msgSend(urlAddresses2, "count")}];

    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    urlAddresses3 = [contactCopy urlAddresses];
    v122 = [urlAddresses3 countByEnumeratingWithState:&v151 objects:v164 count:16];
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
            objc_enumerationMutation(urlAddresses3);
          }

          v126 = *(*(&v151 + 1) + 8 * k);
          v127 = objc_alloc_init(ABSPBLabeledString);
          label2 = [v126 label];
          [(ABSPBLabeledString *)v127 setLabel:label2];

          value10 = [v126 value];
          [(ABSPBLabeledString *)v127 setValue:value10];

          [v120 addObject:v127];
        }

        v123 = [urlAddresses3 countByEnumeratingWithState:&v151 objects:v164 count:16];
      }

      while (v123);
    }

    [(ABSPBContact *)v4 setUrls:v120];
    contactCopy = v146;
  }

  emailAddresses = [contactCopy emailAddresses];

  if (emailAddresses)
  {
    v131 = [NSMutableArray alloc];
    emailAddresses2 = [contactCopy emailAddresses];
    v133 = [v131 initWithCapacity:{objc_msgSend(emailAddresses2, "count")}];

    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    emailAddresses3 = [contactCopy emailAddresses];
    v135 = [emailAddresses3 countByEnumeratingWithState:&v147 objects:v163 count:16];
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
            objc_enumerationMutation(emailAddresses3);
          }

          v139 = *(*(&v147 + 1) + 8 * m);
          v140 = objc_alloc_init(ABSPBLabeledString);
          label3 = [v139 label];
          [(ABSPBLabeledString *)v140 setLabel:label3];

          value11 = [v139 value];
          [(ABSPBLabeledString *)v140 setValue:value11];

          [v133 addObject:v140];
        }

        v136 = [emailAddresses3 countByEnumeratingWithState:&v147 objects:v163 count:16];
      }

      while (v136);
    }

    [(ABSPBContact *)v4 setEmails:v133];
    contactCopy = v146;
  }

  v143 = v4;

  return v4;
}

@end