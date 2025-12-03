@interface PPPBContact
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addEmailAddresses:(id)addresses;
- (void)addPhoneNumbers:(id)numbers;
- (void)addPostalAddresses:(id)addresses;
- (void)addSocialProfiles:(id)profiles;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDisplayNameOrder:(BOOL)order;
- (void)writeTo:(id)to;
@end

@implementation PPPBContact

- (void)mergeFrom:(id)from
{
  v50 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 7))
  {
    [(PPPBContact *)self setIdentifier:?];
  }

  if (*(fromCopy + 6))
  {
    [(PPPBContact *)self setGivenName:?];
  }

  if (*(fromCopy + 8))
  {
    [(PPPBContact *)self setMiddleName:?];
  }

  if (*(fromCopy + 5))
  {
    [(PPPBContact *)self setFamilyName:?];
  }

  if (*(fromCopy + 11))
  {
    [(PPPBContact *)self setNickname:?];
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v5 = *(fromCopy + 14);
  v6 = [v5 countByEnumeratingWithState:&v42 objects:v49 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v43;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v43 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(PPPBContact *)self addPhoneNumbers:*(*(&v42 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v42 objects:v49 count:16];
    }

    while (v7);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v10 = *(fromCopy + 4);
  v11 = [v10 countByEnumeratingWithState:&v38 objects:v48 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v39;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v39 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(PPPBContact *)self addEmailAddresses:*(*(&v38 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v38 objects:v48 count:16];
    }

    while (v12);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v15 = *(fromCopy + 15);
  v16 = [v15 countByEnumeratingWithState:&v34 objects:v47 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v35;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(PPPBContact *)self addPostalAddresses:*(*(&v34 + 1) + 8 * k)];
      }

      v17 = [v15 countByEnumeratingWithState:&v34 objects:v47 count:16];
    }

    while (v17);
  }

  if (*(fromCopy + 13))
  {
    [(PPPBContact *)self setOrganizationName:?];
  }

  birthday = self->_birthday;
  v21 = *(fromCopy + 2);
  if (birthday)
  {
    if (v21)
    {
      [(PPPBDateComponents *)birthday mergeFrom:?];
    }
  }

  else if (v21)
  {
    [(PPPBContact *)self setBirthday:?];
  }

  nonGregorianBirthday = self->_nonGregorianBirthday;
  v23 = *(fromCopy + 12);
  if (nonGregorianBirthday)
  {
    if (v23)
    {
      [(PPPBDateComponents *)nonGregorianBirthday mergeFrom:?];
    }
  }

  else if (v23)
  {
    [(PPPBContact *)self setNonGregorianBirthday:?];
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v24 = *(fromCopy + 16);
  v25 = [v24 countByEnumeratingWithState:&v30 objects:v46 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v31;
    do
    {
      for (m = 0; m != v26; ++m)
      {
        if (*v31 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [(PPPBContact *)self addSocialProfiles:*(*(&v30 + 1) + 8 * m), v30];
      }

      v26 = [v24 countByEnumeratingWithState:&v30 objects:v46 count:16];
    }

    while (v26);
  }

  if (*(fromCopy + 9))
  {
    [(PPPBContact *)self setNamePrefix:?];
  }

  if (*(fromCopy + 10))
  {
    [(PPPBContact *)self setNameSuffix:?];
  }

  if ((*(fromCopy + 152) & 2) != 0)
  {
    self->_displayNameOrder = *(fromCopy + 6);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 18))
  {
    [(PPPBContact *)self setSortingGivenName:?];
  }

  if (*(fromCopy + 17))
  {
    [(PPPBContact *)self setSortingFamilyName:?];
  }

  if (*(fromCopy + 152))
  {
    self->_createdAt = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  v21 = [(NSString *)self->_identifier hash];
  v20 = [(NSString *)self->_givenName hash];
  v19 = [(NSString *)self->_middleName hash];
  v18 = [(NSString *)self->_familyName hash];
  v17 = [(NSString *)self->_nickname hash];
  v16 = [(NSMutableArray *)self->_phoneNumbers hash];
  v15 = [(NSMutableArray *)self->_emailAddresses hash];
  v14 = [(NSMutableArray *)self->_postalAddresses hash];
  v13 = [(NSString *)self->_organizationName hash];
  v3 = [(PPPBDateComponents *)self->_birthday hash];
  v4 = [(PPPBDateComponents *)self->_nonGregorianBirthday hash];
  v5 = [(NSMutableArray *)self->_socialProfiles hash];
  v6 = [(NSString *)self->_namePrefix hash];
  v7 = [(NSString *)self->_nameSuffix hash];
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_displayNameOrder;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(NSString *)self->_sortingGivenName hash];
  v10 = [(NSString *)self->_sortingFamilyName hash];
  if (*&self->_has)
  {
    v11 = 2654435761 * self->_createdAt;
  }

  else
  {
    v11 = 0;
  }

  return v20 ^ v21 ^ v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v14 ^ v13 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_43;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 7))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_43;
    }
  }

  givenName = self->_givenName;
  if (givenName | *(equalCopy + 6))
  {
    if (![(NSString *)givenName isEqual:?])
    {
      goto LABEL_43;
    }
  }

  middleName = self->_middleName;
  if (middleName | *(equalCopy + 8))
  {
    if (![(NSString *)middleName isEqual:?])
    {
      goto LABEL_43;
    }
  }

  familyName = self->_familyName;
  if (familyName | *(equalCopy + 5))
  {
    if (![(NSString *)familyName isEqual:?])
    {
      goto LABEL_43;
    }
  }

  nickname = self->_nickname;
  if (nickname | *(equalCopy + 11))
  {
    if (![(NSString *)nickname isEqual:?])
    {
      goto LABEL_43;
    }
  }

  phoneNumbers = self->_phoneNumbers;
  if (phoneNumbers | *(equalCopy + 14))
  {
    if (![(NSMutableArray *)phoneNumbers isEqual:?])
    {
      goto LABEL_43;
    }
  }

  emailAddresses = self->_emailAddresses;
  if (emailAddresses | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)emailAddresses isEqual:?])
    {
      goto LABEL_43;
    }
  }

  postalAddresses = self->_postalAddresses;
  if (postalAddresses | *(equalCopy + 15))
  {
    if (![(NSMutableArray *)postalAddresses isEqual:?])
    {
      goto LABEL_43;
    }
  }

  organizationName = self->_organizationName;
  if (organizationName | *(equalCopy + 13))
  {
    if (![(NSString *)organizationName isEqual:?])
    {
      goto LABEL_43;
    }
  }

  birthday = self->_birthday;
  if (birthday | *(equalCopy + 2))
  {
    if (![(PPPBDateComponents *)birthday isEqual:?])
    {
      goto LABEL_43;
    }
  }

  nonGregorianBirthday = self->_nonGregorianBirthday;
  if (nonGregorianBirthday | *(equalCopy + 12))
  {
    if (![(PPPBDateComponents *)nonGregorianBirthday isEqual:?])
    {
      goto LABEL_43;
    }
  }

  socialProfiles = self->_socialProfiles;
  if (socialProfiles | *(equalCopy + 16))
  {
    if (![(NSMutableArray *)socialProfiles isEqual:?])
    {
      goto LABEL_43;
    }
  }

  namePrefix = self->_namePrefix;
  if (namePrefix | *(equalCopy + 9))
  {
    if (![(NSString *)namePrefix isEqual:?])
    {
      goto LABEL_43;
    }
  }

  nameSuffix = self->_nameSuffix;
  if (nameSuffix | *(equalCopy + 10))
  {
    if (![(NSString *)nameSuffix isEqual:?])
    {
      goto LABEL_43;
    }
  }

  v19 = *(equalCopy + 152);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 152) & 2) == 0 || self->_displayNameOrder != *(equalCopy + 6))
    {
      goto LABEL_43;
    }
  }

  else if ((*(equalCopy + 152) & 2) != 0)
  {
LABEL_43:
    v22 = 0;
    goto LABEL_44;
  }

  sortingGivenName = self->_sortingGivenName;
  if (sortingGivenName | *(equalCopy + 18) && ![(NSString *)sortingGivenName isEqual:?])
  {
    goto LABEL_43;
  }

  sortingFamilyName = self->_sortingFamilyName;
  if (sortingFamilyName | *(equalCopy + 17))
  {
    if (![(NSString *)sortingFamilyName isEqual:?])
    {
      goto LABEL_43;
    }
  }

  v22 = (*(equalCopy + 152) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 152) & 1) == 0 || self->_createdAt != *(equalCopy + 1))
    {
      goto LABEL_43;
    }

    v22 = 1;
  }

