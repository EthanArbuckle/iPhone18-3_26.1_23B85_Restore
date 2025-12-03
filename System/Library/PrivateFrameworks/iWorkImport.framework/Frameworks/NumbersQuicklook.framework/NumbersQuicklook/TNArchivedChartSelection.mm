@interface TNArchivedChartSelection
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TNArchivedChartSelection

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812DAFE8[38]);

  v6 = [TNChartSelection alloc];
  v8 = objc_msgSend_initFromArchive_unarchiver_(v6, v7, v5, unarchiverCopy);
  objc_msgSend_setSelection_(self, v9, v8);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_275F37B04, off_2812DAFE8[38]);

  v8 = objc_msgSend_selection(self, v6, v7);
  objc_msgSend_saveToArchive_archiver_(v8, v9, v5, archiverCopy);
}

@end