@interface TUSenderIdentity
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSenderIdentity:(id)identity;
- (TUSenderIdentity)initWithCoder:(id)coder;
- (TUSenderIdentity)initWithSenderIdentity:(id)identity;
- (TUSenderIdentity)initWithUUID:(id)d accountUUID:(id)iD ISOCountryCode:(id)code localizedName:(id)name localizedShortName:(id)shortName localizedServiceName:(id)serviceName handle:(id)handle;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUSenderIdentity

- (unint64_t)hash
{
  uUID = [(TUSenderIdentity *)self UUID];
  v4 = [uUID hash];
  accountUUID = [(TUSenderIdentity *)self accountUUID];
  v6 = [accountUUID hash] ^ v4;
  handle = [(TUSenderIdentity *)self handle];
  v8 = [handle hash];
  iSOCountryCode = [(TUSenderIdentity *)self ISOCountryCode];
  v10 = v6 ^ v8 ^ [iSOCountryCode hash];
  localizedName = [(TUSenderIdentity *)self localizedName];
  v12 = [localizedName hash];
  localizedShortName = [(TUSenderIdentity *)self localizedShortName];
  v14 = v12 ^ [localizedShortName hash];
  localizedServiceName = [(TUSenderIdentity *)self localizedServiceName];
  v16 = v14 ^ [localizedServiceName hash];

  return v10 ^ v16;
}

