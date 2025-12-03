@interface TSTArchivedRdar39989167CellSelection
- (void)loadFromUnarchiver:(id)unarchiver;
@end

@implementation TSTArchivedRdar39989167CellSelection

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[144], v5, v6);

  v8 = [TSTCellSelection alloc];
  v11 = objc_msgSend_initWithRdar39989167Archive_unarchiver_(v8, v9, v7, unarchiverCopy, v10);
  objc_msgSend_setSelection_(self, v12, v11, v13, v14);
}

@end