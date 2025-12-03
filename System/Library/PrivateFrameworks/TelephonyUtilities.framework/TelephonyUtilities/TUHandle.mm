@interface TUHandle
+ (TUHandle)handleWithDestinationID:(id)d;
+ (TUHandle)handleWithDictionaryRepresentation:(id)representation;
+ (TUHandle)handleWithPerson:(id)person;
+ (TUHandle)handleWithPersonHandle:(id)handle;
+ (id)handleFromMessagingData:(id)data;
+ (id)handlesForCHRecentCall:(id)call validHandlesOnly:(BOOL)only;
+ (id)normalizedEmailAddressHandleForValue:(id)value;
+ (id)normalizedGenericHandleForValue:(id)value;
+ (id)normalizedHandleWithDestinationID:(id)d;
+ (id)normalizedPhoneNumberHandleForValue:(id)value isoCountryCode:(id)code;
+ (id)stringForType:(int64_t)type;
+ (int64_t)handleTypeForCHHandle:(id)handle;
- (BOOL)isCanonicallyEqualToHandle:(id)handle isoCountryCode:(id)code;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHandle:(id)handle;
- (BOOL)isEquivalentToHandle:(id)handle;
- (BOOL)isValidForISOCountryCode:(id)code;
- (BOOL)shouldHideContact;
- (BOOL)shouldHideContactWithLockState:(BOOL)state;
- (NSDictionary)dictionaryRepresentation;
- (NSString)isoCountryCode;
- (TUHandle)init;
- (TUHandle)initWithCoder:(id)coder;
- (TUHandle)initWithDestinationID:(id)d;
- (TUHandle)initWithHandle:(id)handle;
- (TUHandle)initWithType:(int64_t)type value:(id)value;
- (TUHandle)initWithType:(int64_t)type value:(id)value normalizedValue:(id)normalizedValue;
- (TUHandle)initWithType:(int64_t)type value:(id)value siriDisplayName:(id)name;
- (id)canonicalHandleForISOCountryCode:(id)code;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)messagingData;
- (id)personHandle;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUHandle

- (NSString)isoCountryCode
{
  if (!self->_hasSetISOCountryCode)
  {
    self->_hasSetISOCountryCode = 1;
    normalizedValue = [(TUHandle *)self normalizedValue];
    if ([normalizedValue length])
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
  isoCountryCode = [(TUHandle *)self isoCountryCode];
  v4 = [isoCountryCode hash];
  v5 = [(TUHandle *)self type]^ v4;
  value = [(TUHandle *)self value];
  v7 = [value hash];
  normalizedValue = [(TUHandle *)self normalizedValue];
  v9 = v7 ^ [normalizedValue hash];

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
  value = [(TUHandle *)self value];
  v8 = TULoggableStringForHandle(value);
  [v3 appendFormat:@"%@=%@", v6, v8];

  [v3 appendFormat:@", "];
  v9 = NSStringFromSelector(sel_normalizedValue);
  normalizedValue = [(TUHandle *)self normalizedValue];
  v11 = TULoggableStringForHandle(normalizedValue);
  [v3 appendFormat:@"%@=%@", v9, v11];

  if ([(TUHandle *)self type]== 2)
  {
    [v3 appendFormat:@", "];
    v12 = NSStringFromSelector(sel_isoCountryCode);
    isoCountryCode = [(TUHandle *)self isoCountryCode];
    [v3 appendFormat:@"%@=%@", v12, isoCountryCode];
  }

  [v3 appendFormat:@", "];
  v14 = NSStringFromSelector(sel_siriDisplayName);
  siriDisplayName = [(TUHandle *)self siriDisplayName];
  [v3 appendFormat:@"%@=%@", v14, siriDisplayName];

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

  value = [(TUHandle *)self value];
  v7 = NSStringFromSelector(sel_value);
  [v3 setObject:value forKeyedSubscript:v7];

  siriDisplayName = [(TUHandle *)self siriDisplayName];
  v9 = NSStringFromSelector(sel_siriDisplayName);
  [v3 setObject:siriDisplayName forKeyedSubscript:v9];

  v10 = [v3 copy];

  return v10;
}

+ (id)handlesForCHRecentCall:(id)call validHandlesOnly:(BOOL)only
{
  onlyCopy = only;
  v27 = *MEMORY[0x1E69E9840];
  callCopy = call;
  array = [MEMORY[0x1E695DF70] array];
  if (onlyCopy)
  {
    [callCopy validRemoteParticipantHandles];
  }

  else
  {
    [callCopy remoteParticipantHandles];
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
        value = [v14 value];
        if ([value length])
        {
          type = [v14 type];
          if (type == 1)
          {
            v17 = [TUHandle normalizedGenericHandleForValue:value];
            goto LABEL_17;
          }

          if (type != 2)
          {
            if (type != 3)
            {
              goto LABEL_19;
            }

            v17 = [TUHandle normalizedEmailAddressHandleForValue:value];
LABEL_17:
            v19 = v17;
            if (!v17)
            {
              goto LABEL_19;
            }

LABEL_18:
            [array addObject:v19];

            goto LABEL_19;
          }

          isoCountryCode = [callCopy isoCountryCode];
          v19 = [TUHandle normalizedPhoneNumberHandleForValue:value isoCountryCode:isoCountryCode];

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

  return array;
}

+ (int64_t)handleTypeForCHHandle:(id)handle
{
  handleCopy = handle;
  v4 = handleCopy;
  if (handleCopy)
  {
    type = [handleCopy type];
    if ((type - 1) >= 3)
    {
      v6 = 0;
    }

    else
    {
      v6 = type;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (TUHandle)handleWithDestinationID:(id)d
{
  dCopy = d;
  v4 = [[TUHandle alloc] initWithDestinationID:dCopy];

  return v4;
}

+ (id)normalizedHandleWithDestinationID:(id)d
{
  dCopy = d;
  if ([dCopy destinationIdIsTokenURI])
  {
    goto LABEL_2;
  }

  if ([dCopy destinationIdIsEmailAddress])
  {
    v4 = [TUHandle normalizedEmailAddressHandleForValue:dCopy];
  }

  else
  {
    if (![dCopy destinationIdIsPhoneNumber])
    {
LABEL_2:
      v4 = [TUHandle normalizedGenericHandleForValue:dCopy];
      goto LABEL_7;
    }

    v4 = [TUHandle normalizedPhoneNumberHandleForValue:dCopy isoCountryCode:0];
  }

LABEL_7:
  v5 = v4;

  return v5;
}

+ (TUHandle)handleWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = NSStringFromSelector(sel_value);
  v5 = [representationCopy objectForKeyedSubscript:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = NSStringFromSelector(sel_type);
    v8 = [representationCopy objectForKeyedSubscript:v7];

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
    v12 = [representationCopy objectForKeyedSubscript:v11];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      stringValue = [v12 stringValue];
      [(TUHandle *)v10 setSiriDisplayName:stringValue];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (TUHandle)initWithDestinationID:(id)d
{
  dCopy = d;
  if ([dCopy destinationIdIsTokenURI])
  {
    v5 = 1;
  }

  else if ([dCopy destinationIdIsEmailAddress])
  {
    v5 = 3;
  }

  else if ([dCopy destinationIdIsPhoneNumber])
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = [(TUHandle *)self initWithType:v5 value:dCopy];

  return v6;
}

- (TUHandle)initWithHandle:(id)handle
{
  handleCopy = handle;
  type = [handleCopy type];
  value = [handleCopy value];
  normalizedValue = [handleCopy normalizedValue];
  v8 = [(TUHandle *)self initWithType:type value:value normalizedValue:normalizedValue];

  if (v8)
  {
    siriDisplayName = [handleCopy siriDisplayName];
    v10 = [siriDisplayName copy];
    siriDisplayName = v8->_siriDisplayName;
    v8->_siriDisplayName = v10;
  }

  return v8;
}

- (TUHandle)initWithType:(int64_t)type value:(id)value
{
  valueCopy = value;
  v11.receiver = self;
  v11.super_class = TUHandle;
  v7 = [(TUHandle *)&v11 init];
  if (v7)
  {
    if (!valueCopy)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:{@"%s: parameter '%@' cannot be nil", "-[TUHandle initWithType:value:]", @"value"}];
    }

    v7->_hasSetISOCountryCode = type != 2;
    v7->_type = type;
    v8 = [valueCopy copy];
    value = v7->_value;
    v7->_value = v8;
  }

  return v7;
}

- (TUHandle)initWithType:(int64_t)type value:(id)value siriDisplayName:(id)name
{
  nameCopy = name;
  v9 = [(TUHandle *)self initWithType:type value:value];
  if (v9)
  {
    v10 = [nameCopy copy];
    siriDisplayName = v9->_siriDisplayName;
    v9->_siriDisplayName = v10;
  }

  return v9;
}

- (TUHandle)initWithType:(int64_t)type value:(id)value normalizedValue:(id)normalizedValue
{
  normalizedValueCopy = normalizedValue;
  v9 = [(TUHandle *)self initWithType:type value:value];
  if (v9)
  {
    v10 = [normalizedValueCopy copy];
    normalizedValue = v9->_normalizedValue;
    v9->_normalizedValue = v10;
  }

  return v9;
}

- (TUHandle)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"TUHandle.m" lineNumber:153 description:{@"%s is not available. Use a designated initializer instead.", "-[TUHandle init]"}];

  return 0;
}

+ (id)stringForType:(int64_t)type
{
  if ((type - 1) >= 3)
  {
    type = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown(%ld)", type];
  }

  else
  {
    type = off_1E7427038[type - 1];
  }

  return type;
}

- (id)personHandle
{
  type = [(TUHandle *)self type];
  if (type == 3)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2 * (type == 2);
  }

  v5 = objc_alloc(CUTWeakLinkClass());
  value = [(TUHandle *)self value];
  v7 = [v5 initWithValue:value type:v4];

  return v7;
}

+ (TUHandle)handleWithPersonHandle:(id)handle
{
  handleCopy = handle;
  value = [handleCopy value];
  v5 = [value length];

  if (v5)
  {
    type = [handleCopy type];
    if (type)
    {
      v7 = 1;
      if (type == 1)
      {
        v7 = 3;
      }

      if (type == 2)
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
      value2 = [handleCopy value];
      _appearsToBePhoneNumber = [value2 _appearsToBePhoneNumber];

      if (_appearsToBePhoneNumber)
      {
        v8 = 2;
      }

      else
      {
        value3 = [handleCopy value];
        _appearsToBeEmail = [value3 _appearsToBeEmail];

        if (_appearsToBeEmail)
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
    value4 = [handleCopy value];
    v11 = [(TUHandle *)v9 initWithType:v8 value:value4];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (TUHandle)handleWithPerson:(id)person
{
  personCopy = person;
  personHandle = [personCopy personHandle];
  v5 = [TUHandle handleWithPersonHandle:personHandle];

  if (v5)
  {
    displayName = [personCopy displayName];
    v7 = [displayName copy];
    [v5 setSiriDisplayName:v7];
  }

  return v5;
}

- (BOOL)shouldHideContact
{
  v3 = _MKBGetDeviceLockState() == 1 || _MKBGetDeviceLockState() == 2;

  return [(TUHandle *)self shouldHideContactWithLockState:v3];
}

- (BOOL)shouldHideContactWithLockState:(BOOL)state
{
  if (self->_siriDisplayName)
  {
    v3 = !state;
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

- (BOOL)isValidForISOCountryCode:(id)code
{
  codeCopy = code;
  value = [(TUHandle *)self value];
  v6 = [value length];

  if (!v6)
  {
    goto LABEL_6;
  }

  type = [(TUHandle *)self type];
  if (type == 1 || type == 3)
  {
    valid = 1;
    goto LABEL_8;
  }

  if (type == 2)
  {
    value2 = [(TUHandle *)self value];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithHandle:self];
}

- (void)encodeWithCoder:(id)coder
{
  isoCountryCode = self->_isoCountryCode;
  coderCopy = coder;
  v6 = NSStringFromSelector(sel_isoCountryCode);
  [coderCopy encodeObject:isoCountryCode forKey:v6];

  type = self->_type;
  v8 = NSStringFromSelector(sel_type);
  [coderCopy encodeInteger:type forKey:v8];

  value = self->_value;
  v10 = NSStringFromSelector(sel_value);
  [coderCopy encodeObject:value forKey:v10];

  normalizedValue = self->_normalizedValue;
  v12 = NSStringFromSelector(sel_normalizedValue);
  [coderCopy encodeObject:normalizedValue forKey:v12];

  siriDisplayName = self->_siriDisplayName;
  v14 = NSStringFromSelector(sel_siriDisplayName);
  [coderCopy encodeObject:siriDisplayName forKey:v14];
}

- (TUHandle)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24.receiver = self;
  v24.super_class = TUHandle;
  v5 = [(TUHandle *)&v24 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_isoCountryCode);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    isoCountryCode = v5->_isoCountryCode;
    v5->_isoCountryCode = v8;

    v10 = NSStringFromSelector(sel_type);
    v5->_type = [coderCopy decodeIntegerForKey:v10];

    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_value);
    v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];
    value = v5->_value;
    v5->_value = v13;

    v15 = objc_opt_class();
    v16 = NSStringFromSelector(sel_normalizedValue);
    v17 = [coderCopy decodeObjectOfClass:v15 forKey:v16];
    normalizedValue = v5->_normalizedValue;
    v5->_normalizedValue = v17;

    v19 = objc_opt_class();
    v20 = NSStringFromSelector(sel_siriDisplayName);
    v21 = [coderCopy decodeObjectOfClass:v19 forKey:v20];
    siriDisplayName = v5->_siriDisplayName;
    v5->_siriDisplayName = v21;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUHandle *)self isEqualToHandle:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToHandle:(id)handle
{
  handleCopy = handle;
  type = [(TUHandle *)self type];
  if (type == [handleCopy type])
  {
    isoCountryCode = [(TUHandle *)self isoCountryCode];
    isoCountryCode2 = [handleCopy isoCountryCode];
    if (TUStringsAreEqualOrNil(isoCountryCode, isoCountryCode2))
    {
      value = [(TUHandle *)self value];
      value2 = [handleCopy value];
      if (TUStringsAreEqualOrNil(value, value2))
      {
        normalizedValue = [(TUHandle *)self normalizedValue];
        normalizedValue2 = [handleCopy normalizedValue];
        v12 = TUStringsAreEqualOrNil(normalizedValue, normalizedValue2);
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

- (BOOL)isEquivalentToHandle:(id)handle
{
  handleCopy = handle;
  type = [(TUHandle *)self type];
  if (type == [handleCopy type])
  {
    normalizedValue = [(TUHandle *)self normalizedValue];
    if ([normalizedValue length])
    {
      normalizedValue2 = [handleCopy normalizedValue];
      if ([normalizedValue2 length])
      {
        normalizedValue3 = [(TUHandle *)self normalizedValue];
        normalizedValue4 = [handleCopy normalizedValue];
        v10 = [normalizedValue3 isEqualToString:normalizedValue4];
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

- (id)canonicalHandleForISOCountryCode:(id)code
{
  codeCopy = code;
  type = [(TUHandle *)self type];
  switch(type)
  {
    case 3:
      goto LABEL_4;
    case 2:
      value = [(TUHandle *)self value];
      lowercaseString = [codeCopy lowercaseString];
      v9 = [TUPhoneNumber phoneNumberWithDigits:value countryCode:lowercaseString];

      if (v9)
      {
        unformattedInternationalRepresentation = [v9 unformattedInternationalRepresentation];
        v11 = unformattedInternationalRepresentation;
        if (unformattedInternationalRepresentation)
        {
          digits = unformattedInternationalRepresentation;
        }

        else
        {
          digits = [v9 digits];
        }

        value2 = digits;
      }

      else
      {
        value2 = [(TUHandle *)self value];
      }

      break;
    case 1:
LABEL_4:
      value2 = [(TUHandle *)self value];
      break;
    default:
      value2 = 0;
      break;
  }

  v13 = [[TUHandle alloc] initWithType:[(TUHandle *)self type] value:value2];

  return v13;
}

- (BOOL)isCanonicallyEqualToHandle:(id)handle isoCountryCode:(id)code
{
  codeCopy = code;
  handleCopy = handle;
  v8 = [(TUHandle *)self canonicalHandleForISOCountryCode:codeCopy];
  v9 = [handleCopy canonicalHandleForISOCountryCode:codeCopy];

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
  data = [v2 data];

  return data;
}

+ (id)handleFromMessagingData:(id)data
{
  dataCopy = data;
  v4 = [[CSDMessagingHandle alloc] initWithData:dataCopy];

  tuHandle = [(CSDMessagingHandle *)v4 tuHandle];

  return tuHandle;
}

+ (id)normalizedEmailAddressHandleForValue:(id)value
{
  valueCopy = value;
  if ([valueCopy length])
  {
    v4 = [TUHandle alloc];
    lowercaseString = [valueCopy lowercaseString];
    v6 = [(TUHandle *)v4 initWithType:3 value:valueCopy normalizedValue:lowercaseString];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)normalizedGenericHandleForValue:(id)value
{
  valueCopy = value;
  if ([valueCopy length])
  {
    normalizedTokenURI = [valueCopy normalizedTokenURI];
    v5 = [[TUHandle alloc] initWithType:1 value:valueCopy normalizedValue:normalizedTokenURI];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)normalizedPhoneNumberHandleForValue:(id)value isoCountryCode:(id)code
{
  valueCopy = value;
  codeCopy = code;
  if ([valueCopy length])
  {
    v7 = codeCopy;
    if (![v7 length])
    {
      v8 = PNCopyBestGuessCountryCodeForNumber();

      v7 = v8;
    }

    if ([v7 length])
    {
      v9 = TUPhoneNumberNormalizedPhoneNumberString(valueCopy, v7);
    }

    else
    {
      v9 = 0;
    }

    v10 = [[TUHandle alloc] initWithType:2 value:valueCopy normalizedValue:v9];
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