- (TUSenderIdentity)initWithUUID:(id)d accountUUID:(id)iD ISOCountryCode:(id)code localizedName:(id)name localizedShortName:(id)shortName localizedServiceName:(id)serviceName handle:(id)handle
{
  dCopy = d;
  obj = iD;
  iDCopy = iD;
  codeCopy = code;
  nameCopy = name;
  shortNameCopy = shortName;
  serviceNameCopy = serviceName;
  handleCopy = handle;
  handleCopy2 = handle;
  v35.receiver = self;
  v35.super_class = TUSenderIdentity;
  v23 = [(TUSenderIdentity *)&v35 init];
  if (v23)
  {
    if (dCopy)
    {
      if (iDCopy)
      {
        goto LABEL_4;
      }
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[TUSenderIdentity initWithUUID:accountUUID:ISOCountryCode:localizedName:localizedShortName:localizedServiceName:handle:]", @"UUID", obj, handle}];
      if (iDCopy)
      {
LABEL_4:
        if (codeCopy)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[TUSenderIdentity initWithUUID:accountUUID:ISOCountryCode:localizedName:localizedShortName:localizedServiceName:handle:]", @"accountUUID"}];
    if (codeCopy)
    {
LABEL_5:
      if (nameCopy)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }

LABEL_12:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[TUSenderIdentity initWithUUID:accountUUID:ISOCountryCode:localizedName:localizedShortName:localizedServiceName:handle:]", @"ISOCountryCode"}];
    if (nameCopy)
    {
LABEL_6:
      if (shortNameCopy)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }

LABEL_13:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[TUSenderIdentity initWithUUID:accountUUID:ISOCountryCode:localizedName:localizedShortName:localizedServiceName:handle:]", @"localizedName"}];
    if (shortNameCopy)
    {
LABEL_7:
      if (serviceNameCopy)
      {
LABEL_8:
        objc_storeStrong(&v23->_UUID, d);
        objc_storeStrong(&v23->_accountUUID, obj);
        v24 = [codeCopy copy];
        ISOCountryCode = v23->_ISOCountryCode;
        v23->_ISOCountryCode = v24;

        v26 = [nameCopy copy];
        localizedName = v23->_localizedName;
        v23->_localizedName = v26;

        v28 = [shortNameCopy copy];
        localizedShortName = v23->_localizedShortName;
        v23->_localizedShortName = v28;

        v30 = [serviceNameCopy copy];
        localizedServiceName = v23->_localizedServiceName;
        v23->_localizedServiceName = v30;

        objc_storeStrong(&v23->_handle, handleCopy);
        goto LABEL_9;
      }

LABEL_15:
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[TUSenderIdentity initWithUUID:accountUUID:ISOCountryCode:localizedName:localizedShortName:localizedServiceName:handle:]", @"localizedServiceName"}];
      goto LABEL_8;
    }

LABEL_14:
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[TUSenderIdentity initWithUUID:accountUUID:ISOCountryCode:localizedName:localizedShortName:localizedServiceName:handle:]", @"localizedShortName"}];
    if (serviceNameCopy)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_9:

  return v23;
}

- (TUSenderIdentity)initWithSenderIdentity:(id)identity
{
  identityCopy = identity;
  v8.receiver = self;
  v8.super_class = TUSenderIdentity;
  v5 = [(TUSenderIdentity *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_accountUUID, identityCopy[2]);
    objc_storeStrong(&v6->_handle, identityCopy[3]);
    objc_storeStrong(&v6->_ISOCountryCode, identityCopy[4]);
    objc_storeStrong(&v6->_localizedName, identityCopy[5]);
    objc_storeStrong(&v6->_localizedShortName, identityCopy[6]);
    objc_storeStrong(&v6->_localizedServiceName, identityCopy[7]);
    objc_storeStrong(&v6->_UUID, identityCopy[1]);
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TUSenderIdentity allocWithZone:zone];

  return [(TUSenderIdentity *)v4 initWithSenderIdentity:self];
}

- (TUSenderIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v35.receiver = self;
  v35.super_class = TUSenderIdentity;
  v5 = [(TUSenderIdentity *)&v35 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_accountUUID);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    accountUUID = v5->_accountUUID;
    v5->_accountUUID = v8;

    v10 = objc_opt_class();
    v11 = NSStringFromSelector(sel_handle);
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];
    handle = v5->_handle;
    v5->_handle = v12;

    v14 = objc_opt_class();
    v15 = NSStringFromSelector(sel_ISOCountryCode);
    v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];
    ISOCountryCode = v5->_ISOCountryCode;
    v5->_ISOCountryCode = v16;

    v18 = objc_opt_class();
    v19 = NSStringFromSelector(sel_localizedName);
    v20 = [coderCopy decodeObjectOfClass:v18 forKey:v19];
    localizedName = v5->_localizedName;
    v5->_localizedName = v20;

    v22 = objc_opt_class();
    v23 = NSStringFromSelector(sel_localizedShortName);
    v24 = [coderCopy decodeObjectOfClass:v22 forKey:v23];
    localizedShortName = v5->_localizedShortName;
    v5->_localizedShortName = v24;

    v26 = objc_opt_class();
    v27 = NSStringFromSelector(sel_localizedServiceName);
    v28 = [coderCopy decodeObjectOfClass:v26 forKey:v27];
    localizedServiceName = v5->_localizedServiceName;
    v5->_localizedServiceName = v28;

    v30 = objc_opt_class();
    v31 = NSStringFromSelector(sel_UUID);
    v32 = [coderCopy decodeObjectOfClass:v30 forKey:v31];
    UUID = v5->_UUID;
    v5->_UUID = v32;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uUID = [(TUSenderIdentity *)self UUID];
  v6 = NSStringFromSelector(sel_UUID);
  [coderCopy encodeObject:uUID forKey:v6];

  accountUUID = [(TUSenderIdentity *)self accountUUID];
  v8 = NSStringFromSelector(sel_accountUUID);
  [coderCopy encodeObject:accountUUID forKey:v8];

  handle = [(TUSenderIdentity *)self handle];
  v10 = NSStringFromSelector(sel_handle);
  [coderCopy encodeObject:handle forKey:v10];

  iSOCountryCode = [(TUSenderIdentity *)self ISOCountryCode];
  v12 = NSStringFromSelector(sel_ISOCountryCode);
  [coderCopy encodeObject:iSOCountryCode forKey:v12];

  localizedName = [(TUSenderIdentity *)self localizedName];
  v14 = NSStringFromSelector(sel_localizedName);
  [coderCopy encodeObject:localizedName forKey:v14];

  localizedShortName = [(TUSenderIdentity *)self localizedShortName];
  v16 = NSStringFromSelector(sel_localizedShortName);
  [coderCopy encodeObject:localizedShortName forKey:v16];

  localizedServiceName = [(TUSenderIdentity *)self localizedServiceName];
  v17 = NSStringFromSelector(sel_localizedServiceName);
  [coderCopy encodeObject:localizedServiceName forKey:v17];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_UUID);
  uUID = [(TUSenderIdentity *)self UUID];
  [v3 appendFormat:@"%@=%@", v4, uUID];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector(sel_accountUUID);
  accountUUID = [(TUSenderIdentity *)self accountUUID];
  [v3 appendFormat:@"%@=%@", v6, accountUUID];

  [v3 appendFormat:@", "];
  v8 = NSStringFromSelector(sel_ISOCountryCode);
  iSOCountryCode = [(TUSenderIdentity *)self ISOCountryCode];
  [v3 appendFormat:@"%@=%@", v8, iSOCountryCode];

  [v3 appendFormat:@", "];
  v10 = NSStringFromSelector(sel_localizedName);
  localizedName = [(TUSenderIdentity *)self localizedName];
  [v3 appendFormat:@"%@=%@", v10, localizedName];

  [v3 appendFormat:@", "];
  v12 = NSStringFromSelector(sel_localizedShortName);
  localizedShortName = [(TUSenderIdentity *)self localizedShortName];
  [v3 appendFormat:@"%@=%@", v12, localizedShortName];

  [v3 appendFormat:@", "];
  v14 = NSStringFromSelector(sel_localizedServiceName);
  localizedServiceName = [(TUSenderIdentity *)self localizedServiceName];
  [v3 appendFormat:@"%@=%@", v14, localizedServiceName];

  [v3 appendFormat:@", "];
  v16 = NSStringFromSelector(sel_handle);
  handle = [(TUSenderIdentity *)self handle];
  [v3 appendFormat:@"%@=%@", v16, handle];

  [v3 appendFormat:@">"];
  v18 = [v3 copy];

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUSenderIdentity *)self isEqualToSenderIdentity:equalCopy];

  return v5;
}

