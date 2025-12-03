@interface STKTextInputSessionData
- (STKTextInputSessionData)initWithText:(id)text simLabel:(id)label;
- (STKTextInputSessionData)initWithXPCDictionary:(id)dictionary;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation STKTextInputSessionData

- (STKTextInputSessionData)initWithText:(id)text simLabel:(id)label
{
  v5.receiver = self;
  v5.super_class = STKTextInputSessionData;
  result = [(STKTextSessionData *)&v5 initWithText:text simLabel:label];
  if (result)
  {
    result->_minimumInputLength = 0;
    result->_maximumInputLength = -1;
  }

  return result;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = STKTextInputSessionData;
  dictionaryCopy = dictionary;
  [(STKTextSessionData *)&v6 encodeWithXPCDictionary:dictionaryCopy];
  defaultText = self->_defaultText;
  BSSerializeStringToXPCDictionaryWithKey();
  xpc_dictionary_set_BOOL(dictionaryCopy, "_isSecure", self->_isSecure);
  xpc_dictionary_set_BOOL(dictionaryCopy, "_isDigits", self->_isDigitsOnly);
  xpc_dictionary_set_uint64(dictionaryCopy, "_minLength", self->_minimumInputLength);
  xpc_dictionary_set_uint64(dictionaryCopy, "_maxLength", self->_maximumInputLength);
}

- (STKTextInputSessionData)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = STKTextInputSessionData;
  v5 = [(STKTextSessionData *)&v9 initWithXPCDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = BSDeserializeStringFromXPCDictionaryWithKey();
    defaultText = v5->_defaultText;
    v5->_defaultText = v6;

    v5->_isSecure = xpc_dictionary_get_BOOL(dictionaryCopy, "_isSecure");
    v5->_isDigitsOnly = xpc_dictionary_get_BOOL(dictionaryCopy, "_isDigits");
    v5->_minimumInputLength = xpc_dictionary_get_uint64(dictionaryCopy, "_minLength");
    v5->_maximumInputLength = xpc_dictionary_get_uint64(dictionaryCopy, "_maxLength");
  }

  return v5;
}

@end