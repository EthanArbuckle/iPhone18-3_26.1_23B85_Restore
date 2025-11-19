@interface SSVDialogResponse
- (SSVDialogResponse)initWithXPCEncoding:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
@end

@implementation SSVDialogResponse

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setSelectedButtonIndex:self->_selectedButtonIndex];
  [v4 setTextFieldValues:self->_textFieldValues];
  return v4;
}

- (SSVDialogResponse)initWithXPCEncoding:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x1DA6E0380](v4) == MEMORY[0x1E69E9E80])
  {
    v6 = [(SSVDialogResponse *)self init];
    if (!v6)
    {
      goto LABEL_5;
    }

    v6->_selectedButtonIndex = xpc_dictionary_get_int64(v5, "0");
    objc_opt_class();
    v8 = SSXPCDictionaryCopyCFObjectWithClass(v5, "1");
    self = v6->_textFieldValues;
    v6->_textFieldValues = v8;
  }

  else
  {
    v6 = 0;
  }

LABEL_5:
  return v6;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v3, "0", self->_selectedButtonIndex);
  SSXPCDictionarySetCFObject(v3, "1", self->_textFieldValues);
  return v3;
}

@end