- (BOOL)isEqualToSenderIdentity:(id)identity
{
  identityCopy = identity;
  uUID = [(TUSenderIdentity *)self UUID];
  uUID2 = [identityCopy UUID];
  if ([uUID isEqual:uUID2])
  {
    accountUUID = [(TUSenderIdentity *)self accountUUID];
    accountUUID2 = [identityCopy accountUUID];
    if ([accountUUID isEqual:accountUUID2])
    {
      handle = [(TUSenderIdentity *)self handle];
      handle2 = [identityCopy handle];
      if (TUObjectsAreEqualOrNil(handle, handle2))
      {
        iSOCountryCode = [(TUSenderIdentity *)self ISOCountryCode];
        iSOCountryCode2 = [identityCopy ISOCountryCode];
        if ([iSOCountryCode isEqualToString:iSOCountryCode2])
        {
          v22 = iSOCountryCode;
          localizedName = [(TUSenderIdentity *)self localizedName];
          [identityCopy localizedName];
          v21 = v23 = localizedName;
          if ([localizedName isEqualToString:?])
          {
            localizedShortName = [(TUSenderIdentity *)self localizedShortName];
            localizedShortName2 = [identityCopy localizedShortName];
            v20 = localizedShortName;
            if ([localizedShortName isEqualToString:?])
            {
              localizedServiceName = [(TUSenderIdentity *)self localizedServiceName];
              localizedServiceName2 = [identityCopy localizedServiceName];
              v16 = [localizedServiceName isEqualToString:localizedServiceName2];
            }

            else
            {
              v16 = 0;
            }

            iSOCountryCode = v22;
          }

          else
          {
            v16 = 0;
            iSOCountryCode = v22;
          }
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end