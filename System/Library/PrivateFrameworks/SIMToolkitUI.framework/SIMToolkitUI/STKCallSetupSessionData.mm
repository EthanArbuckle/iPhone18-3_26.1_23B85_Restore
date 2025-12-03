@interface STKCallSetupSessionData
- (STKCallSetupSessionData)initWithText:(id)text simLabel:(id)label phoneNumber:(id)number;
- (STKCallSetupSessionData)initWithXPCDictionary:(id)dictionary;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation STKCallSetupSessionData

- (STKCallSetupSessionData)initWithText:(id)text simLabel:(id)label phoneNumber:(id)number
{
  numberCopy = number;
  v13.receiver = self;
  v13.super_class = STKCallSetupSessionData;
  v10 = [(STKTextSessionData *)&v13 initWithText:text simLabel:label];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_phoneNumber, number);
  }

  return v11;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = STKCallSetupSessionData;
  dictionaryCopy = dictionary;
  [(STKTextSessionData *)&v6 encodeWithXPCDictionary:dictionaryCopy];
  phoneNumber = self->_phoneNumber;
  BSSerializeStringToXPCDictionaryWithKey();
  xpc_dictionary_set_BOOL(dictionaryCopy, "_callPriority", self->_isHighPriority);
}

- (STKCallSetupSessionData)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = STKCallSetupSessionData;
  v5 = [(STKTextSessionData *)&v10 initWithXPCDictionary:dictionaryCopy];
  if (v5 && (v5->_isHighPriority = xpc_dictionary_get_BOOL(dictionaryCopy, "_callPriority"), BSDeserializeStringFromXPCDictionaryWithKey(), v6 = objc_claimAutoreleasedReturnValue(), phoneNumber = v5->_phoneNumber, v5->_phoneNumber = v6, phoneNumber, !v5->_phoneNumber))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

@end