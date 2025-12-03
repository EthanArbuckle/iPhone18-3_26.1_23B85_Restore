@interface TSPKnownFieldRepeatedMessage
- (TSPKnownFieldRepeatedMessage)initWithFieldDescriptor:(const void *)descriptor fieldInfo:(const void *)info message:(const Message *)message reflection:(const Reflection *)reflection;
- (id)debugDescription;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSPKnownFieldRepeatedMessage

- (TSPKnownFieldRepeatedMessage)initWithFieldDescriptor:(const void *)descriptor fieldInfo:(const void *)info message:(const Message *)message reflection:(const Reflection *)reflection
{
  v15.receiver = self;
  v15.super_class = TSPKnownFieldRepeatedMessage;
  v9 = [TSPKnownFieldRepeatedStringValue initWithFieldDescriptor:sel_initWithFieldDescriptor_fieldInfo_message_reflection_ fieldInfo:descriptor message:info reflection:?];
  if (v9)
  {
    v10 = [TSPKnownFieldReferencesHelper alloc];
    v12 = objc_msgSend_initWithFieldDescriptor_message_reflection_(v10, v11, descriptor, message, reflection);
    referencesHelper = v9->_referencesHelper;
    v9->_referencesHelper = v12;
  }

  return v9;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v6.receiver = self;
  v6.super_class = TSPKnownFieldRepeatedMessage;
  [(TSPKnownField *)&v6 loadFromUnarchiver:unarchiverCopy];
  objc_msgSend_loadFromUnarchiver_(self->_referencesHelper, v5, unarchiverCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  v6.receiver = self;
  v6.super_class = TSPKnownFieldRepeatedMessage;
  [(TSPKnownField *)&v6 saveToArchiver:archiverCopy];
  objc_msgSend_saveToArchiver_(self->_referencesHelper, v5, archiverCopy);
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