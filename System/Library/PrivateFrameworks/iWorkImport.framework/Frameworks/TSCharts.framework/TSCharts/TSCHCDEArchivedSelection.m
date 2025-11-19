@interface TSCHCDEArchivedSelection
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
@end

@implementation TSCHCDEArchivedSelection

- (void)loadFromUnarchiver:(id)a3
{
  v19 = a3;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithDescriptor_(v19, v4, v5, v6, v7, off_2812ED048[50]);

  v9 = [TSCHCDESelection alloc];
  v14 = objc_msgSend_initFromArchive_unarchiver_(v9, v10, v11, v12, v13, v8, v19);
  objc_msgSend_setSelection_(self, v15, v16, v17, v18, v14);
}

- (void)saveToArchiver:(id)a3
{
  v18 = a3;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithNewFunction_descriptor_(v18, v4, v5, v6, v7, sub_27636464C, off_2812ED048[50]);

  v13 = objc_msgSend_selection(self, v9, v10, v11, v12);
  objc_msgSend_saveToArchive_archiver_(v13, v14, v15, v16, v17, v8, v18);
}

@end