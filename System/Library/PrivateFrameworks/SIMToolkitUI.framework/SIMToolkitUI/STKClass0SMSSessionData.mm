@interface STKClass0SMSSessionData
- (STKClass0SMSSessionData)initWithBody:(id)body address:(id)address showsFromAddress:(BOOL)fromAddress;
- (STKClass0SMSSessionData)initWithXPCDictionary:(id)dictionary;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation STKClass0SMSSessionData

- (STKClass0SMSSessionData)initWithBody:(id)body address:(id)address showsFromAddress:(BOOL)fromAddress
{
  bodyCopy = body;
  addressCopy = address;
  v16.receiver = self;
  v16.super_class = STKClass0SMSSessionData;
  v10 = [(STKClass0SMSSessionData *)&v16 init];
  if (v10)
  {
    v11 = [bodyCopy copy];
    body = v10->_body;
    v10->_body = v11;

    v13 = [addressCopy copy];
    address = v10->_address;
    v10->_address = v13;

    v10->_showsFromAddress = fromAddress;
  }

  return v10;
}

- (STKClass0SMSSessionData)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = BSDeserializeStringFromXPCDictionaryWithKey();
  v6 = BSDeserializeStringFromXPCDictionaryWithKey();
  v7 = xpc_dictionary_get_BOOL(dictionaryCopy, "_showsFrom");

  v8 = [(STKClass0SMSSessionData *)self initWithBody:v5 address:v6 showsFromAddress:v7];
  return v8;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  body = self->_body;
  xdict = dictionary;
  BSSerializeStringToXPCDictionaryWithKey();
  address = self->_address;
  BSSerializeStringToXPCDictionaryWithKey();
  xpc_dictionary_set_BOOL(xdict, "_showsFrom", self->_showsFromAddress);
}

@end