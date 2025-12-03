@interface TSTCellDiffArray
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSTCellDiffArray

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, sub_2211D7854, off_2812E4498[124], v6);

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2211D76DC;
  v10[3] = &unk_27845FEF0;
  v8 = archiverCopy;
  v11 = v8;
  selfCopy = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v8, v9, 1, v7, v10);
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E4498[124], v6, v7);

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2211D7810;
  v11[3] = &unk_27845FF18;
  v9 = unarchiverCopy;
  v12 = v9;
  selfCopy = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v9, v10, 1, v8, v11);
}

@end