LABEL_44:

  return v22;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v76 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  v8 = [(NSString *)self->_givenName copyWithZone:zone];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  v10 = [(NSString *)self->_middleName copyWithZone:zone];
  v11 = *(v5 + 64);
  *(v5 + 64) = v10;

  v12 = [(NSString *)self->_familyName copyWithZone:zone];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  v14 = [(NSString *)self->_nickname copyWithZone:zone];
  v15 = *(v5 + 88);
  *(v5 + 88) = v14;

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v16 = self->_phoneNumbers;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v68 objects:v75 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v69;
    do
    {
      v20 = 0;
      do
      {
        if (*v69 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v68 + 1) + 8 * v20) copyWithZone:zone];
        [v5 addPhoneNumbers:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v68 objects:v75 count:16];
    }

    while (v18);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v22 = self->_emailAddresses;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v64 objects:v74 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v65;
    do
    {
      v26 = 0;
      do
      {
        if (*v65 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v64 + 1) + 8 * v26) copyWithZone:zone];
        [v5 addEmailAddresses:v27];

        ++v26;
      }

      while (v24 != v26);
      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v64 objects:v74 count:16];
    }

    while (v24);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v28 = self->_postalAddresses;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v60 objects:v73 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v61;
    do
    {
      v32 = 0;
      do
      {
        if (*v61 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [*(*(&v60 + 1) + 8 * v32) copyWithZone:zone];
        [v5 addPostalAddresses:v33];

        ++v32;
      }

      while (v30 != v32);
      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v60 objects:v73 count:16];
    }

    while (v30);
  }

  v34 = [(NSString *)self->_organizationName copyWithZone:zone];
  v35 = *(v5 + 104);
  *(v5 + 104) = v34;

  v36 = [(PPPBDateComponents *)self->_birthday copyWithZone:zone];
  v37 = *(v5 + 16);
  *(v5 + 16) = v36;

  v38 = [(PPPBDateComponents *)self->_nonGregorianBirthday copyWithZone:zone];
  v39 = *(v5 + 96);
  *(v5 + 96) = v38;

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v40 = self->_socialProfiles;
  v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v56 objects:v72 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v57;
    do
    {
      v44 = 0;
      do
      {
        if (*v57 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = [*(*(&v56 + 1) + 8 * v44) copyWithZone:{zone, v56}];
        [v5 addSocialProfiles:v45];

        ++v44;
      }

      while (v42 != v44);
      v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v56 objects:v72 count:16];
    }

    while (v42);
  }

  v46 = [(NSString *)self->_namePrefix copyWithZone:zone];
  v47 = *(v5 + 72);
  *(v5 + 72) = v46;

  v48 = [(NSString *)self->_nameSuffix copyWithZone:zone];
  v49 = *(v5 + 80);
  *(v5 + 80) = v48;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 24) = self->_displayNameOrder;
    *(v5 + 152) |= 2u;
  }

  v50 = [(NSString *)self->_sortingGivenName copyWithZone:zone, v56];
  v51 = *(v5 + 144);
  *(v5 + 144) = v50;

  v52 = [(NSString *)self->_sortingFamilyName copyWithZone:zone];
  v53 = *(v5 + 136);
  *(v5 + 136) = v52;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_createdAt;
    *(v5 + 152) |= 1u;
  }

  v54 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
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

  if (self->_nickname)
  {
    [toCopy setNickname:?];
  }

  if ([(PPPBContact *)self phoneNumbersCount])
  {
    [toCopy clearPhoneNumbers];
    phoneNumbersCount = [(PPPBContact *)self phoneNumbersCount];
    if (phoneNumbersCount)
    {
      v5 = phoneNumbersCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PPPBContact *)self phoneNumbersAtIndex:i];
        [toCopy addPhoneNumbers:v7];
      }
    }
  }

  if ([(PPPBContact *)self emailAddressesCount])
  {
    [toCopy clearEmailAddresses];
    emailAddressesCount = [(PPPBContact *)self emailAddressesCount];
    if (emailAddressesCount)
    {
      v9 = emailAddressesCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(PPPBContact *)self emailAddressesAtIndex:j];
        [toCopy addEmailAddresses:v11];
      }
    }
  }

  if ([(PPPBContact *)self postalAddressesCount])
  {
    [toCopy clearPostalAddresses];
    postalAddressesCount = [(PPPBContact *)self postalAddressesCount];
    if (postalAddressesCount)
    {
      v13 = postalAddressesCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(PPPBContact *)self postalAddressesAtIndex:k];
        [toCopy addPostalAddresses:v15];
      }
    }
  }

  if (self->_organizationName)
  {
    [toCopy setOrganizationName:?];
  }

  if (self->_birthday)
  {
    [toCopy setBirthday:?];
  }

  if (self->_nonGregorianBirthday)
  {
    [toCopy setNonGregorianBirthday:?];
  }

  if ([(PPPBContact *)self socialProfilesCount])
  {
    [toCopy clearSocialProfiles];
    socialProfilesCount = [(PPPBContact *)self socialProfilesCount];
    if (socialProfilesCount)
    {
      v17 = socialProfilesCount;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(PPPBContact *)self socialProfilesAtIndex:m];
        [toCopy addSocialProfiles:v19];
      }
    }
  }

  if (self->_namePrefix)
  {
    [toCopy setNamePrefix:?];
  }

  v20 = toCopy;
  if (self->_nameSuffix)
  {
    [toCopy setNameSuffix:?];
    v20 = toCopy;
  }

  if ((*&self->_has & 2) != 0)
  {
    v20[6] = self->_displayNameOrder;
    *(v20 + 152) |= 2u;
  }

  if (self->_sortingGivenName)
  {
    [toCopy setSortingGivenName:?];
    v20 = toCopy;
  }

  if (self->_sortingFamilyName)
  {
    [toCopy setSortingFamilyName:?];
    v20 = toCopy;
  }

  if (*&self->_has)
  {
    *(v20 + 1) = self->_createdAt;
    *(v20 + 152) |= 1u;
  }
}

