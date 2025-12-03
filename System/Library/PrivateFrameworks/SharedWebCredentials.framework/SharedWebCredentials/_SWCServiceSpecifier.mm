@interface _SWCServiceSpecifier
+ (id)_serviceSpecifiersWithEntitlementValue:(id)value serviceType:(id)type error:(id *)error;
+ (id)serviceSpecifiersWithEntitlementValue:(id)value error:(id *)error;
+ (id)serviceSpecifiersWithEntitlementValue:(id)value serviceType:(id)type error:(id *)error;
- (BOOL)domainEncompassesDomain:(id)domain;
- (BOOL)domainEncompassesDomainOfServiceSpecifier:(id)specifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (_SWCServiceSpecifier)initWithCoder:(id)coder;
- (_SWCServiceSpecifier)initWithServiceType:(id)type applicationIdentifier:(id)identifier domain:(id)domain;
- (id)_initWithServiceType:(id)type applicationIdentifier:(id)identifier domain:(id)domain;
- (id)debugDescription;
- (id)description;
- (id)redactedDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _SWCServiceSpecifier

+ (id)serviceSpecifiersWithEntitlementValue:(id)value error:(id *)error
{
  v4 = [self _serviceSpecifiersWithEntitlementValue:value serviceType:0 error:error];

  return v4;
}

+ (id)serviceSpecifiersWithEntitlementValue:(id)value serviceType:(id)type error:(id *)error
{
  valueCopy = value;
  typeCopy = type;
  if (!typeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SWCServiceSpecifier.mm" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"serviceType != nil"}];
  }

  v11 = [self _serviceSpecifiersWithEntitlementValue:valueCopy serviceType:typeCopy error:error];

  return v11;
}

