@interface TUHandle
+ (TUHandle)handleWithDestinationID:(id)a3;
+ (TUHandle)handleWithDictionaryRepresentation:(id)a3;
+ (TUHandle)handleWithPerson:(id)a3;
+ (TUHandle)handleWithPersonHandle:(id)a3;
+ (id)handleFromMessagingData:(id)a3;
+ (id)handlesForCHRecentCall:(id)a3 validHandlesOnly:(BOOL)a4;
+ (id)normalizedEmailAddressHandleForValue:(id)a3;
+ (id)normalizedGenericHandleForValue:(id)a3;
+ (id)normalizedHandleWithDestinationID:(id)a3;
+ (id)normalizedPhoneNumberHandleForValue:(id)a3 isoCountryCode:(id)a4;
+ (id)stringForType:(int64_t)a3;
+ (int64_t)handleTypeForCHHandle:(id)a3;
- (BOOL)isCanonicallyEqualToHandle:(id)a3 isoCountryCode:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToHandle:(id)a3;
- (BOOL)isEquivalentToHandle:(id)a3;
- (BOOL)isValidForISOCountryCode:(id)a3;
- (BOOL)shouldHideContact;
- (BOOL)shouldHideContactWithLockState:(BOOL)a3;
- (NSDictionary)dictionaryRepresentation;
- (NSString)isoCountryCode;
- (TUHandle)init;
- (TUHandle)initWithCoder:(id)a3;
- (TUHandle)initWithDestinationID:(id)a3;
- (TUHandle)initWithHandle:(id)a3;
- (TUHandle)initWithType:(int64_t)a3 value:(id)a4;
- (TUHandle)initWithType:(int64_t)a3 value:(id)a4 normalizedValue:(id)a5;
- (TUHandle)initWithType:(int64_t)a3 value:(id)a4 siriDisplayName:(id)a5;
- (id)canonicalHandleForISOCountryCode:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)messagingData;
- (id)personHandle;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUHandle

- (NSString)isoCountryCode
{
  if (!self->_hasSetISOCountryCode)
  {
    self->_hasSetISOCountryCode = 1;
    v3 = [(TUHandle *)self normalizedValue];
    if ([v3 length])
    {
      v4 = PNCopyBestGuessCountryCodeForNumber();
      isoCountryCode = self->_isoCountryCode;
      self->_isoCountryCode = v4;
    }
  }

  v6 = self->_isoCountryCode;

  return v6;
}

- (unint64_t)hash
{
  v3 = [(TUHandle *)self isoCountryCode];
  v4 = [v3 hash];
  v5 = [(TUHandle *)self type]^ v4;
  v6 = [(TUHandle *)self value];
  v7 = [v6 hash];
  v8 = [(TUHandle *)self normalizedValue];
  v9 = v7 ^ [v8 hash];

  return v5 ^ v9;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@ %p ", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_type);
  v5 = [objc_opt_class() stringForType:{-[TUHandle type](self, "type")}];
  [v3 appendFormat:@"%@=%@", v4, v5];

  [v3 appendFormat:@", "];
  v6 = NSStringFromSelector(sel_value);
  v7 = [(TUHandle *)self value];
  v8 = TULoggableStringForHandle(v7);
  [v3 appendFormat:@"%@=%@", v6, v8];

  [v3 appendFormat:@", "];
  v9 = NSStringFromSelector(sel_normalizedValue);
  v10 = [(TUHandle *)self normalizedValue];
  v11 = TULoggableStringForHandle(v10);
  [v3 appendFormat:@"%@=%@", v9, v11];

  if ([(TUHandle *)self type]== 2)
  {
    [v3 appendFormat:@", "];
    v12 = NSStringFromSelector(sel_isoCountryCode);
    v13 = [(TUHandle *)self isoCountryCode];
    [v3 appendFormat:@"%@=%@", v12, v13];
  }

  [v3 appendFormat:@", "];
  v14 = NSStringFromSelector(sel_siriDisplayName);
  v15 = [(TUHandle *)self siriDisplayName];
  [v3 appendFormat:@"%@=%@", v14, v15];

  [v3 appendFormat:@">"];
  v16 = [v3 copy];

  return v16;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[TUHandle type](self, "type")}];
  v5 = NSStringFromSelector(sel_type);
  [v3 setObject:v4 forKeyedSubscript:v5];

  v6 = [(TUHandle *)self value];
  v7 = NSStringFromSelector(sel_value);
  [v3 setObject:v6 forKeyedSubscript:v7];

  v8 = [(TUHandle *)self siriDisplayName];
  v9 = NSStringFromSelector(sel_siriDisplayName);
  [v3 setObject:v8 forKeyedSubscript:v9];

  v10 = [v3 copy];

  return v10;
}

