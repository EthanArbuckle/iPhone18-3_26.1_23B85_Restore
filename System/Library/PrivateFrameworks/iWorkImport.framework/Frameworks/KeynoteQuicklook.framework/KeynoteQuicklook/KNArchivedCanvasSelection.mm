@interface KNArchivedCanvasSelection
- (KNArchivedCanvasSelection)initWithContext:(id)context;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setSelection:(id)selection;
@end

@implementation KNArchivedCanvasSelection

- (KNArchivedCanvasSelection)initWithContext:(id)context
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = KNArchivedCanvasSelection;
  v7 = [(KNArchivedCanvasSelection *)&v11 initWithContext:contextCopy];
  if (v7)
  {
    v8 = objc_msgSend_emptySelection(KNCanvasSelection, v5, v6);
    selection = v7->_selection;
    v7->_selection = v8;
  }

  return v7;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812EA908[46]);

  v6 = [KNCanvasSelection alloc];
  v8 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, v5, unarchiverCopy);
  selection = self->_selection;
  self->_selection = v8;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_275DDA5C0, off_2812EA908[46]);

  v8 = objc_msgSend_selection(self, v6, v7);
  objc_msgSend_saveToArchive_archiver_(v8, v9, v5, archiverCopy);
}

- (void)setSelection:(id)selection
{
  selectionCopy = selection;
  if (selectionCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[KNArchivedCanvasSelection setSelection:]");
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNArchivedCanvasSelection.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 56, 0, "selection is not a KNCanvasSelection");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
    }
  }

  objc_msgSend_willModify(self, v4, v5);
  selection = self->_selection;
  self->_selection = selectionCopy;
}

@end