- (_SWCServiceSpecifier)initWithServiceType:(id)type applicationIdentifier:(id)identifier domain:(id)domain
{
  typeCopy = type;
  identifierCopy = identifier;
  domainCopy = domain;
  v11 = domainCopy;
  if (!identifierCopy)
  {
    v12 = 0;
    if (domainCopy)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = [[_SWCApplicationIdentifier alloc] initWithString:identifierCopy];
  if (!v11)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = [[_SWCDomain alloc] initWithString:v11];
LABEL_6:
  v14 = [(_SWCServiceSpecifier *)self _initWithServiceType:typeCopy applicationIdentifier:v12 domain:v13];

  return v14;
}

- (id)_initWithServiceType:(id)type applicationIdentifier:(id)identifier domain:(id)domain
{
  typeCopy = type;
  identifierCopy = identifier;
  domainCopy = domain;
  v15.receiver = self;
  v15.super_class = _SWCServiceSpecifier;
  v11 = [(_SWCServiceSpecifier *)&v15 init];
  if (v11)
  {
    v12 = [typeCopy copy];
    serviceType = v11->_serviceType;
    v11->_serviceType = v12;

    objc_storeStrong(&v11->_applicationIdentifier, identifier);
    objc_storeStrong(&v11->_domain, domain);
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      serviceType = self->_serviceType;
      v9 = 0;
      if (!(serviceType | v5->_serviceType) || [(NSString *)serviceType isEqual:?])
      {
        applicationIdentifier = self->_applicationIdentifier;
        if (!(applicationIdentifier | v5->_applicationIdentifier) || [(_SWCApplicationIdentifier *)applicationIdentifier isEqual:?])
        {
          domain = self->_domain;
          if (!(domain | v5->_domain) || [(_SWCDomain *)domain isEqual:?])
          {
            v9 = 1;
          }
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_serviceType hash];
  v4 = [(_SWCApplicationIdentifier *)self->_applicationIdentifier hash]^ v3;
  return v4 ^ [(_SWCDomain *)self->_domain hash];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  applicationIdentifier = self->_applicationIdentifier;
  v5 = [v3 initWithFormat:@"{ s = %@, a = %@, d = %@ }", self->_serviceType, applicationIdentifier, self->_domain];

  return v5;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = [(_SWCServiceSpecifier *)self description];
  v6 = [v3 initWithFormat:@"<%@ %p> %@", v4, self, v5];

  return v6;
}

- (id)redactedDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  serviceType = self->_serviceType;
  redactedDescription = [(_SWCApplicationIdentifier *)self->_applicationIdentifier redactedDescription];
  redactedDescription2 = [(_SWCDomain *)self->_domain redactedDescription];
  v7 = [v3 initWithFormat:@"{ s = %@, a = %@, d = %@ }", serviceType, redactedDescription, redactedDescription2];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_serviceType forKey:@"serviceType"];
  [coderCopy encodeObject:self->_applicationIdentifier forKey:@"applicationIdentifier"];
  [coderCopy encodeObject:self->_domain forKey:@"domain"];
}

- (_SWCServiceSpecifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy swc_decodeObjectOfClass:objc_opt_class() forKey:@"serviceType"];
  v6 = [coderCopy swc_decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
  v7 = [coderCopy swc_decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
  v8 = [(_SWCServiceSpecifier *)self _initWithServiceType:v5 applicationIdentifier:v6 domain:v7];

  return v8;
}

- (BOOL)domainEncompassesDomain:(id)domain
{
  domainCopy = domain;
  sWCDomain = [(_SWCServiceSpecifier *)self SWCDomain];
  if (sWCDomain)
  {
    v6 = [[_SWCDomain alloc] initWithString:domainCopy];
    if (v6)
    {
      v7 = [sWCDomain encompassesDomain:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)domainEncompassesDomainOfServiceSpecifier:(id)specifier
{
  specifierCopy = specifier;
  sWCDomain = [(_SWCServiceSpecifier *)self SWCDomain];
  sWCDomain2 = [specifierCopy SWCDomain];
  v7 = sWCDomain2;
  v8 = 0;
  if (sWCDomain && sWCDomain2)
  {
    v8 = [sWCDomain encompassesDomain:sWCDomain2];
  }

  return v8;
}

- (BOOL)isValid
{
  applicationIdentifier = self->_applicationIdentifier;
  if (!applicationIdentifier || (v4 = [(_SWCApplicationIdentifier *)applicationIdentifier isValid]) != 0)
  {
    domain = self->_domain;
    if (!domain || (v4 = [(_SWCDomain *)domain isValid]) != 0)
    {
      serviceType = self->_serviceType;
      if (serviceType)
      {

        LOBYTE(v4) = _SWCServiceTypeIsWhitelisted(serviceType);
      }

      else
      {
        LOBYTE(v4) = 1;
      }
    }
  }

  return v4;
}

+ (id)_serviceSpecifiersWithEntitlementValue:(id)value serviceType:(id)type error:(id *)error
{
  v54[3] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  typeCopy = type;
  context = objc_autoreleasePoolPush();
  v43 = typeCopy;
  if (typeCopy && (_SWCServiceTypeIsWhitelisted(typeCopy) & 1) == 0)
  {
    v30 = objc_alloc(MEMORY[0x277CCA9B8]);
    v54[0] = &unk_2877A7378;
    v53[0] = @"Line";
    v53[1] = @"Function";
    obj = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[_SWCServiceSpecifier(Private) _serviceSpecifiersWithEntitlementValue:serviceType:error:]"];
    v54[1] = obj;
    v53[2] = *MEMORY[0x277CCA068];
    typeCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Service %@ is not supported.", typeCopy];
    v54[2] = typeCopy;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:3];
    v29 = [v30 initWithDomain:@"SWCErrorDomain" code:2 userInfo:v28];
    goto LABEL_28;
  }

  if (!valueCopy || (v9 = 0, !_NSIsNSArray()))
  {
    v27 = objc_alloc(MEMORY[0x277CCA9B8]);
    v49[0] = &unk_2877A73A8;
    v48[0] = @"Line";
    v48[1] = @"Function";
    obj = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[_SWCServiceSpecifier(Private) _serviceSpecifiersWithEntitlementValue:serviceType:error:]"];
    v49[1] = obj;
    v48[2] = *MEMORY[0x277CCA068];
    typeCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid entitlement value of class %@", objc_opt_class()];
    v49[2] = typeCopy;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:3];
    v29 = [v27 initWithDomain:@"SWCErrorDomain" code:2 userInfo:v28];
LABEL_28:
    v26 = v29;
LABEL_29:

    v25 = 0;
    v40 = obj;
LABEL_30:

    goto LABEL_31;
  }

  v10 = [typeCopy length];
  v40 = objc_alloc_init(MEMORY[0x277CBEB40]);
  selfCopy = self;
  v37 = v10;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = valueCopy;
  v11 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (!v11)
  {
    goto LABEL_24;
  }

  v12 = *v45;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v45 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v44 + 1) + 8 * i);
      if (!_NSIsNSString())
      {

        v34 = objc_alloc(MEMORY[0x277CCA9B8]);
        v51[0] = &unk_2877A7390;
        v50[0] = @"Line";
        v50[1] = @"Function";
        typeCopy = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[_SWCServiceSpecifier(Private) _serviceSpecifiersWithEntitlementValue:serviceType:error:]"];
        v51[1] = typeCopy;
        v50[2] = *MEMORY[0x277CCA068];
        v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid entitlement value (in array) of class %@", objc_opt_class()];
        v51[2] = v28;
        v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:3];
        v26 = [v34 initWithDomain:@"SWCErrorDomain" code:2 userInfo:v35];

        goto LABEL_29;
      }

      v15 = [v14 rangeOfString:@":"];
      v17 = v15;
      if (v15 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = v16;
        if (v43)
        {
          if (v37 != v15)
          {
            continue;
          }

          v19 = [v14 compare:v43 options:1 range:0];
          lowercaseString = v43;
          if (v19)
          {
            continue;
          }
        }

        else
        {
          v5 = [v14 substringToIndex:v15];
          lowercaseString = [v5 lowercaseString];
          v9 = lowercaseString;
        }

        v21 = _SWCServiceTypeCanonicalize(lowercaseString);
        if (!v43)
        {
        }

        v22 = [v14 substringFromIndex:v17 + v18];
        if (_SWCServiceTypeIsWhitelisted(v21))
        {
          v23 = [[selfCopy alloc] initWithServiceType:v21 applicationIdentifier:0 domain:v22];
          [v40 addObject:v23];
        }
      }
    }

    v11 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_24:

  if (v40)
  {
    typeCopy = [v40 array];
    v25 = [typeCopy copy];
    v26 = 0;
    goto LABEL_30;
  }

  v26 = 0;
  v25 = 0;
LABEL_31:
  objc_autoreleasePoolPop(context);
  if (error && !v25)
  {
    v31 = v26;
    *error = v26;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v25;
}

@end