+ (id)handlesForCHRecentCall:(id)a3 validHandlesOnly:(BOOL)a4
{
  v4 = a4;
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DF70] array];
  if (v4)
  {
    [v5 validRemoteParticipantHandles];
  }

  else
  {
    [v5 remoteParticipantHandles];
  }
  v7 = ;
  v8 = [v7 copy];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [v14 value];
        if ([v15 length])
        {
          v16 = [v14 type];
          if (v16 == 1)
          {
            v17 = [TUHandle normalizedGenericHandleForValue:v15];
            goto LABEL_17;
          }

          if (v16 != 2)
          {
            if (v16 != 3)
            {
              goto LABEL_19;
            }

            v17 = [TUHandle normalizedEmailAddressHandleForValue:v15];
LABEL_17:
            v19 = v17;
            if (!v17)
            {
              goto LABEL_19;
            }

LABEL_18:
            [v6 addObject:v19];

            goto LABEL_19;
          }

          v18 = [v5 isoCountryCode];
          v19 = [TUHandle normalizedPhoneNumberHandleForValue:v15 isoCountryCode:v18];

          if (v19)
          {
            goto LABEL_18;
          }
        }

LABEL_19:
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v20 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (int64_t)handleTypeForCHHandle:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 type];
    if ((v5 - 1) >= 3)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (TUHandle)handleWithDestinationID:(id)a3
{
  v3 = a3;
  v4 = [[TUHandle alloc] initWithDestinationID:v3];

  return v4;
}

+ (id)normalizedHandleWithDestinationID:(id)a3
{
  v3 = a3;
  if ([v3 destinationIdIsTokenURI])
  {
    goto LABEL_2;
  }

  if ([v3 destinationIdIsEmailAddress])
  {
    v4 = [TUHandle normalizedEmailAddressHandleForValue:v3];
  }

  else
  {
    if (![v3 destinationIdIsPhoneNumber])
    {
LABEL_2:
      v4 = [TUHandle normalizedGenericHandleForValue:v3];
      goto LABEL_7;
    }

    v4 = [TUHandle normalizedPhoneNumberHandleForValue:v3 isoCountryCode:0];
  }

LABEL_7:
  v5 = v4;

  return v5;
}

+ (TUHandle)handleWithDictionaryRepresentation:(id)a3
{
  v3 = a3;
  v4 = NSStringFromSelector(sel_value);
  v5 = [v3 objectForKeyedSubscript:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = NSStringFromSelector(sel_type);
    v8 = [v3 objectForKeyedSubscript:v7];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v9 = [v8 integerValue], (v9 - 1) <= 2))
    {
      v10 = [[TUHandle alloc] initWithType:v9 value:v6];
    }

    else
    {
      v10 = 0;
    }

    v11 = NSStringFromSelector(sel_siriDisplayName);
    v12 = [v3 objectForKeyedSubscript:v11];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 stringValue];
      [(TUHandle *)v10 setSiriDisplayName:v13];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (TUHandle)initWithDestinationID:(id)a3
{
  v4 = a3;
  if ([v4 destinationIdIsTokenURI])
  {
    v5 = 1;
  }

  else if ([v4 destinationIdIsEmailAddress])
  {
    v5 = 3;
  }

  else if ([v4 destinationIdIsPhoneNumber])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = [(TUHandle *)self initWithType:v5 value:v4];

  return v6;
}

- (TUHandle)initWithHandle:(id)a3
{
  v4 = a3;
  v5 = [v4 type];
  v6 = [v4 value];
  v7 = [v4 normalizedValue];
  v8 = [(TUHandle *)self initWithType:v5 value:v6 normalizedValue:v7];

  if (v8)
  {
    v9 = [v4 siriDisplayName];
    v10 = [v9 copy];
    siriDisplayName = v8->_siriDisplayName;
    v8->_siriDisplayName = v10;
  }

  return v8;
}

- (TUHandle)initWithType:(int64_t)a3 value:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = TUHandle;
  v7 = [(TUHandle *)&v11 init];
  if (v7)
  {
    if (!v6)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[TUHandle initWithType:value:]", @"value"}];
    }

    v7->_hasSetISOCountryCode = a3 != 2;
    v7->_type = a3;
    v8 = [v6 copy];
    value = v7->_value;
    v7->_value = v8;
  }

  return v7;
}

- (TUHandle)initWithType:(int64_t)a3 value:(id)a4 siriDisplayName:(id)a5
{
  v8 = a5;
  v9 = [(TUHandle *)self initWithType:a3 value:a4];
  if (v9)
  {
    v10 = [v8 copy];
    siriDisplayName = v9->_siriDisplayName;
    v9->_siriDisplayName = v10;
  }

  return v9;
}

