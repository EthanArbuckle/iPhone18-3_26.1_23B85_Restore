@interface TSTArchivedTableNameSelection
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)setSelection:(id)a3;
@end

@implementation TSTArchivedTableNameSelection

- (void)setSelection:(id)a3
{
  v10 = a3;
  objc_msgSend_willModify(self, v4, v5, v6, v7);
  objc_opt_class();
  v8 = TSUCheckedDynamicCast();
  tableNameSelection = self->_tableNameSelection;
  self->_tableNameSelection = v8;
}

- (void)loadFromUnarchiver:(id)a3
{
  v4 = objc_alloc_init(TSTTableNameSelection);
  tableNameSelection = self->_tableNameSelection;
  self->_tableNameSelection = v4;
}

- (void)saveToArchiver:(id)a3
{
  v5 = a3;
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_messageWithNewFunction_descriptor_(v5, v3, sub_2214D522C, off_2812E4498[152], v4);
}

@end