@interface TSPMutableLargeUUIDArray
- (UUIDData<TSP::UUIDData>)UUIDAtIndex:(unint64_t)a3;
- (void)addUUID:(UUIDData<TSP::UUIDData>)a3;
- (void)insertUUID:(UUIDData<TSP:(unint64_t)a4 :UUIDData>)a3 atIndex:;
- (void)loadFromMessage:(const void *)a3 unarchiver:(id)a4;
- (void)loadFromUnarchiver:(id)a3;
- (void)replaceUUIDAtIndex:(unint64_t)a3 withUUID:(UUIDData<TSP::UUIDData>)a4;
- (void)saveToArchiver:(id)a3;
- (void)saveToMessage:(void *)a3 archiver:(id)a4;
@end

@implementation TSPMutableLargeUUIDArray

- (UUIDData<TSP::UUIDData>)UUIDAtIndex:(unint64_t)a3
{
  v3 = objc_msgSend_objectAtIndex_(self, a2, a3);
  sub_2769C65D4(v6, v3);

  v4 = v6[0];
  v5 = v6[1];
  result.var0.var2.var1 = v5;
  result.var0.var2.var0 = v4;
  return result;
}

- (void)insertUUID:(UUIDData<TSP:(unint64_t)a4 :UUIDData>)a3 atIndex:
{
  v10 = a3;
  v6 = objc_alloc(MEMORY[0x277CCAD78]);
  v8 = objc_msgSend_initWithUUIDBytes_(v6, v7, &v10);
  objc_msgSend_insertObject_atIndex_(self, v9, v8, a4, v10);
}

- (void)addUUID:(UUIDData<TSP::UUIDData>)a3
{
  v8 = a3;
  v4 = objc_alloc(MEMORY[0x277CCAD78]);
  v6 = objc_msgSend_initWithUUIDBytes_(v4, v5, &v8);
  objc_msgSend_addObject_(self, v7, v6, v8);
}

- (void)replaceUUIDAtIndex:(unint64_t)a3 withUUID:(UUIDData<TSP::UUIDData>)a4
{
  v10 = a4;
  v6 = objc_alloc(MEMORY[0x277CCAD78]);
  v8 = objc_msgSend_initWithUUIDBytes_(v6, v7, &v10);
  objc_msgSend_replaceObjectAtIndex_withObject_(self, v9, a3, v8, v10);
}

- (void)saveToArchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v7, v4, sub_276A7A8B8, off_2812FC248[88]);

  objc_msgSend_saveToMessage_archiver_(self, v6, v5, v7);
}

- (void)saveToMessage:(void *)a3 archiver:(id)a4
{
  v6 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_276A7A6D8;
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
  v5 = objc_msgSend_messageWithDescriptor_(v7, v4, off_2812FC248[88]);

  objc_msgSend_loadFromMessage_unarchiver_(self, v6, v5, v7);
}

- (void)loadFromMessage:(const void *)a3 unarchiver:(id)a4
{
  v6 = a4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_276A7A874;
  v9[3] = &unk_27A6E46B8;
  v10 = v6;
  v11 = self;
  v7 = v6;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, a3, v9);
}

@end