- (TUHandle)initWithType:(int64_t)a3 value:(id)a4 normalizedValue:(id)a5
{
  v8 = a5;
  v9 = [(TUHandle *)self initWithType:a3 value:a4];
  if (v9)
  {
    v10 = [v8 copy];
    normalizedValue = v9->_normalizedValue;
    v9->_normalizedValue = v10;
  }

  return v9;
}

- (TUHandle)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"TUHandle.m" lineNumber:153 description:{@"%s is not available. Use a designated initializer instead.", "-[TUHandle init]"}];

  return 0;
}

+ (id)stringForType:(int64_t)a3
{
  if ((a3 - 1) >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown(%ld)", a3];
  }

  else
  {
    v4 = off_1E7427038[a3 - 1];
  }

  return v4;
}

- (id)personHandle
{
  v3 = [(TUHandle *)self type];
  if (v3 == 3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2 * (v3 == 2);
  }

  v5 = objc_alloc(CUTWeakLinkClass());
  v6 = [(TUHandle *)self value];
  v7 = [v5 initWithValue:v6 type:v4];

  return v7;
}

+ (TUHandle)handleWithPersonHandle:(id)a3
{
  v3 = a3;
  v4 = [v3 value];
  v5 = [v4 length];

  if (v5)
  {
    v6 = [v3 type];
    if (v6)
    {
      v7 = 1;
      if (v6 == 1)
      {
        v7 = 3;
      }

      if (v6 == 2)
      {
        v8 = 2;
      }

      else
      {
        v8 = v7;
      }
    }

    else
    {
      v13 = [v3 value];
      v14 = [v13 _appearsToBePhoneNumber];

      if (v14)
      {
        v8 = 2;
      }

      else
      {
        v15 = [v3 value];
        v16 = [v15 _appearsToBeEmail];

        if (v16)
        {
          v8 = 3;
        }

        else
        {
          v8 = 1;
        }
      }
    }

    v9 = [TUHandle alloc];
    v10 = [v3 value];
    v11 = [(TUHandle *)v9 initWithType:v8 value:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (TUHandle)handleWithPerson:(id)a3
{
  v3 = a3;
  v4 = [v3 personHandle];
  v5 = [TUHandle handleWithPersonHandle:v4];

  if (v5)
  {
    v6 = [v3 displayName];
    v7 = [v6 copy];
    [v5 setSiriDisplayName:v7];
  }

  return v5;
}

- (BOOL)shouldHideContact
{
  v3 = _MKBGetDeviceLockState() == 1 || _MKBGetDeviceLockState() == 2;

  return [(TUHandle *)self shouldHideContactWithLockState:v3];
}

- (BOOL)shouldHideContactWithLockState:(BOOL)a3
{
  if (self->_siriDisplayName)
  {
    v3 = !a3;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  v10 = 0;
  v5 = [MEMORY[0x1E696AB60] dataDetectorWithTypes:2080 error:&v10];
  v6 = v10;
  v7 = [v5 numberOfMatchesInString:self->_siriDisplayName options:0 range:{0, -[NSString length](self->_siriDisplayName, "length")}];

  v8 = v7 != 0;
  return v8;
}

- (BOOL)isValidForISOCountryCode:(id)a3
{
  v4 = a3;
  v5 = [(TUHandle *)self value];
  v6 = [v5 length];

  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = [(TUHandle *)self type];
  if (v7 == 1 || v7 == 3)
  {
    valid = 1;
    goto LABEL_8;
  }

  if (v7 == 2)
  {
    v8 = [(TUHandle *)self value];
    valid = PNIsValidPhoneNumberForCountry();
  }

  else
  {
LABEL_6:
    valid = 0;
  }

LABEL_8:

  return valid;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithHandle:self];
}

- (void)encodeWithCoder:(id)a3
{
  isoCountryCode = self->_isoCountryCode;
  v5 = a3;
  v6 = NSStringFromSelector(sel_isoCountryCode);
  [v5 encodeObject:isoCountryCode forKey:v6];

  type = self->_type;
  v8 = NSStringFromSelector(sel_type);
  [v5 encodeInteger:type forKey:v8];

  value = self->_value;
  v10 = NSStringFromSelector(sel_value);
  [v5 encodeObject:value forKey:v10];

  normalizedValue = self->_normalizedValue;
  v12 = NSStringFromSelector(sel_normalizedValue);
  [v5 encodeObject:normalizedValue forKey:v12];

  siriDisplayName = self->_siriDisplayName;
  v14 = NSStringFromSelector(sel_siriDisplayName);
  [v5 encodeObject:siriDisplayName forKey:v14];
}

- (TUHandle)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = TUHandle;
  v5 = [(TUHandle *)&v24 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_isoCountryCode);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    isoCountryCode = v5->_isoCountryCode;
    v5->_isoCountryCode = v8;

    v10 = NSStringFromSelector(sel_type);
    v5->_type = [v4 decodeIntegerForKey:v10];

    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_value);
    v13 = [v4 decodeObjectOfClass:v11 forKey:v12];
    value = v5->_value;
    v5->_value = v13;

    v15 = objc_opt_class();
    v16 = NSStringFromSelector(sel_normalizedValue);
    v17 = [v4 decodeObjectOfClass:v15 forKey:v16];
    normalizedValue = v5->_normalizedValue;
    v5->_normalizedValue = v17;

    v19 = objc_opt_class();
    v20 = NSStringFromSelector(sel_siriDisplayName);
    v21 = [v4 decodeObjectOfClass:v19 forKey:v20];
    siriDisplayName = v5->_siriDisplayName;
    v5->_siriDisplayName = v21;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUHandle *)self isEqualToHandle:v4];
  }

  return v5;
}

