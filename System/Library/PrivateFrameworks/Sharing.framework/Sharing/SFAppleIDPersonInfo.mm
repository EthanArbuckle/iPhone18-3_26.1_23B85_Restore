@interface SFAppleIDPersonInfo
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPersonInfo:(id)info;
- (BOOL)isStale;
- (SFAppleIDPersonInfo)initWithCoder:(id)coder;
- (SFAppleIDPersonInfo)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFAppleIDPersonInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accountIdentifier = self->_accountIdentifier;
  v9 = coderCopy;
  if (accountIdentifier)
  {
    [coderCopy encodeObject:accountIdentifier forKey:@"AccountIdentifier"];
    coderCopy = v9;
  }

  altDSID = self->_altDSID;
  if (altDSID)
  {
    [v9 encodeObject:altDSID forKey:@"AltDSID"];
    coderCopy = v9;
  }

  [coderCopy encodeInteger:self->_certificateStatus forKey:@"CertificateStatus"];
  [v9 encodeBool:self->_didMatchEmail forKey:@"DidMatchEmail"];
  [v9 encodeBool:self->_didMatchPhone forKey:@"DidMatchPhone"];
  matchedValue = self->_matchedValue;
  if (matchedValue)
  {
    [v9 encodeObject:matchedValue forKey:@"MatchedValue"];
  }

  validUntilDate = self->_validUntilDate;
  if (validUntilDate)
  {
    [v9 encodeObject:validUntilDate forKey:@"ValidUntilDate"];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SFAppleIDPersonInfo *)self isEqualToPersonInfo:v5];
  }

  return v6;
}

- (SFAppleIDPersonInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = SFAppleIDPersonInfo;
  v5 = [(SFAppleIDPersonInfo *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"AccountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"AltDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v8;

    v5->_certificateStatus = CFDictionaryGetInt64();
    v10 = [dictionaryCopy objectForKeyedSubscript:@"Matched"];
    if ([v10 isEqualToString:@"email"])
    {
      v11 = 8;
    }

    else
    {
      if (![v10 isEqualToString:@"phone"])
      {
LABEL_7:
        v12 = [dictionaryCopy objectForKeyedSubscript:@"MatchedValue"];
        matchedValue = v5->_matchedValue;
        v5->_matchedValue = v12;

        v14 = [dictionaryCopy objectForKeyedSubscript:@"ValidUntil"];
        validUntilDate = v5->_validUntilDate;
        v5->_validUntilDate = v14;

        goto LABEL_8;
      }

      v11 = 9;
    }

    *(&v5->super.isa + v11) = 1;
    goto LABEL_7;
  }

LABEL_8:

  return v5;
}

- (id)description
{
  NSAppendPrintF();
  v17 = 0;
  accountIdentifier = self->_accountIdentifier;
  NSAppendPrintF();
  v3 = v17;

  altDSID = self->_altDSID;
  NSAppendPrintF();
  v4 = v3;

  certificateStatus = self->_certificateStatus;
  if (certificateStatus <= 5)
  {
    v6 = *(&off_1E788DAE8 + certificateStatus);
  }

  NSAppendPrintF();
  v7 = v4;

  self->_didMatchEmail;
  NSAppendPrintF();
  v8 = v7;

  self->_didMatchPhone;
  NSAppendPrintF();
  v9 = v8;

  matchedValue = self->_matchedValue;
  NSAppendPrintF();
  v10 = v9;

  validUntilDate = self->_validUntilDate;
  NSAppendPrintF();
  v11 = v10;

  return v10;
}

- (BOOL)isStale
{
  date = [MEMORY[0x1E695DF00] date];
  LOBYTE(self) = [date compare:self->_validUntilDate] == 1;

  return self;
}

- (SFAppleIDPersonInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = SFAppleIDPersonInfo;
  v5 = [(SFAppleIDPersonInfo *)&v16 init];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"AccountIdentifier"])
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AccountIdentifier"];
      accountIdentifier = v5->_accountIdentifier;
      v5->_accountIdentifier = v6;
    }

    if ([coderCopy containsValueForKey:@"AltDSID"])
    {
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AltDSID"];
      altDSID = v5->_altDSID;
      v5->_altDSID = v8;
    }

    if ([coderCopy containsValueForKey:@"CertificateStatus"])
    {
      v5->_certificateStatus = [coderCopy decodeIntegerForKey:@"CertificateStatus"];
    }

    if ([coderCopy containsValueForKey:@"DidMatchEmail"])
    {
      v5->_didMatchEmail = [coderCopy decodeBoolForKey:@"DidMatchEmail"];
    }

    if ([coderCopy containsValueForKey:@"DidMatchPhone"])
    {
      v5->_didMatchPhone = [coderCopy decodeBoolForKey:@"DidMatchPhone"];
    }

    if ([coderCopy containsValueForKey:@"MatchedValue"])
    {
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MatchedValue"];
      matchedValue = v5->_matchedValue;
      v5->_matchedValue = v10;
    }

    if ([coderCopy containsValueForKey:@"MatchedValue"])
    {
      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ValidUntilDate"];
      validUntilDate = v5->_validUntilDate;
      v5->_validUntilDate = v12;
    }

    v14 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 16), self->_accountIdentifier);
    objc_storeStrong((v5 + 24), self->_altDSID);
    *(v5 + 32) = self->_certificateStatus;
    *(v5 + 8) = self->_didMatchEmail;
    *(v5 + 9) = self->_didMatchPhone;
    objc_storeStrong((v5 + 40), self->_matchedValue);
    objc_storeStrong((v5 + 48), self->_validUntilDate);
  }

  return v5;
}

