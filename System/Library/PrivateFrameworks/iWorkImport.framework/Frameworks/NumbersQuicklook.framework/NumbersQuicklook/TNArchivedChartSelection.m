@interface TNArchivedChartSelection
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
@end

@implementation TNArchivedChartSelection

- (void)loadFromUnarchiver:(id)a3
{
  v10 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(v10, v4, off_2812DAFE8[38]);

  v6 = [TNChartSelection alloc];
  v8 = objc_msgSend_initFromArchive_unarchiver_(v6, v7, v5, v10);
  objc_msgSend_setSelection_(self, v9, v8);
}

- (void)saveToArchiver:(id)a3
{
  v10 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v10, v4, sub_275F37B04, off_2812DAFE8[38]);

  v8 = objc_msgSend_selection(self, v6, v7);
  objc_msgSend_saveToArchive_archiver_(v8, v9, v5, v10);
}

@end