- (BOOL)isEqualToHandle:(id)a3
{
  v4 = a3;
  v5 = [(TUHandle *)self type];
  if (v5 == [v4 type])
  {
    v6 = [(TUHandle *)self isoCountryCode];
    v7 = [v4 isoCountryCode];
    if (TUStringsAreEqualOrNil(v6, v7))
    {
      v8 = [(TUHandle *)self value];
      v9 = [v4 value];
      if (TUStringsAreEqualOrNil(v8, v9))
      {
        v10 = [(TUHandle *)self normalizedValue];
        v11 = [v4 normalizedValue];
        v12 = TUStringsAreEqualOrNil(v10, v11);
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isEquivalentToHandle:(id)a3
{
  v4 = a3;
  v5 = [(TUHandle *)self type];
  if (v5 == [v4 type])
  {
    v6 = [(TUHandle *)self normalizedValue];
    if ([v6 length])
    {
      v7 = [v4 normalizedValue];
      if ([v7 length])
      {
        v8 = [(TUHandle *)self normalizedValue];
        v9 = [v4 normalizedValue];
        v10 = [v8 isEqualToString:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)canonicalHandleForISOCountryCode:(id)a3
{
  v4 = a3;
  v5 = [(TUHandle *)self type];
  switch(v5)
  {
    case 3:
      goto LABEL_4;
    case 2:
      v7 = [(TUHandle *)self value];
      v8 = [v4 lowercaseString];
      v9 = [TUPhoneNumber phoneNumberWithDigits:v7 countryCode:v8];

      if (v9)
      {
        v10 = [v9 unformattedInternationalRepresentation];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = [v9 digits];
        }

        v6 = v12;
      }

      else
      {
        v6 = [(TUHandle *)self value];
      }

      break;
    case 1:
LABEL_4:
      v6 = [(TUHandle *)self value];
      break;
    default:
      v6 = 0;
      break;
  }

  v13 = [[TUHandle alloc] initWithType:[(TUHandle *)self type] value:v6];

  return v13;
}

- (BOOL)isCanonicallyEqualToHandle:(id)a3 isoCountryCode:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TUHandle *)self canonicalHandleForISOCountryCode:v6];
  v9 = [v7 canonicalHandleForISOCountryCode:v6];

  v10 = 0;
  if (v8 && v9)
  {
    v10 = [v8 isEqualToHandle:v9];
  }

  return v10;
}

- (id)messagingData
{
  v2 = [CSDMessagingHandle handleWithTUHandle:self];
  v3 = [v2 data];

  return v3;
}

+ (id)handleFromMessagingData:(id)a3
{
  v3 = a3;
  v4 = [[CSDMessagingHandle alloc] initWithData:v3];

  v5 = [(CSDMessagingHandle *)v4 tuHandle];

  return v5;
}

+ (id)normalizedEmailAddressHandleForValue:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [TUHandle alloc];
    v5 = [v3 lowercaseString];
    v6 = [(TUHandle *)v4 initWithType:3 value:v3 normalizedValue:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)normalizedGenericHandleForValue:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [v3 normalizedTokenURI];
    v5 = [[TUHandle alloc] initWithType:1 value:v3 normalizedValue:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)normalizedPhoneNumberHandleForValue:(id)a3 isoCountryCode:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    v7 = v6;
    if (![v7 length])
    {
      v8 = PNCopyBestGuessCountryCodeForNumber();

      v7 = v8;
    }

    if ([v7 length])
    {
      v9 = TUPhoneNumberNormalizedPhoneNumberString(v5, v7);
    }

    else
    {
      v9 = 0;
    }

    v10 = [[TUHandle alloc] initWithType:2 value:v5 normalizedValue:v9];
    [(TUHandle *)v10 setHasSetISOCountryCode:1];
    [(TUHandle *)v10 setIsoCountryCode:v7];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end