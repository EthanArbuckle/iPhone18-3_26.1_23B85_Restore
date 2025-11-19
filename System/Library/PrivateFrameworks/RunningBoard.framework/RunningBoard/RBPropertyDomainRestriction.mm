@interface RBPropertyDomainRestriction
+ (id)domainRestrictionForDictionary:(id)a3 withError:(id *)a4;
- (BOOL)allowsWithProperties:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)_initWithProperty:(id)a3 value:(id)a4;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation RBPropertyDomainRestriction

- (id)_initWithProperty:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = RBPropertyDomainRestriction;
  v8 = [(RBDomainRestriction *)&v20 _init];
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = [v6 copy];
  v10 = v8[1];
  v8[1] = v9;

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = &OBJC_IVAR___RBPropertyDomainRestriction__numberValue;
      v12 = &OBJC_IVAR___RBPropertyDomainRestriction__stringValue;
      goto LABEL_6;
    }

LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  v11 = &OBJC_IVAR___RBPropertyDomainRestriction__stringValue;
  v12 = &OBJC_IVAR___RBPropertyDomainRestriction__numberValue;
LABEL_6:
  v13 = [v7 copy];
  v14 = *v12;
  v15 = *(v8 + v14);
  *(v8 + v14) = v13;

  v16 = *v11;
  v17 = *(v8 + v16);
  *(v8 + v16) = 0;

  v18 = v8;
LABEL_8:

  return v18;
}

+ (id)domainRestrictionForDictionary:(id)a3 withError:(id *)a4
{
  v32[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 objectForKey:@"Property"];
  v8 = [v6 objectForKey:@"Value"];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v8)
      {
        if ([v7 isEqualToString:@"SupportsBackgroundContentFetching"] || objc_msgSend(v7, "isEqualToString:", @"UsesSocketMonitoring") || objc_msgSend(v7, "isEqualToString:", @"SupportsBackgroundNetworkAuthentication") || objc_msgSend(v7, "isEqualToString:", @"SupportsUnboundedTaskCompletion") || objc_msgSend(v7, "isEqualToString:", @"SupportsBackgroundAudio") || objc_msgSend(v7, "isEqualToString:", @"IsExtension") || objc_msgSend(v7, "isEqualToString:", @"Platform") || objc_msgSend(v7, "isEqualToString:", @"NotPlatform"))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v9 = MEMORY[0x277CCACA8];
LABEL_14:
            [v9 stringWithFormat:@"Malformed domain plist - value for %@ is not of class %@", v7, objc_opt_class()];
            goto LABEL_15;
          }
        }

        else
        {
          if (![v7 isEqualToString:@"BundleID"] && !objc_msgSend(v7, "isEqualToString:", @"BundlePath") && !objc_msgSend(v7, "isEqualToString:", @"GroupIdentifiers"))
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"Unrecognized target property: %@", v7, v26];
            v10 = LABEL_15:;
            v11 = v10;
            if (v10)
            {
              if (a4)
              {
                v12 = MEMORY[0x277CCA9B8];
                v27 = *MEMORY[0x277CCA470];
                v28 = v10;
                v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
                v14 = [v12 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:1 userInfo:v13];

                v15 = v14;
                *a4 = v14;
              }

              v16 = 0;
              goto LABEL_29;
            }

            goto LABEL_28;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v9 = MEMORY[0x277CCACA8];
            goto LABEL_14;
          }
        }

LABEL_28:
        v16 = [[a1 alloc] _initWithProperty:v7 value:v8];
        v11 = 0;
        goto LABEL_29;
      }

      if (a4)
      {
        v17 = MEMORY[0x277CCA9B8];
        v29 = *MEMORY[0x277CCA470];
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"RBPropertyDomainRestriction doesn't specify value: %@", v6];
        v30 = v18;
        v19 = MEMORY[0x277CBEAC0];
        v20 = &v30;
        v21 = &v29;
        goto LABEL_21;
      }

LABEL_24:
      v16 = 0;
      goto LABEL_30;
    }
  }

  if (!a4)
  {
    goto LABEL_24;
  }

  v17 = MEMORY[0x277CCA9B8];
  v31 = *MEMORY[0x277CCA470];
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"RBPropertyDomainRestriction doesn't specify property: %@", v6];
  v32[0] = v18;
  v19 = MEMORY[0x277CBEAC0];
  v20 = v32;
  v21 = &v31;
LABEL_21:
  v22 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:1];
  v11 = [v17 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:1 userInfo:v22];

  v23 = v11;
  v16 = 0;
  *a4 = v11;
LABEL_29:

