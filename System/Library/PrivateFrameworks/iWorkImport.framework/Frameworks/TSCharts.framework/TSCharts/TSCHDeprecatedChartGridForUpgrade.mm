@interface TSCHDeprecatedChartGridForUpgrade
- (void)loadFromUnarchiver:(id)unarchiver;
@end

@implementation TSCHDeprecatedChartGridForUpgrade

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, v5, v6, v7, off_2812EE5D0[8]);

  v9 = objc_alloc_init(TSCHChartGrid);
  objc_msgSend_loadFromPreUFFArchive_(v9, v10, v11, v12, v13, v8);
  objc_storeStrong(&self->_grid, v9);
  objc_msgSend_adjustRowAndColumnNameListLength(self->_grid, v14, v15, v16, v17);
  objc_msgSend_generateRowColumnIdMaps(self->_grid, v18, v19, v20, v21);
}

@end