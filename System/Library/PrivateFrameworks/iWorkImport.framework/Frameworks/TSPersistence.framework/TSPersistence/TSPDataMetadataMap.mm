@interface TSPDataMetadataMap
- (TSPDataMetadataMap)initWithContext:(id)context;
- (id)dataMetadataForDataIdentifier:(int64_t)identifier;
- (void)loadFromMessage:(const void *)message unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)saveToMessage:(void *)message archiver:(id)archiver;
- (void)setDataMetadata:(id)metadata forDataIdentifier:(int64_t)identifier;
@end

@implementation TSPDataMetadataMap

- (TSPDataMetadataMap)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = TSPDataMetadataMap;
  v5 = [(TSPObject *)&v9 initWithContext:contextCopy];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    identifierToDataMetadata = v5->_identifierToDataMetadata;
    v5->_identifierToDataMetadata = v6;
  }

  return v5;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812FBC48[30]);

  objc_msgSend_loadFromMessage_unarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)setDataMetadata:(id)metadata forDataIdentifier:(int64_t)identifier
{
  metadataCopy = metadata;
  identifierToDataMetadata = self->_identifierToDataMetadata;
  v8 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v7, identifier);
  objc_msgSend_setObject_forKeyedSubscript_(identifierToDataMetadata, v9, metadataCopy, v8);
}

- (id)dataMetadataForDataIdentifier:(int64_t)identifier
{
  identifierToDataMetadata = self->_identifierToDataMetadata;
  v4 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], a2, identifier);
  v6 = objc_msgSend_objectForKeyedSubscript_(identifierToDataMetadata, v5, v4);

  return v6;
}

- (void)loadFromMessage:(const void *)message unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v7 = *(message + 6);
  v8 = objc_alloc(MEMORY[0x277CBEB38]);
  v10 = objc_msgSend_initWithCapacity_(v8, v9, v7 + 1);
  identifierToDataMetadata = self->_identifierToDataMetadata;
  self->_identifierToDataMetadata = v10;

  if (v7 >= 1)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 8;
    do
    {
      v14 = *(*(message + 4) + v13);
      v16 = *(v14 + 24);
      v15 = *(v14 + 32);
      v20[0] = v12;
      v20[1] = 3221225472;
      v20[2] = sub_276AEBB28;
      v20[3] = &unk_27A6E7218;
      v20[4] = self;
      v20[5] = v15;
      v17 = unarchiverCopy;
      v19 = objc_opt_class();
      if (v16)
      {
        objc_msgSend_readReferenceMessage_class_protocol_completion_(v17, v18, v16, v19, 0, v20);
      }

      else
      {
        objc_msgSend_readReferenceMessage_class_protocol_completion_(v17, v18, &TSP::_Reference_default_instance_, v19, 0, v20);
      }

      v13 += 8;
      --v7;
    }

    while (v7);
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors(&unk_2812FBBF0, 0);
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_276AEBEB4, off_2812FBC48[30]);

  objc_msgSend_saveToMessage_archiver_(self, v6, v5, archiverCopy);
}

- (void)saveToMessage:(void *)message archiver:(id)archiver
{
  archiverCopy = archiver;
  identifierToDataMetadata = self->_identifierToDataMetadata;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_276AEBD40;
  v10[3] = &unk_27A6E7240;
  v11 = archiverCopy;
  messageCopy = message;
  v8 = archiverCopy;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(identifierToDataMetadata, v9, v10);
}

@end