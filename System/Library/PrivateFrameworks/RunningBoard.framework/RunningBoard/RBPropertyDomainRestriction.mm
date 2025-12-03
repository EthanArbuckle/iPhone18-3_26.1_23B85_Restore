@interface RBPropertyDomainRestriction
+ (id)domainRestrictionForDictionary:(id)dictionary withError:(id *)error;
- (BOOL)allowsWithProperties:(id)properties error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)_initWithProperty:(id)property value:(id)value;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation RBPropertyDomainRestriction

- (id)_initWithProperty:(id)property value:(id)value
{
  propertyCopy = property;
  valueCopy = value;
  v20.receiver = self;
  v20.super_class = RBPropertyDomainRestriction;
  _init = [(RBDomainRestriction *)&v20 _init];
  if (!_init)
  {
    goto LABEL_7;
  }

  v9 = [propertyCopy copy];
  v10 = _init[1];
  _init[1] = v9;

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
  v13 = [valueCopy copy];
  v14 = *v12;
  v15 = *(_init + v14);
  *(_init + v14) = v13;

  v16 = *v11;
  v17 = *(_init + v16);
  *(_init + v16) = 0;

  v18 = _init;
LABEL_8:

  return v18;
}

+ (id)domainRestrictionForDictionary:(id)dictionary withError:(id *)error
{
  v32[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKey:@"Property"];
  v8 = [dictionaryCopy objectForKey:@"Value"];
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
              if (error)
              {
                v12 = MEMORY[0x277CCA9B8];
                v27 = *MEMORY[0x277CCA470];
                v28 = v10;
                v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
                v14 = [v12 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:1 userInfo:v13];

                v15 = v14;
                *error = v14;
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
        v16 = [[self alloc] _initWithProperty:v7 value:v8];
        v11 = 0;
        goto LABEL_29;
      }

      if (error)
      {
        v17 = MEMORY[0x277CCA9B8];
        v29 = *MEMORY[0x277CCA470];
        dictionaryCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"RBPropertyDomainRestriction doesn't specify value: %@", dictionaryCopy];
        v30 = dictionaryCopy;
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

  if (!error)
  {
    goto LABEL_24;
  }

  v17 = MEMORY[0x277CCA9B8];
  v31 = *MEMORY[0x277CCA470];
  dictionaryCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"RBPropertyDomainRestriction doesn't specify property: %@", dictionaryCopy];
  v32[0] = dictionaryCopy;
  v19 = MEMORY[0x277CBEAC0];
  v20 = v32;
  v21 = &v31;
