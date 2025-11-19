@interface _SWCServiceSpecifier
+ (id)_serviceSpecifiersWithEntitlementValue:(id)a3 serviceType:(id)a4 error:(id *)a5;
+ (id)serviceSpecifiersWithEntitlementValue:(id)a3 error:(id *)a4;
+ (id)serviceSpecifiersWithEntitlementValue:(id)a3 serviceType:(id)a4 error:(id *)a5;
- (BOOL)domainEncompassesDomain:(id)a3;
- (BOOL)domainEncompassesDomainOfServiceSpecifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (_SWCServiceSpecifier)initWithCoder:(id)a3;
- (_SWCServiceSpecifier)initWithServiceType:(id)a3 applicationIdentifier:(id)a4 domain:(id)a5;
- (id)_initWithServiceType:(id)a3 applicationIdentifier:(id)a4 domain:(id)a5;
- (id)debugDescription;
- (id)description;
- (id)redactedDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _SWCServiceSpecifier

+ (id)serviceSpecifiersWithEntitlementValue:(id)a3 error:(id *)a4
{
  v4 = [a1 _serviceSpecifiersWithEntitlementValue:a3 serviceType:0 error:a4];

  return v4;
}

+ (id)serviceSpecifiersWithEntitlementValue:(id)a3 serviceType:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  if (!v10)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"SWCServiceSpecifier.mm" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"serviceType != nil"}];
  }

  v11 = [a1 _serviceSpecifiersWithEntitlementValue:v9 serviceType:v10 error:a5];

  return v11;
}

- (_SWCServiceSpecifier)initWithServiceType:(id)a3 applicationIdentifier:(id)a4 domain:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v9)
  {
    v12 = 0;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = [[_SWCApplicationIdentifier alloc] initWithString:v9];
  if (!v11)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = [[_SWCDomain alloc] initWithString:v11];
LABEL_6:
  v14 = [(_SWCServiceSpecifier *)self _initWithServiceType:v8 applicationIdentifier:v12 domain:v13];

  return v14;
}

- (id)_initWithServiceType:(id)a3 applicationIdentifier:(id)a4 domain:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = _SWCServiceSpecifier;
  v11 = [(_SWCServiceSpecifier *)&v15 init];
  if (v11)
  {
    v12 = [v8 copy];
    serviceType = v11->_serviceType;
    v11->_serviceType = v12;

    objc_storeStrong(&v11->_applicationIdentifier, a4);
    objc_storeStrong(&v11->_domain, a5);
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
  v5 = [(_SWCApplicationIdentifier *)self->_applicationIdentifier redactedDescription];
  v6 = [(_SWCDomain *)self->_domain redactedDescription];
  v7 = [v3 initWithFormat:@"{ s = %@, a = %@, d = %@ }", serviceType, v5, v6];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_serviceType forKey:@"serviceType"];
  [v4 encodeObject:self->_applicationIdentifier forKey:@"applicationIdentifier"];
  [v4 encodeObject:self->_domain forKey:@"domain"];
}

- (_SWCServiceSpecifier)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 swc_decodeObjectOfClass:objc_opt_class() forKey:@"serviceType"];
  v6 = [v4 swc_decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
  v7 = [v4 swc_decodeObjectOfClass:objc_opt_class() forKey:@"domain"];
  v8 = [(_SWCServiceSpecifier *)self _initWithServiceType:v5 applicationIdentifier:v6 domain:v7];

  return v8;
}

- (BOOL)domainEncompassesDomain:(id)a3
{
  v4 = a3;
  v5 = [(_SWCServiceSpecifier *)self SWCDomain];
  if (v5)
  {
    v6 = [[_SWCDomain alloc] initWithString:v4];
    if (v6)
    {
      v7 = [v5 encompassesDomain:v6];
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

- (BOOL)domainEncompassesDomainOfServiceSpecifier:(id)a3
{
  v4 = a3;
  v5 = [(_SWCServiceSpecifier *)self SWCDomain];
  v6 = [v4 SWCDomain];
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v8 = [v5 encompassesDomain:v6];
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

+ (id)_serviceSpecifiersWithEntitlementValue:(id)a3 serviceType:(id)a4 error:(id *)a5
{
  v54[3] = *MEMORY[0x277D85DE8];
  v41 = a3;
  v8 = a4;
  context = objc_autoreleasePoolPush();
  v43 = v8;
  if (v8 && (_SWCServiceTypeIsWhitelisted(v8) & 1) == 0)
  {
    v30 = objc_alloc(MEMORY[0x277CCA9B8]);
    v54[0] = &unk_2877A7378;
    v53[0] = @"Line";
    v53[1] = @"Function";
    obj = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[_SWCServiceSpecifier(Private) _serviceSpecifiersWithEntitlementValue:serviceType:error:]"];
    v54[1] = obj;
    v53[2] = *MEMORY[0x277CCA068];
    v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Service %@ is not supported.", v8];
    v54[2] = v24;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:3];
    v29 = [v30 initWithDomain:@"SWCErrorDomain" code:2 userInfo:v28];
    goto LABEL_28;
  }

  if (!v41 || (v9 = 0, !_NSIsNSArray()))
  {
    v27 = objc_alloc(MEMORY[0x277CCA9B8]);
    v49[0] = &unk_2877A73A8;
    v48[0] = @"Line";
    v48[1] = @"Function";
    obj = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[_SWCServiceSpecifier(Private) _serviceSpecifiersWithEntitlementValue:serviceType:error:]"];
    v49[1] = obj;
    v48[2] = *MEMORY[0x277CCA068];
    v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid entitlement value of class %@", objc_opt_class()];
    v49[2] = v24;
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

  v10 = [v8 length];
  v40 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v36 = a1;
  v37 = v10;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v41;
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
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[_SWCServiceSpecifier(Private) _serviceSpecifiersWithEntitlementValue:serviceType:error:]"];
        v51[1] = v24;
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
          v20 = v43;
          if (v19)
          {
            continue;
          }
        }

        else
        {
          v5 = [v14 substringToIndex:v15];
          v20 = [v5 lowercaseString];
          v9 = v20;
        }

        v21 = _SWCServiceTypeCanonicalize(v20);
        if (!v43)
        {
        }

        v22 = [v14 substringFromIndex:v17 + v18];
        if (_SWCServiceTypeIsWhitelisted(v21))
        {
          v23 = [[v36 alloc] initWithServiceType:v21 applicationIdentifier:0 domain:v22];
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
    v24 = [v40 array];
    v25 = [v24 copy];
    v26 = 0;
    goto LABEL_30;
  }

  v26 = 0;
  v25 = 0;
LABEL_31:
  objc_autoreleasePoolPop(context);
  if (a5 && !v25)
  {
    v31 = v26;
    *a5 = v26;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v25;
}

@end