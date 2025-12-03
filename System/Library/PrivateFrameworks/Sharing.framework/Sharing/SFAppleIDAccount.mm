@interface SFAppleIDAccount
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAccount:(id)account;
- (SFAppleIDAccount)initWithAppleID:(id)d;
- (SFAppleIDAccount)initWithCoder:(id)coder;
- (SFAppleIDAccount)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFAppleIDAccount

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  altDSID = self->_altDSID;
  v14 = coderCopy;
  if (altDSID)
  {
    [coderCopy encodeObject:altDSID forKey:@"AltDSID"];
    coderCopy = v14;
  }

  appleID = self->_appleID;
  if (appleID)
  {
    [v14 encodeObject:appleID forKey:@"AppleID"];
    coderCopy = v14;
  }

  certificateToken = self->_certificateToken;
  if (certificateToken)
  {
    [v14 encodeObject:certificateToken forKey:@"CertificateToken"];
    coderCopy = v14;
  }

  certificateTokenCreationDate = self->_certificateTokenCreationDate;
  if (certificateTokenCreationDate)
  {
    [v14 encodeObject:certificateTokenCreationDate forKey:@"CertificateTokenCreationDate"];
    coderCopy = v14;
  }

  contactInfo = self->_contactInfo;
  if (contactInfo)
  {
    [v14 encodeObject:contactInfo forKey:@"ContactInfo"];
    coderCopy = v14;
  }

  creationDate = self->_creationDate;
  if (creationDate)
  {
    [v14 encodeObject:creationDate forKey:@"CreationDate"];
    coderCopy = v14;
  }

  identity = self->_identity;
  if (identity)
  {
    [v14 encodeObject:identity forKey:@"Identity"];
    coderCopy = v14;
  }

  privateKeyPersistentReference = self->_privateKeyPersistentReference;
  if (privateKeyPersistentReference)
  {
    [v14 encodeObject:privateKeyPersistentReference forKey:@"PrivateKeyPersistentReference"];
    coderCopy = v14;
  }

  validationRecord = self->_validationRecord;
  if (validationRecord)
  {
    [v14 encodeObject:validationRecord forKey:@"ValidationRecord"];
    coderCopy = v14;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SFAppleIDAccount *)self isEqualToAccount:v5];
  }

  return v6;
}

- (SFAppleIDAccount)initWithAppleID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = SFAppleIDAccount;
  v6 = [(SFAppleIDAccount *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appleID, d);
    date = [MEMORY[0x1E695DF00] date];
    creationDate = v7->_creationDate;
    v7->_creationDate = date;
  }

  return v7;
}

- (SFAppleIDAccount)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v30.receiver = self;
  v30.super_class = SFAppleIDAccount;
  v5 = [(SFAppleIDAccount *)&v30 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"encDsId"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"AppleID"];
    if (v8)
    {
      v9 = [dictionaryCopy objectForKeyedSubscript:@"AppleID"];
    }

    else
    {
      v9 = &stru_1F1D30528;
    }

    appleID = v5->_appleID;
    v5->_appleID = &v9->isa;

    v11 = [dictionaryCopy objectForKeyedSubscript:@"AppleID"];
    certificateToken = v5->_certificateToken;
    v5->_certificateToken = v11;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v14 = [dictionaryCopy objectForKeyedSubscript:@"FirstName"];

    if (v14)
    {
      v15 = [dictionaryCopy objectForKeyedSubscript:@"FirstName"];
      [dictionary setObject:v15 forKeyedSubscript:@"FirstName"];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"LastName"];

    if (v16)
    {
      v17 = [dictionaryCopy objectForKeyedSubscript:@"LastName"];
      [dictionary setObject:v17 forKeyedSubscript:@"LastName"];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"ValidatedEmail"];

    if (v18)
    {
      v19 = [dictionaryCopy objectForKeyedSubscript:@"ValidatedEmail"];
      [dictionary setObject:v19 forKeyedSubscript:@"ValidatedEmails"];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"ValidatedPhones"];

    if (v20)
    {
      v21 = [dictionaryCopy objectForKeyedSubscript:@"ValidatedPhones"];
      [dictionary setObject:v21 forKeyedSubscript:@"ValidatedPhones"];
    }

    v22 = [[SFAppleIDContactInfo alloc] initWithDictionary:dictionary];
    contactInfo = v5->_contactInfo;
    v5->_contactInfo = v22;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v25 = [dictionaryCopy objectForKeyedSubscript:@"AppleIDAccountValidationRecordData"];

    if (v25)
    {
      v26 = [dictionaryCopy objectForKeyedSubscript:@"AppleIDAccountValidationRecordData"];
      [dictionary2 setObject:v26 forKeyedSubscript:@"ValidationRecordData"];
    }

    v27 = [[SFAppleIDValidationRecord alloc] initWithDictionary:dictionary2];
    validationRecord = v5->_validationRecord;
    v5->_validationRecord = v27;
  }

  return v5;
}

