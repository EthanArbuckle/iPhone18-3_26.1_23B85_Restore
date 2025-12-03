@interface TSTTableArchivedControlCellSelection
- (NSString)description;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setSelection:(id)selection;
@end

@implementation TSTTableArchivedControlCellSelection

- (void)setSelection:(id)selection
{
  selectionCopy = selection;
  objc_msgSend_willModify(self, v4, v5, v6, v7);
  objc_opt_class();
  v8 = TSUCheckedDynamicCast();
  controlCellSelection = self->_controlCellSelection;
  self->_controlCellSelection = v8;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  v4 = [TSTTableControlCellSelection alloc];
  v8 = objc_msgSend_initWithKeyboardShown_(v4, v5, 0, v6, v7);
  controlCellSelection = self->_controlCellSelection;
  self->_controlCellSelection = v8;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v3, sub_22123FA78, off_2812E4498[148], v4);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10 = objc_msgSend_selection(self, v6, v7, v8, v9);
  v14 = objc_msgSend_stringWithFormat_(v3, v11, @"<%@: %p> %@", v12, v13, v5, self, v10);

  return v14;
}

@end