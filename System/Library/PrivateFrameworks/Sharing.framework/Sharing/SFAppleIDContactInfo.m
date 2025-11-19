@interface SFAppleIDContactInfo
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToContactInfo:(id)a3;
- (SFAppleIDContactInfo)initWithCoder:(id)a3;
- (SFAppleIDContactInfo)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFAppleIDContactInfo

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  firstName = self->_firstName;
  v9 = v4;
  if (firstName)
  {
    [v4 encodeObject:firstName forKey:@"FirstName"];
    v4 = v9;
  }

  lastName = self->_lastName;
  if (lastName)
  {
    [v9 encodeObject:lastName forKey:@"LastName"];
    v4 = v9;
  }

  validatedEmailAddresses = self->_validatedEmailAddresses;
  if (validatedEmailAddresses)
  {
    [v9 encodeObject:validatedEmailAddresses forKey:@"ValidatedEmailAddresses"];
    v4 = v9;
  }

  validatedPhoneNumbers = self->_validatedPhoneNumbers;
  if (validatedPhoneNumbers)
  {
    [v9 encodeObject:validatedPhoneNumbers forKey:@"ValidatedPhoneNumbers"];
    v4 = v9;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SFAppleIDContactInfo *)self isEqualToContactInfo:v5];
  }

  return v6;
}

- (SFAppleIDContactInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SFAppleIDContactInfo;
  v5 = [(SFAppleIDContactInfo *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"FirstName"];
    firstName = v5->_firstName;
    v5->_firstName = v6;

    v8 = [v4 objectForKeyedSubscript:@"LastName"];
    lastName = v5->_lastName;
    v5->_lastName = v8;

    v10 = [v4 objectForKeyedSubscript:@"ValidatedEmails"];
    validatedEmailAddresses = v5->_validatedEmailAddresses;
    v5->_validatedEmailAddresses = v10;

    v12 = [v4 objectForKeyedSubscript:@"ValidatedPhones"];
    validatedPhoneNumbers = v5->_validatedPhoneNumbers;
    v5->_validatedPhoneNumbers = v12;
  }

  return v5;
}

- (id)description
{
  NSAppendPrintF();
  v12 = 0;
  firstName = self->_firstName;
  NSAppendPrintF();
  v3 = v12;

  lastName = self->_lastName;
  NSAppendPrintF();
  v4 = v3;

  validatedEmailAddresses = self->_validatedEmailAddresses;
  NSAppendPrintF();
  v5 = v4;

  validatedPhoneNumbers = self->_validatedPhoneNumbers;
  NSAppendPrintF();
  v6 = v5;

  return v5;
}

- (SFAppleIDContactInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = SFAppleIDContactInfo;
  v5 = [(SFAppleIDContactInfo *)&v20 init];
  if (v5)
  {
    if ([v4 containsValueForKey:@"FirstName"])
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FirstName"];
      firstName = v5->_firstName;
      v5->_firstName = v6;
    }

    if ([v4 containsValueForKey:@"LastName"])
    {
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LastName"];
      lastName = v5->_lastName;
      v5->_lastName = v8;
    }

    if ([v4 containsValueForKey:@"ValidatedEmailAddresses"])
    {
      v10 = MEMORY[0x1E695DFD8];
      v11 = objc_opt_class();
      v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
      v13 = [v4 decodeObjectOfClasses:v12 forKey:@"ValidatedEmailAddresses"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_validatedEmailAddresses, v13);
      }
    }

    if ([v4 containsValueForKey:@"ValidatedPhoneNumbers"])
    {
      v14 = MEMORY[0x1E695DFD8];
      v15 = objc_opt_class();
      v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
      v17 = [v4 decodeObjectOfClasses:v16 forKey:@"ValidatedPhoneNumbers"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_validatedPhoneNumbers, v17);
      }
    }

    v18 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong((v4 + 8), self->_firstName);
    objc_storeStrong(v5 + 2, self->_lastName);
    objc_storeStrong(v5 + 3, self->_validatedEmailAddresses);
    objc_storeStrong(v5 + 4, self->_validatedPhoneNumbers);
  }

  return v5;
}

- (BOOL)isEqualToContactInfo:(id)a3
{
  v8 = a3;
  if (self == v8)
  {
    v16 = 1;
    goto LABEL_18;
  }

  [(SFAppleIDContactInfo *)self firstName];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() firstName];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  if (v9)
  {
  }

  else
  {
    [(SFAppleIDContactInfo *)self firstName];
    objc_claimAutoreleasedReturnValue();
    v10 = [OUTLINED_FUNCTION_3_2() firstName];
    v11 = OUTLINED_FUNCTION_1(v10);

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  [(SFAppleIDContactInfo *)self lastName];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() lastName];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  if (v9)
  {
  }

  else
  {
    [(SFAppleIDContactInfo *)self lastName];
    objc_claimAutoreleasedReturnValue();
    v12 = [OUTLINED_FUNCTION_3_2() lastName];
    v13 = OUTLINED_FUNCTION_1(v12);

    if (!v13)
    {
      goto LABEL_12;
    }
  }

  [(SFAppleIDContactInfo *)self validatedEmailAddresses];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() validatedEmailAddresses];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  if (v9)
  {
  }

  else
  {
    [(SFAppleIDContactInfo *)self validatedEmailAddresses];
    objc_claimAutoreleasedReturnValue();
    v14 = [OUTLINED_FUNCTION_3_2() validatedEmailAddresses];
    v15 = OUTLINED_FUNCTION_1(v14);

    if (!v15)
    {
LABEL_12:
      v16 = 0;
      goto LABEL_18;
    }
  }

  [(SFAppleIDContactInfo *)self validatedPhoneNumbers];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_2_0() validatedPhoneNumbers];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_4();
  if (v9)
  {
    v16 = 1;
  }

  else
  {
    [(SFAppleIDContactInfo *)self validatedPhoneNumbers];
    objc_claimAutoreleasedReturnValue();
    v17 = [OUTLINED_FUNCTION_3_2() validatedPhoneNumbers];
    v16 = OUTLINED_FUNCTION_1(v17);
  }

LABEL_18:
  return v16 & 1;
}

@end