@interface STKCallSetupSessionData
- (STKCallSetupSessionData)initWithText:(id)a3 simLabel:(id)a4 phoneNumber:(id)a5;
- (STKCallSetupSessionData)initWithXPCDictionary:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation STKCallSetupSessionData

- (STKCallSetupSessionData)initWithText:(id)a3 simLabel:(id)a4 phoneNumber:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = STKCallSetupSessionData;
  v10 = [(STKTextSessionData *)&v13 initWithText:a3 simLabel:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_phoneNumber, a5);
  }

  return v11;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = STKCallSetupSessionData;
  v4 = a3;
  [(STKTextSessionData *)&v6 encodeWithXPCDictionary:v4];
  phoneNumber = self->_phoneNumber;
  BSSerializeStringToXPCDictionaryWithKey();
  xpc_dictionary_set_BOOL(v4, "_callPriority", self->_isHighPriority);
}

- (STKCallSetupSessionData)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = STKCallSetupSessionData;
  v5 = [(STKTextSessionData *)&v10 initWithXPCDictionary:v4];
  if (v5 && (v5->_isHighPriority = xpc_dictionary_get_BOOL(v4, "_callPriority"), BSDeserializeStringFromXPCDictionaryWithKey(), v6 = objc_claimAutoreleasedReturnValue(), phoneNumber = v5->_phoneNumber, v5->_phoneNumber = v6, phoneNumber, !v5->_phoneNumber))
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