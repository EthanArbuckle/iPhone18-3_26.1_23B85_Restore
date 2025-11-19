@interface SFAppleIDPersonInfo
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPersonInfo:(id)a3;
- (BOOL)isStale;
- (SFAppleIDPersonInfo)initWithCoder:(id)a3;
- (SFAppleIDPersonInfo)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFAppleIDPersonInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  accountIdentifier = self->_accountIdentifier;
  v9 = v4;
  if (accountIdentifier)
  {
    [v4 encodeObject:accountIdentifier forKey:@"AccountIdentifier"];
    v4 = v9;
  }

  altDSID = self->_altDSID;
  if (altDSID)
  {
    [v9 encodeObject:altDSID forKey:@"AltDSID"];
    v4 = v9;
  }

  [v4 encodeInteger:self->_certificateStatus forKey:@"CertificateStatus"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SFAppleIDPersonInfo *)self isEqualToPersonInfo:v5];
  }

  return v6;
}

- (SFAppleIDPersonInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = SFAppleIDPersonInfo;
  v5 = [(SFAppleIDPersonInfo *)&v17 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"AccountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v6;

    v8 = [v4 objectForKeyedSubscript:@"AltDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v8;

    v5->_certificateStatus = CFDictionaryGetInt64();
    v10 = [v4 objectForKeyedSubscript:@"Matched"];
    if ([v10 isEqualToString:@"email"])
    {
      v11 = 8;
    }

    else
    {
      if (![v10 isEqualToString:@"phone"])
      {
LABEL_7:
        v12 = [v4 objectForKeyedSubscript:@"MatchedValue"];
        matchedValue = v5->_matchedValue;
        v5->_matchedValue = v12;

        v14 = [v4 objectForKeyedSubscript:@"ValidUntil"];
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
  v3 = [MEMORY[0x1E695DF00] date];
  LOBYTE(self) = [v3 compare:self->_validUntilDate] == 1;

  return self;
}

- (SFAppleIDPersonInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SFAppleIDPersonInfo;
  v5 = [(SFAppleIDPersonInfo *)&v16 init];
  if (v5)
  {
    if ([v4 containsValueForKey:@"AccountIdentifier"])
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AccountIdentifier"];
      accountIdentifier = v5->_accountIdentifier;
      v5->_accountIdentifier = v6;
    }

    if ([v4 containsValueForKey:@"AltDSID"])
    {
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AltDSID"];
      altDSID = v5->_altDSID;
      v5->_altDSID = v8;
    }

    if ([v4 containsValueForKey:@"CertificateStatus"])
    {
      v5->_certificateStatus = [v4 decodeIntegerForKey:@"CertificateStatus"];
    }

    if ([v4 containsValueForKey:@"DidMatchEmail"])
    {
      v5->_didMatchEmail = [v4 decodeBoolForKey:@"DidMatchEmail"];
    }

    if ([v4 containsValueForKey:@"DidMatchPhone"])
    {
      v5->_didMatchPhone = [v4 decodeBoolForKey:@"DidMatchPhone"];
    }

    if ([v4 containsValueForKey:@"MatchedValue"])
    {
      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MatchedValue"];
      matchedValue = v5->_matchedValue;
      v5->_matchedValue = v10;
    }

    if ([v4 containsValueForKey:@"MatchedValue"])
    {
      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ValidUntilDate"];
      validUntilDate = v5->_validUntilDate;
      v5->_validUntilDate = v12;
    }

    v14 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqualToPersonInfo:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v17 = 1;
    goto LABEL_17;
  }

  [(SFAppleIDPersonInfo *)self accountIdentifier];
  objc_claimAutoreleasedReturnValue();
  v7 = [OUTLINED_FUNCTION_2_0() accountIdentifier];
  v8 = v7;
  if (v3 == v7)
  {
  }

  else
  {
    v9 = [(SFAppleIDPersonInfo *)self accountIdentifier];
    v10 = [(SFAppleIDPersonInfo *)v6 accountIdentifier];
    v11 = OUTLINED_FUNCTION_1(v10);

    if (!v11)
    {
      goto LABEL_8;
    }
  }

  [(SFAppleIDPersonInfo *)self altDSID];
  objc_claimAutoreleasedReturnValue();
  v12 = [OUTLINED_FUNCTION_2_0() altDSID];
  v13 = v12;
  if (v3 == v12)
  {
  }

  else
  {
    v14 = [(SFAppleIDPersonInfo *)self altDSID];
    v15 = [(SFAppleIDPersonInfo *)v6 altDSID];
    v16 = OUTLINED_FUNCTION_1(v15);

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

  v18 = [(SFAppleIDPersonInfo *)self didMatchEmail];
  if (v18 != [(SFAppleIDPersonInfo *)v6 didMatchEmail])
  {
    goto LABEL_8;
  }

  v19 = [(SFAppleIDPersonInfo *)self didMatchPhone];
  if (v19 != [(SFAppleIDPersonInfo *)v6 didMatchPhone])
  {
    goto LABEL_8;
  }

  [(SFAppleIDPersonInfo *)self validUntilDate];
  objc_claimAutoreleasedReturnValue();
  v20 = [OUTLINED_FUNCTION_2_0() validUntilDate];
  if (v19 == v20)
  {
    v17 = 1;
  }

  else
  {
    v21 = [(SFAppleIDPersonInfo *)self validUntilDate];
    v22 = [(SFAppleIDPersonInfo *)v6 validUntilDate];
    v17 = OUTLINED_FUNCTION_1(v22);
  }

LABEL_17:
  return v17 & 1;
}

@end