- (id)description
{
  NSAppendPrintF();
  v22 = 0;
  appleID = self->_appleID;
  NSAppendPrintF();
  v3 = v22;

  altDSID = self->_altDSID;
  NSAppendPrintF();
  v4 = v3;

  certificateToken = self->_certificateToken;
  NSAppendPrintF();
  v5 = v4;

  certificateTokenCreationDate = self->_certificateTokenCreationDate;
  NSAppendPrintF();
  v6 = v5;

  contactInfo = self->_contactInfo;
  NSAppendPrintF();
  v7 = v6;

  creationDate = self->_creationDate;
  NSAppendPrintF();
  v8 = v7;

  identity = self->_identity;
  NSAppendPrintF();
  v9 = v8;

  privateKeyPersistentReference = self->_privateKeyPersistentReference;
  NSAppendPrintF();
  v10 = v9;

  validationRecord = self->_validationRecord;
  NSAppendPrintF();
  v11 = v10;

  return v10;
}

- (SFAppleIDAccount)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = SFAppleIDAccount;
  v5 = [(SFAppleIDAccount *)&v26 init];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"AltDSID"])
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AltDSID"];
      altDSID = v5->_altDSID;
      v5->_altDSID = v6;
    }

    if ([coderCopy containsValueForKey:@"AppleID"])
    {
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AppleID"];
      appleID = v5->_appleID;
      v5->_appleID = v8;
    }

    if ([coderCopy containsValueForKey:@"CertificateToken"])
    {
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CertificateToken"];
      certificateToken = v5->_certificateToken;
      v5->_certificateToken = v10;
    }

    if ([coderCopy containsValueForKey:@"CertificateTokenCreationDate"])
    {
      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CertificateTokenCreationDate"];
      certificateTokenCreationDate = v5->_certificateTokenCreationDate;
      v5->_certificateTokenCreationDate = v12;
    }

    if ([coderCopy containsValueForKey:@"ContactInfo"])
    {
      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ContactInfo"];
      contactInfo = v5->_contactInfo;
      v5->_contactInfo = v14;
    }

    if ([coderCopy containsValueForKey:@"CreationDate"])
    {
      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CreationDate"];
      creationDate = v5->_creationDate;
      v5->_creationDate = v16;
    }

    if ([coderCopy containsValueForKey:@"Identity"])
    {
      v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Identity"];
      identity = v5->_identity;
      v5->_identity = v18;
    }

    if ([coderCopy containsValueForKey:@"PrivateKeyPersistentReference"])
    {
      v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrivateKeyPersistentReference"];
      privateKeyPersistentReference = v5->_privateKeyPersistentReference;
      v5->_privateKeyPersistentReference = v20;
    }

    if ([coderCopy containsValueForKey:@"ValidationRecord"])
    {
      v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ValidationRecord"];
      validationRecord = v5->_validationRecord;
      v5->_validationRecord = v22;
    }

    v24 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 8), self->_altDSID);
    objc_storeStrong(v5 + 2, self->_appleID);
    objc_storeStrong(v5 + 3, self->_certificateToken);
    objc_storeStrong(v5 + 4, self->_certificateTokenCreationDate);
    objc_storeStrong(v5 + 5, self->_contactInfo);
    objc_storeStrong(v5 + 6, self->_creationDate);
    objc_storeStrong(v5 + 7, self->_identity);
    objc_storeStrong(v5 + 8, self->_privateKeyPersistentReference);
    objc_storeStrong(v5 + 9, self->_validationRecord);
  }

  return v5;
}

