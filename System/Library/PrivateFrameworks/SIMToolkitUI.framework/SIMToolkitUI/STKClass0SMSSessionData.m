@interface STKClass0SMSSessionData
- (STKClass0SMSSessionData)initWithBody:(id)a3 address:(id)a4 showsFromAddress:(BOOL)a5;
- (STKClass0SMSSessionData)initWithXPCDictionary:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation STKClass0SMSSessionData

- (STKClass0SMSSessionData)initWithBody:(id)a3 address:(id)a4 showsFromAddress:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = STKClass0SMSSessionData;
  v10 = [(STKClass0SMSSessionData *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    body = v10->_body;
    v10->_body = v11;

    v13 = [v9 copy];
    address = v10->_address;
    v10->_address = v13;

    v10->_showsFromAddress = a5;
  }

  return v10;
}

- (STKClass0SMSSessionData)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v5 = BSDeserializeStringFromXPCDictionaryWithKey();
  v6 = BSDeserializeStringFromXPCDictionaryWithKey();
  v7 = xpc_dictionary_get_BOOL(v4, "_showsFrom");

  v8 = [(STKClass0SMSSessionData *)self initWithBody:v5 address:v6 showsFromAddress:v7];
  return v8;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  body = self->_body;
  xdict = a3;
  BSSerializeStringToXPCDictionaryWithKey();
  address = self->_address;
  BSSerializeStringToXPCDictionaryWithKey();
  xpc_dictionary_set_BOOL(xdict, "_showsFrom", self->_showsFromAddress);
}

@end