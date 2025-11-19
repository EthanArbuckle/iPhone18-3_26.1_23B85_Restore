@interface TSPKnownFieldRepeatedMessage
- (TSPKnownFieldRepeatedMessage)initWithFieldDescriptor:(const void *)a3 fieldInfo:(const void *)a4 message:(const Message *)a5 reflection:(const Reflection *)a6;
- (id)debugDescription;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSPKnownFieldRepeatedMessage

- (TSPKnownFieldRepeatedMessage)initWithFieldDescriptor:(const void *)a3 fieldInfo:(const void *)a4 message:(const Message *)a5 reflection:(const Reflection *)a6
{
  v15.receiver = self;
  v15.super_class = TSPKnownFieldRepeatedMessage;
  v9 = [TSPKnownFieldRepeatedStringValue initWithFieldDescriptor:sel_initWithFieldDescriptor_fieldInfo_message_reflection_ fieldInfo:a3 message:a4 reflection:?];
  if (v9)
  {
    v10 = [TSPKnownFieldReferencesHelper alloc];
    v12 = objc_msgSend_initWithFieldDescriptor_message_reflection_(v10, v11, a3, a5, a6);
    referencesHelper = v9->_referencesHelper;
    v9->_referencesHelper = v12;
  }

  return v9;
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = TSPKnownFieldRepeatedMessage;
  [(TSPKnownField *)&v6 loadFromUnarchiver:v4];
  objc_msgSend_loadFromUnarchiver_(self->_referencesHelper, v5, v4);
}

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = TSPKnownFieldRepeatedMessage;
  [(TSPKnownField *)&v6 saveToArchiver:v4];
  objc_msgSend_saveToArchiver_(self->_referencesHelper, v5, v4);
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = TSPKnownFieldRepeatedMessage;
  v4 = [(TSPKnownField *)&v11 debugDescription];
  v7 = objc_msgSend_debugDescription(self->_referencesHelper, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ references: %@", v4, v7);;

  return v9;
}

@end