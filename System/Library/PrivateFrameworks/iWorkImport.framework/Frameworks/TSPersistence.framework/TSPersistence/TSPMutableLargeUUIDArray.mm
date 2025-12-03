@interface TSPMutableLargeUUIDArray
- (UUIDData<TSP::UUIDData>)UUIDAtIndex:(unint64_t)index;
- (void)addUUID:(UUIDData<TSP::UUIDData>)d;
- (void)insertUUID:(UUIDData<TSP:(unint64_t)d :UUIDData>)a3 atIndex:;
- (void)loadFromMessage:(const void *)message unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)replaceUUIDAtIndex:(unint64_t)index withUUID:(UUIDData<TSP::UUIDData>)d;
- (void)saveToArchiver:(id)archiver;
- (void)saveToMessage:(void *)message archiver:(id)archiver;
@end

@implementation TSPMutableLargeUUIDArray

- (UUIDData<TSP::UUIDData>)UUIDAtIndex:(unint64_t)index
{
  v3 = objc_msgSend_objectAtIndex_(self, a2, index);
  sub_2769C65D4(v6, v3);

  v4 = v6[0];
  v5 = v6[1];
  result.var0.var2.var1 = v5;
  result.var0.var2.var0 = v4;
  return result;
}

- (void)insertUUID:(UUIDData<TSP:(unint64_t)d :UUIDData>)a3 atIndex:
{
  v10 = a3;
  v6 = objc_alloc(MEMORY[0x277CCAD78]);
  v8 = objc_msgSend_initWithUUIDBytes_(v6, v7, &v10);
  objc_msgSend_insertObject_atIndex_(self, v9, v8, d, v10);
}

- (void)addUUID:(UUIDData<TSP::UUIDData>)d
{
  dCopy = d;
  v4 = objc_alloc(MEMORY[0x277CCAD78]);
  v6 = objc_msgSend_initWithUUIDBytes_(v4, v5, &dCopy);
  objc_msgSend_addObject_(self, v7, v6, dCopy);
}

- (void)replaceUUIDAtIndex:(unint64_t)index withUUID:(UUIDData<TSP::UUIDData>)d
{
  dCopy = d;
  v6 = objc_alloc(MEMORY[0x277CCAD78]);
  v8 = objc_msgSend_initWithUUIDBytes_(v6, v7, &dCopy);
  objc_msgSend_replaceObjectAtIndex_withObject_(self, v9, index, v8, dCopy);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors(&descriptor_table_TSPMessages_2eproto, 0);
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_276A7A8B8, off_2812FC248[88]);

  objc_msgSend_saveToMessage_archiver_(self, v6, v5, archiverCopy);
}

- (void)saveToMessage:(void *)message archiver:(id)archiver
{
  archiverCopy = archiver;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_276A7A6D8;
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
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812FC248[88]);

  objc_msgSend_loadFromMessage_unarchiver_(self, v6, v5, unarchiverCopy);
}

- (void)loadFromMessage:(const void *)message unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_276A7A874;
  v9[3] = &unk_27A6E46B8;
  v10 = unarchiverCopy;
  selfCopy = self;
  v7 = unarchiverCopy;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, 1, message, v9);
}

@end