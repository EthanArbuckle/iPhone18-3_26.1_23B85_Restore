@interface STKUSSDSessionData
- (STKUSSDSessionData)initWithText:(id)text allowsResponse:(BOOL)response;
- (STKUSSDSessionData)initWithXPCDictionary:(id)dictionary;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation STKUSSDSessionData

- (STKUSSDSessionData)initWithText:(id)text allowsResponse:(BOOL)response
{
  textCopy = text;
  v11.receiver = self;
  v11.super_class = STKUSSDSessionData;
  v7 = [(STKUSSDSessionData *)&v11 init];
  if (v7)
  {
    v8 = [textCopy copy];
    text = v7->_text;
    v7->_text = v8;

    v7->_allowsResponse = response;
  }

  return v7;
}

- (STKUSSDSessionData)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = BSDeserializeStringFromXPCDictionaryWithKey();
  v6 = xpc_dictionary_get_BOOL(dictionaryCopy, "_allowsResponse");

  v7 = [(STKUSSDSessionData *)self initWithText:v5 allowsResponse:v6];
  return v7;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  text = self->_text;
  xdict = dictionary;
  BSSerializeStringToXPCDictionaryWithKey();
  xpc_dictionary_set_BOOL(xdict, "_allowsResponse", self->_allowsResponse);
}

@end