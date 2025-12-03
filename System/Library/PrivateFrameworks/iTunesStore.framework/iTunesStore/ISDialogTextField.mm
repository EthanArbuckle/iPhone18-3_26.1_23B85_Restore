@interface ISDialogTextField
+ (id)textFieldWithTitle:(id)title;
- (ISDialogTextField)init;
- (ISDialogTextField)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
- (void)dealloc;
@end

@implementation ISDialogTextField

- (ISDialogTextField)init
{
  __ISRecordSPIClassUsage(self);
  v4.receiver = self;
  v4.super_class = ISDialogTextField;
  return [(ISDialogTextField *)&v4 init];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ISDialogTextField;
  [(ISDialogTextField *)&v3 dealloc];
}

+ (id)textFieldWithTitle:(id)title
{
  v4 = objc_alloc_init(self);
  [v4 setTitle:title];

  return v4;
}

- (ISDialogTextField)initWithXPCEncoding:(id)encoding
{
  __ISRecordSPIClassUsage(self);
  if (encoding && MEMORY[0x277C8C570](encoding) == MEMORY[0x277D86468])
  {
    v7.receiver = self;
    v7.super_class = ISDialogTextField;
    v5 = [(ISDialogTextField *)&v7 init];
    if (v5)
    {
      v5->_keyboardType = xpc_dictionary_get_int64(encoding, "0");
      v5->_secure = xpc_dictionary_get_BOOL(encoding, "1");
      objc_opt_class();
      v5->_title = SSXPCDictionaryCopyCFObjectWithClass();
      objc_opt_class();
      v5->_value = SSXPCDictionaryCopyCFObjectWithClass();
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v3, "0", self->_keyboardType);
  xpc_dictionary_set_BOOL(v3, "1", self->_secure);
  title = self->_title;
  SSXPCDictionarySetCFObject();
  value = self->_value;
  SSXPCDictionarySetCFObject();
  return v3;
}

@end