LABEL_21:
  v22 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:1];
  v11 = [v17 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:1 userInfo:v22];

  v23 = v11;
  v16 = 0;
  *error = v11;
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
  variantName = [(RBPropertyDomainRestriction *)self variantName];
  property = self->_property;
  v10[0] = variantName;
  v10[1] = property;
  v9[1] = @"Property";
  v9[2] = @"Value";
  v10[2] = v3;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)allowsWithProperties:(id)properties error:(id *)error
{
  v30[2] = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  if ([(NSString *)self->_property isEqualToString:@"SupportsBackgroundContentFetching"])
  {
    supportsBackgroundContentFetching = [propertiesCopy supportsBackgroundContentFetching];
LABEL_13:
    platform = supportsBackgroundContentFetching;
    bOOLValue = [(NSNumber *)self->_numberValue BOOLValue];
    goto LABEL_14;
  }

  if ([(NSString *)self->_property isEqualToString:@"UsesSocketMonitoring"])
  {
    supportsBackgroundContentFetching = [propertiesCopy usesSocketMonitoring];
    goto LABEL_13;
  }

  if ([(NSString *)self->_property isEqualToString:@"SupportsBackgroundNetworkAuthentication"])
  {
    supportsBackgroundContentFetching = [propertiesCopy supportsBackgroundNetworkAuthentication];
    goto LABEL_13;
  }

  if ([(NSString *)self->_property isEqualToString:@"SupportsUnboundedTaskCompletion"])
  {
    supportsBackgroundContentFetching = [propertiesCopy supportsUnboundedTaskCompletion];
    goto LABEL_13;
  }

  if ([(NSString *)self->_property isEqualToString:@"SupportsBackgroundAudio"])
  {
    supportsBackgroundContentFetching = [propertiesCopy supportsBackgroundAudio];
    goto LABEL_13;
  }

  if ([(NSString *)self->_property isEqualToString:@"IsExtension"])
  {
    supportsBackgroundContentFetching = [propertiesCopy isExtension];
    goto LABEL_13;
  }

  if ([(NSString *)self->_property isEqualToString:@"Platform"])
  {
    platform = [propertiesCopy platform];
    bOOLValue = [(NSNumber *)self->_numberValue intValue];
LABEL_14:
    if (platform != bOOLValue)
    {
      goto LABEL_15;
    }

LABEL_37:
    LOBYTE(error) = 1;
    goto LABEL_38;
  }

  if ([(NSString *)self->_property isEqualToString:@"NotPlatform"])
  {
    platform2 = [propertiesCopy platform];
    if (platform2 != [(NSNumber *)self->_numberValue intValue])
    {
      goto LABEL_37;
    }

    goto LABEL_15;
  }

  if ([(NSString *)self->_property isEqualToString:@"BundleID"])
  {
    bundleIdentifier = [propertiesCopy bundleIdentifier];
    groupIdentifiers = bundleIdentifier;
    stringValue = self->_stringValue;
    if (bundleIdentifier != stringValue)
    {
      if (!bundleIdentifier)
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

    groupIdentifiers = [propertiesCopy groupIdentifiers];
    v25 = [groupIdentifiers containsObject:self->_stringValue];
    goto LABEL_36;
  }

  bundleIdentifier2 = [propertiesCopy bundleIdentifier];
  groupIdentifiers = bundleIdentifier2;
  stringValue = self->_stringValue;
  if (bundleIdentifier2 == stringValue)
  {
    goto LABEL_33;
  }

  if (!bundleIdentifier2)
  {
LABEL_39:

    goto LABEL_15;
  }

LABEL_31:
  if (!stringValue)
  {
    goto LABEL_39;
  }

  v25 = [groupIdentifiers isEqual:?];
LABEL_36:
  v26 = v25;

  if (v26)
  {
    goto LABEL_37;
  }

LABEL_15:
  if (error)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D47050];
    v29[0] = *MEMORY[0x277CCA470];
    v12 = MEMORY[0x277CCACA8];
    variantName = [(RBPropertyDomainRestriction *)self variantName];
    v14 = variantName;
    property = self->_property;
    numberValue = self->_numberValue;
    if (!numberValue)
    {
      numberValue = self->_stringValue;
    }

    numberValue = [v12 stringWithFormat:@"%@ doesn't have %@='%@'", variantName, self->_property, numberValue];
    v30[0] = numberValue;
    v29[1] = *MEMORY[0x277D47048];
    v18 = [(RBPropertyDomainRestriction *)self description];
    v30[1] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
    *error = [v10 errorWithDomain:v11 code:3 userInfo:v19];

    LOBYTE(error) = 0;
  }

LABEL_38:

  v27 = *MEMORY[0x277D85DE8];
  return error;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_22;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_3;
  }

  property = self->_property;
  v8 = equalCopy->_property;
  if (property != v8)
  {
    v9 = !property || v8 == 0;
    if (v9 || ![(NSString *)property isEqual:?])
    {
      goto LABEL_3;
    }
  }

  numberValue = self->_numberValue;
  v11 = equalCopy->_numberValue;
  if (numberValue != v11)
  {
    v12 = !numberValue || v11 == 0;
    if (v12 || ![(NSNumber *)numberValue isEqual:?])
    {
      goto LABEL_3;
    }
  }

  stringValue = self->_stringValue;
  v14 = equalCopy->_stringValue;
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

  numberValue = [v3 initWithFormat:@"<%@| %@='%@'>", v4, self->_property, numberValue];

  return numberValue;
}

@end