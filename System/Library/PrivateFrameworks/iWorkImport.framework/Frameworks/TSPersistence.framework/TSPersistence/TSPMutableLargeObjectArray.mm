@interface TSPMutableLargeObjectArray
- (void)addObjectsFromArray:(id)array;
- (void)loadFromMessage:(const void *)message unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)saveToMessage:(void *)message archiver:(id)archiver;
@end

@implementation TSPMutableLargeObjectArray

- (void)addObjectsFromArray:(id)array
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  arrayCopy = array;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(arrayCopy, v5, &v11, v15, 16);
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(arrayCopy);
        }

        objc_msgSend_addObject_(self, v6, *(*(&v11 + 1) + 8 * v9++), v11);
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(arrayCopy, v6, &v11, v15, 16);
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_276A526C4, off_2812FC248[86]);

  objc_msgSend_saveToMessage_archiver_(self, v6, v5, archiverCopy);
}

- (void)saveToMessage:(void *)message archiver:(id)archiver
{
  archiverCopy = archiver;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_276A524E4;
  v9[3] = &unk_27A6E2898;
  v10 = archiverCopy;
  selfCopy = self;
  v7 = archiverCopy;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, message, v9);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812FC248[86]);

  objc_msgSend_loadFromMessage_unarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)loadFromMessage:(const void *)message unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_276A52680;
  v9[3] = &unk_27A6E46B8;
  v10 = unarchiverCopy;
  selfCopy = self;
  v7 = unarchiverCopy;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, message, v9);
}

@end