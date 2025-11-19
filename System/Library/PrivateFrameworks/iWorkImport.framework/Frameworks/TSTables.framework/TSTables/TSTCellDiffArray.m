@interface TSTCellDiffArray
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSTCellDiffArray

- (void)saveToArchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithNewFunction_descriptor_(v4, v5, sub_2211D7854, off_2812E4498[124], v6);

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2211D76DC;
  v10[3] = &unk_27845FEF0;
  v8 = v4;
  v11 = v8;
  v12 = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v8, v9, 1, v7, v10);
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = a3;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithDescriptor_(v4, v5, off_2812E4498[124], v6, v7);

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2211D7810;
  v11[3] = &unk_27845FF18;
  v9 = v4;
  v12 = v9;
  v13 = self;
  objc_msgSend_pushScopeForField_message_usingBlock_(v9, v10, 1, v8, v11);
}

@end