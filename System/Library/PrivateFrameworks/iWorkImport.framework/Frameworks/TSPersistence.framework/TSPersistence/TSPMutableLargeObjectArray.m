@interface TSPMutableLargeObjectArray
- (void)addObjectsFromArray:(id)a3;
- (void)loadFromMessage:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)saveToMessage:(void *)a3 archiver:(id)a4;
@end

@implementation TSPMutableLargeObjectArray

- (void)addObjectsFromArray:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a3;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v11, v15, 16);
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
          objc_enumerationMutation(v4);
        }

        objc_msgSend_addObject_(self, v6, *(*(&v11 + 1) + 8 * v9++), v11);
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v11, v15, 16);
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)saveToArchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v7, v4, sub_276A526C4, off_2812FC248[86]);

  objc_msgSend_saveToMessage_archiver_(self, v6, v5, v7);
}

- (void)saveToMessage:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_276A524E4;
  v9[3] = &unk_27A6E2898;
  v10 = v6;
  v11 = self;
  v7 = v6;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, a3, v9);
}

- (void)loadFromUnarchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v5 = objc_msgSend_messageWithDescriptor_(v7, v4, off_2812FC248[86]);

  objc_msgSend_loadFromMessage_unarchiver_(self, v6, v5, v7);
}

- (void)loadFromMessage:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_276A52680;
  v9[3] = &unk_27A6E46B8;
  v10 = v6;
  v11 = self;
  v7 = v6;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, a3, v9);
}

@end