- (BOOL)isEqualToPersonInfo:(id)info
{
  infoCopy = info;
  if (self == infoCopy)
  {
    v17 = 1;
    goto LABEL_17;
  }

  [(SFAppleIDPersonInfo *)self accountIdentifier];
  objc_claimAutoreleasedReturnValue();
  accountIdentifier = [OUTLINED_FUNCTION_2_0() accountIdentifier];
  v8 = accountIdentifier;
  if (v3 == accountIdentifier)
  {
  }

  else
  {
    accountIdentifier2 = [(SFAppleIDPersonInfo *)self accountIdentifier];
    accountIdentifier3 = [(SFAppleIDPersonInfo *)infoCopy accountIdentifier];
    v11 = OUTLINED_FUNCTION_1(accountIdentifier3);

    if (!v11)
    {
      goto LABEL_8;
    }
  }

  [(SFAppleIDPersonInfo *)self altDSID];
  objc_claimAutoreleasedReturnValue();
  altDSID = [OUTLINED_FUNCTION_2_0() altDSID];
  v13 = altDSID;
  if (v3 == altDSID)
  {
  }

  else
  {
    altDSID2 = [(SFAppleIDPersonInfo *)self altDSID];
    altDSID3 = [(SFAppleIDPersonInfo *)infoCopy altDSID];
    v16 = OUTLINED_FUNCTION_1(altDSID3);

    if (!v16)
    {
LABEL_8:
      v17 = 0;
      goto LABEL_17;
    }
  }

  [(SFAppleIDPersonInfo *)self certificateStatus];
  if (v3 != [OUTLINED_FUNCTION_2_0() certificateStatus])
  {
    goto LABEL_8;
  }

  didMatchEmail = [(SFAppleIDPersonInfo *)self didMatchEmail];
  if (didMatchEmail != [(SFAppleIDPersonInfo *)infoCopy didMatchEmail])
  {
    goto LABEL_8;
  }

  didMatchPhone = [(SFAppleIDPersonInfo *)self didMatchPhone];
  if (didMatchPhone != [(SFAppleIDPersonInfo *)infoCopy didMatchPhone])
  {
    goto LABEL_8;
  }

  [(SFAppleIDPersonInfo *)self validUntilDate];
  objc_claimAutoreleasedReturnValue();
  validUntilDate = [OUTLINED_FUNCTION_2_0() validUntilDate];
  if (didMatchPhone == validUntilDate)
  {
    v17 = 1;
  }

  else
  {
    validUntilDate2 = [(SFAppleIDPersonInfo *)self validUntilDate];
    validUntilDate3 = [(SFAppleIDPersonInfo *)infoCopy validUntilDate];
    v17 = OUTLINED_FUNCTION_1(validUntilDate3);
  }

LABEL_17:
  return v17 & 1;
}

@end