- (void)writeTo:(id)to
{
  v52 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_identifier)
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

  if (self->_nickname)
  {
    PBDataWriterWriteStringField();
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v5 = self->_phoneNumbers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v45;
    do
    {
      v9 = 0;
      do
      {
        if (*v45 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v44 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v7);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = self->_emailAddresses;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v41;
    do
    {
      v15 = 0;
      do
      {
        if (*v41 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v40 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v13);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v17 = self->_postalAddresses;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v36 objects:v49 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v37;
    do
    {
      v21 = 0;
      do
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v36 + 1) + 8 * v21);
        PBDataWriterWriteSubmessage();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v36 objects:v49 count:16];
    }

    while (v19);
  }

  if (self->_organizationName)
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

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v23 = self->_socialProfiles;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v32 objects:v48 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v33;
    do
    {
      v27 = 0;
      do
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v32 + 1) + 8 * v27);
        PBDataWriterWriteSubmessage();
        ++v27;
      }

      while (v25 != v27);
      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v32 objects:v48 count:16];
    }

    while (v25);
  }

  if (self->_namePrefix)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_nameSuffix)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    displayNameOrder = self->_displayNameOrder;
    PBDataWriterWriteInt32Field();
  }

  if (self->_sortingGivenName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sortingFamilyName)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    createdAt = self->_createdAt;
    PBDataWriterWriteInt64Field();
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (id)dictionaryRepresentation
{
  v71 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
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

  nickname = self->_nickname;
  if (nickname)
  {
    [v4 setObject:nickname forKey:@"nickname"];
  }

  if ([(NSMutableArray *)self->_phoneNumbers count])
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_phoneNumbers, "count")}];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v11 = self->_phoneNumbers;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v63 objects:v70 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v64;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v64 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation = [*(*(&v63 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:dictionaryRepresentation];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v63 objects:v70 count:16];
      }

      while (v13);
    }

    [v4 setObject:v10 forKey:@"phoneNumbers"];
  }

  if ([(NSMutableArray *)self->_emailAddresses count])
  {
    v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_emailAddresses, "count")}];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v18 = self->_emailAddresses;
    v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v59 objects:v69 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v60;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v60 != v21)
          {
            objc_enumerationMutation(v18);
          }

          dictionaryRepresentation2 = [*(*(&v59 + 1) + 8 * j) dictionaryRepresentation];
          [v17 addObject:dictionaryRepresentation2];
        }

        v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v59 objects:v69 count:16];
      }

      while (v20);
    }

    [v4 setObject:v17 forKey:@"emailAddresses"];
  }

  if ([(NSMutableArray *)self->_postalAddresses count])
  {
    v24 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_postalAddresses, "count")}];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v25 = self->_postalAddresses;
    v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v55 objects:v68 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v56;
      do
      {
        for (k = 0; k != v27; ++k)
        {
          if (*v56 != v28)
          {
            objc_enumerationMutation(v25);
          }

          dictionaryRepresentation3 = [*(*(&v55 + 1) + 8 * k) dictionaryRepresentation];
          [v24 addObject:dictionaryRepresentation3];
        }

        v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v55 objects:v68 count:16];
      }

      while (v27);
    }

    [v4 setObject:v24 forKey:@"postalAddresses"];
  }

  organizationName = self->_organizationName;
  if (organizationName)
  {
    [v4 setObject:organizationName forKey:@"organizationName"];
  }

  birthday = self->_birthday;
  if (birthday)
  {
    dictionaryRepresentation4 = [(PPPBDateComponents *)birthday dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation4 forKey:@"birthday"];
  }

  nonGregorianBirthday = self->_nonGregorianBirthday;
  if (nonGregorianBirthday)
  {
    dictionaryRepresentation5 = [(PPPBDateComponents *)nonGregorianBirthday dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation5 forKey:@"nonGregorianBirthday"];
  }

  if ([(NSMutableArray *)self->_socialProfiles count])
  {
    v36 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_socialProfiles, "count")}];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v37 = self->_socialProfiles;
    v38 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v51 objects:v67 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v52;
      do
      {
        for (m = 0; m != v39; ++m)
        {
          if (*v52 != v40)
          {
            objc_enumerationMutation(v37);
          }

          dictionaryRepresentation6 = [*(*(&v51 + 1) + 8 * m) dictionaryRepresentation];
          [v36 addObject:dictionaryRepresentation6];
        }

        v39 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v51 objects:v67 count:16];
      }

      while (v39);
    }

    [v4 setObject:v36 forKey:@"socialProfiles"];
  }

  namePrefix = self->_namePrefix;
  if (namePrefix)
  {
    [v4 setObject:namePrefix forKey:@"namePrefix"];
  }

  nameSuffix = self->_nameSuffix;
  if (nameSuffix)
  {
    [v4 setObject:nameSuffix forKey:@"nameSuffix"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v45 = [MEMORY[0x277CCABB0] numberWithInt:self->_displayNameOrder];
    [v4 setObject:v45 forKey:@"displayNameOrder"];
  }

  sortingGivenName = self->_sortingGivenName;
  if (sortingGivenName)
  {
    [v4 setObject:sortingGivenName forKey:@"sortingGivenName"];
  }

  sortingFamilyName = self->_sortingFamilyName;
  if (sortingFamilyName)
  {
    [v4 setObject:sortingFamilyName forKey:@"sortingFamilyName"];
  }

  if (*&self->_has)
  {
    v48 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_createdAt];
    [v4 setObject:v48 forKey:@"created_at"];
  }

  v49 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPPBContact;
  v4 = [(PPPBContact *)&v8 description];
  dictionaryRepresentation = [(PPPBContact *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasDisplayNameOrder:(BOOL)order
{
  if (order)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addSocialProfiles:(id)profiles
{
  profilesCopy = profiles;
  socialProfiles = self->_socialProfiles;
  v8 = profilesCopy;
  if (!socialProfiles)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_socialProfiles;
    self->_socialProfiles = v6;

    profilesCopy = v8;
    socialProfiles = self->_socialProfiles;
  }

  [(NSMutableArray *)socialProfiles addObject:profilesCopy];
}

- (void)addPostalAddresses:(id)addresses
{
  addressesCopy = addresses;
  postalAddresses = self->_postalAddresses;
  v8 = addressesCopy;
  if (!postalAddresses)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_postalAddresses;
    self->_postalAddresses = v6;

    addressesCopy = v8;
    postalAddresses = self->_postalAddresses;
  }

  [(NSMutableArray *)postalAddresses addObject:addressesCopy];
}

- (void)addEmailAddresses:(id)addresses
{
  addressesCopy = addresses;
  emailAddresses = self->_emailAddresses;
  v8 = addressesCopy;
  if (!emailAddresses)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_emailAddresses;
    self->_emailAddresses = v6;

    addressesCopy = v8;
    emailAddresses = self->_emailAddresses;
  }

  [(NSMutableArray *)emailAddresses addObject:addressesCopy];
}

- (void)addPhoneNumbers:(id)numbers
{
  numbersCopy = numbers;
  phoneNumbers = self->_phoneNumbers;
  v8 = numbersCopy;
  if (!phoneNumbers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_phoneNumbers;
    self->_phoneNumbers = v6;

    numbersCopy = v8;
    phoneNumbers = self->_phoneNumbers;
  }

  [(NSMutableArray *)phoneNumbers addObject:numbersCopy];
}

@end