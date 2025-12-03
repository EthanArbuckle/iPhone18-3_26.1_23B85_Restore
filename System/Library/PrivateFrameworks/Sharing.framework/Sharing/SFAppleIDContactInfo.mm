@interface SFAppleIDContactInfo
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContactInfo:(id)info;
- (SFAppleIDContactInfo)initWithCoder:(id)coder;
- (SFAppleIDContactInfo)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFAppleIDContactInfo

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  firstName = self->_firstName;
  v9 = coderCopy;
  if (firstName)
  {
    [coderCopy encodeObject:firstName forKey:@"FirstName"];
    coderCopy = v9;
  }

  lastName = self->_lastName;
  if (lastName)
  {
    [v9 encodeObject:lastName forKey:@"LastName"];
    coderCopy = v9;
  }

  validatedEmailAddresses = self->_validatedEmailAddresses;
  if (validatedEmailAddresses)
  {
    [v9 encodeObject:validatedEmailAddresses forKey:@"ValidatedEmailAddresses"];
    coderCopy = v9;
  }

  validatedPhoneNumbers = self->_validatedPhoneNumbers;
  if (validatedPhoneNumbers)
  {
    [v9 encodeObject:validatedPhoneNumbers forKey:@"ValidatedPhoneNumbers"];
    coderCopy = v9;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SFAppleIDContactInfo *)self isEqualToContactInfo:v5];
  }

  return v6;
}

- (SFAppleIDContactInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = SFAppleIDContactInfo;
  v5 = [(SFAppleIDContactInfo *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"FirstName"];
    firstName = v5->_firstName;
    v5->_firstName = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"LastName"];
    lastName = v5->_lastName;
    v5->_lastName = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"ValidatedEmails"];
    validatedEmailAddresses = v5->_validatedEmailAddresses;
    v5->_validatedEmailAddresses = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"ValidatedPhones"];
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

- (SFAppleIDContactInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = SFAppleIDContactInfo;
  v5 = [(SFAppleIDContactInfo *)&v20 init];
  if (v5)
  {
    if ([coderCopy containsValueForKey:@"FirstName"])
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FirstName"];
      firstName = v5->_firstName;
      v5->_firstName = v6;
    }

    if ([coderCopy containsValueForKey:@"LastName"])
    {
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LastName"];
      lastName = v5->_lastName;
      v5->_lastName = v8;
    }

    if ([coderCopy containsValueForKey:@"ValidatedEmailAddresses"])
    {
      v10 = MEMORY[0x1E695DFD8];
      v11 = objc_opt_class();
      v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
      v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"ValidatedEmailAddresses"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v5->_validatedEmailAddresses, v13);
      }
    }

    if ([coderCopy containsValueForKey:@"ValidatedPhoneNumbers"])
    {
      v14 = MEMORY[0x1E695DFD8];
      v15 = objc_opt_class();
      v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
      v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"ValidatedPhoneNumbers"];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqualToContactInfo:(id)info
{
  infoCopy = info;
  if (self == infoCopy)
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
    firstName = [OUTLINED_FUNCTION_3_2() firstName];
    v11 = OUTLINED_FUNCTION_1(firstName);

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
    lastName = [OUTLINED_FUNCTION_3_2() lastName];
    v13 = OUTLINED_FUNCTION_1(lastName);

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
    validatedEmailAddresses = [OUTLINED_FUNCTION_3_2() validatedEmailAddresses];
    v15 = OUTLINED_FUNCTION_1(validatedEmailAddresses);

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
    validatedPhoneNumbers = [OUTLINED_FUNCTION_3_2() validatedPhoneNumbers];
    v16 = OUTLINED_FUNCTION_1(validatedPhoneNumbers);
  }

LABEL_18:
  return v16 & 1;
}

@end