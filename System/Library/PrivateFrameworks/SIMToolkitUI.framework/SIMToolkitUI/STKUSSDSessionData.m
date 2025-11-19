@interface STKUSSDSessionData
- (STKUSSDSessionData)initWithText:(id)a3 allowsResponse:(BOOL)a4;
- (STKUSSDSessionData)initWithXPCDictionary:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation STKUSSDSessionData

- (STKUSSDSessionData)initWithText:(id)a3 allowsResponse:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = STKUSSDSessionData;
  v7 = [(STKUSSDSessionData *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    text = v7->_text;
    v7->_text = v8;

    v7->_allowsResponse = a4;
  }

  return v7;
}

- (STKUSSDSessionData)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v5 = BSDeserializeStringFromXPCDictionaryWithKey();
  v6 = xpc_dictionary_get_BOOL(v4, "_allowsResponse");

  v7 = [(STKUSSDSessionData *)self initWithText:v5 allowsResponse:v6];
  return v7;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  text = self->_text;
  xdict = a3;
  BSSerializeStringToXPCDictionaryWithKey();
  xpc_dictionary_set_BOOL(xdict, "_allowsResponse", self->_allowsResponse);
}

@end