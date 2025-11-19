@interface STKTextInputSessionData
- (STKTextInputSessionData)initWithText:(id)a3 simLabel:(id)a4;
- (STKTextInputSessionData)initWithXPCDictionary:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation STKTextInputSessionData

- (STKTextInputSessionData)initWithText:(id)a3 simLabel:(id)a4
{
  v5.receiver = self;
  v5.super_class = STKTextInputSessionData;
  result = [(STKTextSessionData *)&v5 initWithText:a3 simLabel:a4];
  if (result)
  {
    result->_minimumInputLength = 0;
    result->_maximumInputLength = -1;
  }

  return result;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = STKTextInputSessionData;
  v4 = a3;
  [(STKTextSessionData *)&v6 encodeWithXPCDictionary:v4];
  defaultText = self->_defaultText;
  BSSerializeStringToXPCDictionaryWithKey();
  xpc_dictionary_set_BOOL(v4, "_isSecure", self->_isSecure);
  xpc_dictionary_set_BOOL(v4, "_isDigits", self->_isDigitsOnly);
  xpc_dictionary_set_uint64(v4, "_minLength", self->_minimumInputLength);
  xpc_dictionary_set_uint64(v4, "_maxLength", self->_maximumInputLength);
}

- (STKTextInputSessionData)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STKTextInputSessionData;
  v5 = [(STKTextSessionData *)&v9 initWithXPCDictionary:v4];
  if (v5)
  {
    v6 = BSDeserializeStringFromXPCDictionaryWithKey();
    defaultText = v5->_defaultText;
    v5->_defaultText = v6;

    v5->_isSecure = xpc_dictionary_get_BOOL(v4, "_isSecure");
    v5->_isDigitsOnly = xpc_dictionary_get_BOOL(v4, "_isDigits");
    v5->_minimumInputLength = xpc_dictionary_get_uint64(v4, "_minLength");
    v5->_maximumInputLength = xpc_dictionary_get_uint64(v4, "_maxLength");
  }

  return v5;
}

@end