LABEL_30:
  v24 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)dictionaryRepresentation
{
  v10[3] = *MEMORY[0x277D85DE8];
  v3 = self->_numberValue;
  if (!v3)
  {
    v3 = self->_stringValue;
  }

  v9[0] = @"Class";
  v4 = [(RBPropertyDomainRestriction *)self variantName];
  property = self->_property;
  v10[0] = v4;
  v10[1] = property;
  v9[1] = @"Property";
  v9[2] = @"Value";
  v10[2] = v3;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)allowsWithProperties:(id)a3 error:(id *)a4
{
  v30[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(NSString *)self->_property isEqualToString:@"SupportsBackgroundContentFetching"])
  {
    v7 = [v6 supportsBackgroundContentFetching];
LABEL_13:
    v8 = v7;
    v9 = [(NSNumber *)self->_numberValue BOOLValue];
    goto LABEL_14;
  }

  if ([(NSString *)self->_property isEqualToString:@"UsesSocketMonitoring"])
  {
    v7 = [v6 usesSocketMonitoring];
    goto LABEL_13;
  }

  if ([(NSString *)self->_property isEqualToString:@"SupportsBackgroundNetworkAuthentication"])
  {
    v7 = [v6 supportsBackgroundNetworkAuthentication];
    goto LABEL_13;
  }

  if ([(NSString *)self->_property isEqualToString:@"SupportsUnboundedTaskCompletion"])
  {
    v7 = [v6 supportsUnboundedTaskCompletion];
    goto LABEL_13;
  }

  if ([(NSString *)self->_property isEqualToString:@"SupportsBackgroundAudio"])
  {
    v7 = [v6 supportsBackgroundAudio];
    goto LABEL_13;
  }

  if ([(NSString *)self->_property isEqualToString:@"IsExtension"])
  {
    v7 = [v6 isExtension];
    goto LABEL_13;
  }

  if ([(NSString *)self->_property isEqualToString:@"Platform"])
  {
    v8 = [v6 platform];
    v9 = [(NSNumber *)self->_numberValue intValue];
LABEL_14:
    if (v8 != v9)
    {
      goto LABEL_15;
    }

LABEL_37:
    LOBYTE(a4) = 1;
    goto LABEL_38;
  }

  if ([(NSString *)self->_property isEqualToString:@"NotPlatform"])
  {
    v20 = [v6 platform];
    if (v20 != [(NSNumber *)self->_numberValue intValue])
    {
      goto LABEL_37;
    }

    goto LABEL_15;
  }

  if ([(NSString *)self->_property isEqualToString:@"BundleID"])
  {
    v21 = [v6 bundleIdentifier];
    v22 = v21;
    stringValue = self->_stringValue;
    if (v21 != stringValue)
    {
      if (!v21)
      {
        goto LABEL_39;
      }

      goto LABEL_31;
    }

LABEL_33:

    goto LABEL_37;
  }

  if (![(NSString *)self->_property isEqualToString:@"BundlePath"])
  {
    if (![(NSString *)self->_property isEqualToString:@"GroupIdentifiers"])
    {
      goto LABEL_15;
    }

    v22 = [v6 groupIdentifiers];
    v25 = [v22 containsObject:self->_stringValue];
    goto LABEL_36;
  }

  v24 = [v6 bundleIdentifier];
  v22 = v24;
  stringValue = self->_stringValue;
  if (v24 == stringValue)
  {
    goto LABEL_33;
  }

  if (!v24)
  {
LABEL_39:

    goto LABEL_15;
  }

LABEL_31:
  if (!stringValue)
  {
    goto LABEL_39;
  }

  v25 = [v22 isEqual:?];
LABEL_36:
  v26 = v25;

  if (v26)
  {
    goto LABEL_37;
  }

LABEL_15:
  if (a4)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D47050];
    v29[0] = *MEMORY[0x277CCA470];
    v12 = MEMORY[0x277CCACA8];
    v13 = [(RBPropertyDomainRestriction *)self variantName];
    v14 = v13;
    property = self->_property;
    numberValue = self->_numberValue;
    if (!numberValue)
    {
      numberValue = self->_stringValue;
    }

    v17 = [v12 stringWithFormat:@"%@ doesn't have %@='%@'", v13, self->_property, numberValue];
    v30[0] = v17;
    v29[1] = *MEMORY[0x277D47048];
    v18 = [(RBPropertyDomainRestriction *)self description];
    v30[1] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
    *a4 = [v10 errorWithDomain:v11 code:3 userInfo:v19];

    LOBYTE(a4) = 0;
  }

LABEL_38:

  v27 = *MEMORY[0x277D85DE8];
  return a4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_22;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_3;
  }

  property = self->_property;
  v8 = v4->_property;
  if (property != v8)
  {
    v9 = !property || v8 == 0;
    if (v9 || ![(NSString *)property isEqual:?])
    {
      goto LABEL_3;
    }
  }

  numberValue = self->_numberValue;
  v11 = v4->_numberValue;
  if (numberValue != v11)
  {
    v12 = !numberValue || v11 == 0;
    if (v12 || ![(NSNumber *)numberValue isEqual:?])
    {
      goto LABEL_3;
    }
  }

  stringValue = self->_stringValue;
  v14 = v4->_stringValue;
  if (stringValue == v14)
  {
LABEL_22:
    v6 = 1;
    goto LABEL_23;
  }

  if (stringValue)
  {
    v15 = v14 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v6 = [(NSString *)stringValue isEqual:?];
    goto LABEL_23;
  }

LABEL_3:
  v6 = 0;
LABEL_23:

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  v5 = v4;
  property = self->_property;
  numberValue = self->_numberValue;
  if (!numberValue)
  {
    numberValue = self->_stringValue;
  }

  v8 = [v3 initWithFormat:@"<%@| %@='%@'>", v4, self->_property, numberValue];

  return v8;
}

@end