- (BOOL)isEqualToAccount:(id)account
{
  accountCopy = account;
  if (self == accountCopy)
  {
    v26 = 1;
    goto LABEL_33;
  }

  [(SFAppleIDAccount *)self altDSID];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() altDSID];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  if (v9)
  {
  }

  else
  {
    [(SFAppleIDAccount *)self altDSID];
    objc_claimAutoreleasedReturnValue();
    altDSID = [OUTLINED_FUNCTION_3_2() altDSID];
    v11 = OUTLINED_FUNCTION_1(altDSID);

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  [(SFAppleIDAccount *)self appleID];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() appleID];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  if (v9)
  {
  }

  else
  {
    [(SFAppleIDAccount *)self appleID];
    objc_claimAutoreleasedReturnValue();
    appleID = [OUTLINED_FUNCTION_3_2() appleID];
    v13 = OUTLINED_FUNCTION_1(appleID);

    if (!v13)
    {
      goto LABEL_32;
    }
  }

  [(SFAppleIDAccount *)self certificateToken];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() certificateToken];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  if (v9)
  {
  }

  else
  {
    [(SFAppleIDAccount *)self certificateToken];
    objc_claimAutoreleasedReturnValue();
    certificateToken = [OUTLINED_FUNCTION_3_2() certificateToken];
    v15 = OUTLINED_FUNCTION_1(certificateToken);

    if (!v15)
    {
      goto LABEL_32;
    }
  }

  [(SFAppleIDAccount *)self certificateTokenCreationDate];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() certificateTokenCreationDate];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  if (v9)
  {
  }

  else
  {
    [(SFAppleIDAccount *)self certificateTokenCreationDate];
    objc_claimAutoreleasedReturnValue();
    certificateTokenCreationDate = [OUTLINED_FUNCTION_3_2() certificateTokenCreationDate];
    v17 = OUTLINED_FUNCTION_1(certificateTokenCreationDate);

    if (!v17)
    {
      goto LABEL_32;
    }
  }

  [(SFAppleIDAccount *)self contactInfo];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() contactInfo];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  if (v9)
  {
  }

  else
  {
    [(SFAppleIDAccount *)self contactInfo];
    objc_claimAutoreleasedReturnValue();
    contactInfo = [OUTLINED_FUNCTION_3_2() contactInfo];
    v19 = OUTLINED_FUNCTION_1(contactInfo);

    if (!v19)
    {
      goto LABEL_32;
    }
  }

  [(SFAppleIDAccount *)self creationDate];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() creationDate];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  if (v9)
  {
  }

  else
  {
    [(SFAppleIDAccount *)self creationDate];
    objc_claimAutoreleasedReturnValue();
    creationDate = [OUTLINED_FUNCTION_3_2() creationDate];
    v21 = OUTLINED_FUNCTION_1(creationDate);

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  [(SFAppleIDAccount *)self identity];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() identity];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  if (v9)
  {
  }

  else
  {
    [(SFAppleIDAccount *)self identity];
    objc_claimAutoreleasedReturnValue();
    identity = [OUTLINED_FUNCTION_3_2() identity];
    v23 = OUTLINED_FUNCTION_1(identity);

    if (!v23)
    {
      goto LABEL_32;
    }
  }

  [(SFAppleIDAccount *)self privateKeyPersistentReference];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() privateKeyPersistentReference];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  if (v9)
  {
  }

  else
  {
    [(SFAppleIDAccount *)self privateKeyPersistentReference];
    objc_claimAutoreleasedReturnValue();
    privateKeyPersistentReference = [OUTLINED_FUNCTION_3_2() privateKeyPersistentReference];
    v25 = OUTLINED_FUNCTION_1(privateKeyPersistentReference);

    if (!v25)
    {
LABEL_32:
      v26 = 0;
      goto LABEL_33;
    }
  }

  [(SFAppleIDAccount *)self validationRecord];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() validationRecord];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  if (v9)
  {
    v26 = 1;
  }

  else
  {
    [(SFAppleIDAccount *)self validationRecord];
    objc_claimAutoreleasedReturnValue();
    validationRecord = [OUTLINED_FUNCTION_3_2() validationRecord];
    v26 = OUTLINED_FUNCTION_1(validationRecord);
  }

LABEL_33:
  return v26 & 1;
}

@end