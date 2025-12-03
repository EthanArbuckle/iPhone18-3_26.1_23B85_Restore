@interface KNArchivedSlideCollectionSelection
- (KNArchivedSlideCollectionSelection)initWithContext:(id)context;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setSelection:(id)selection;
@end

@implementation KNArchivedSlideCollectionSelection

- (KNArchivedSlideCollectionSelection)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = KNArchivedSlideCollectionSelection;
  v5 = [(KNArchivedSlideCollectionSelection *)&v9 initWithContext:contextCopy];
  if (v5)
  {
    v6 = objc_alloc_init(KNSlideCollectionSelection);
    selection = v5->_selection;
    v5->_selection = v6;
  }

  return v5;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812EA908[98]);

  v6 = off_27A696D50;
  if (*(v5 + 56) <= 0 && (*(v5 + 16) & 2) == 0)
  {
    v6 = off_27A696DA0;
  }

  v7 = objc_alloc(*v6);
  v9 = objc_msgSend_initWithArchive_unarchiver_(v7, v8, v5, unarchiverCopy);
  selection = self->_selection;
  self->_selection = v9;
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_275DC9B0C, off_2812EA908[98]);

  objc_msgSend_saveToArchive_archiver_(self->_selection, v6, v5, archiverCopy);
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
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[KNArchivedSlideCollectionSelection setSelection:]");
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNArchivedSlideCollectionSelection.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 57, 0, "selection is not a KNSlideCollectionSelection");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
    }
  }

  objc_msgSend_willModify(self, v4, v5);
  selection = self->_selection;
  self->_selection = selectionCopy;
}

@end