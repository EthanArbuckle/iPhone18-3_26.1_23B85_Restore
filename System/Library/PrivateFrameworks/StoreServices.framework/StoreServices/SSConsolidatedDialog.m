@interface SSConsolidatedDialog
- (SSConsolidatedDialog)initWithXPCEncoding:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
@end

@implementation SSConsolidatedDialog

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(SSConsolidatedDialog);
  v6 = [(NSString *)self->_cancelLabel copyWithZone:a3];
  cancelLabel = v5->_cancelLabel;
  v5->_cancelLabel = v6;

  v8 = [(NSString *)self->_reason copyWithZone:a3];
  reason = v5->_reason;
  v5->_reason = v8;

  v10 = [(NSString *)self->_title copyWithZone:a3];
  title = v5->_title;
  v5->_title = v10;

  return v5;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetObject(v3, "0", self->_cancelLabel);
  SSXPCDictionarySetObject(v3, "1", self->_reason);
  SSXPCDictionarySetObject(v3, "2", self->_title);
  return v3;
}

- (SSConsolidatedDialog)initWithXPCEncoding:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x1DA6E0380](v4) == MEMORY[0x1E69E9E80])
  {
    v17.receiver = self;
    v17.super_class = SSConsolidatedDialog;
    v6 = [(SSConsolidatedDialog *)&v17 init];
    if (v6)
    {
      v8 = objc_opt_class();
      v9 = SSXPCDictionaryCopyObjectWithClass(v5, "0", v8);
      cancelLabel = v6->_cancelLabel;
      v6->_cancelLabel = v9;

      v11 = objc_opt_class();
      v12 = SSXPCDictionaryCopyObjectWithClass(v5, "1", v11);
      reason = v6->_reason;
      v6->_reason = v12;

      v14 = objc_opt_class();
      v15 = SSXPCDictionaryCopyObjectWithClass(v5, "2", v14);
      title = v6->_title;
      v6->_title = v15;
    }
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

@end