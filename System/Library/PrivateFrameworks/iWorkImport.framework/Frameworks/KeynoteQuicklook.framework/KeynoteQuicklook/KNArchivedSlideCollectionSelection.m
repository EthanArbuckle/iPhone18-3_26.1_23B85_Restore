@interface KNArchivedSlideCollectionSelection
- (KNArchivedSlideCollectionSelection)initWithContext:(id)a3;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)setSelection:(id)a3;
@end

@implementation KNArchivedSlideCollectionSelection

- (KNArchivedSlideCollectionSelection)initWithContext:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = KNArchivedSlideCollectionSelection;
  v5 = [(KNArchivedSlideCollectionSelection *)&v9 initWithContext:v4];
  if (v5)
  {
    v6 = objc_alloc_init(KNSlideCollectionSelection);
    selection = v5->_selection;
    v5->_selection = v6;
  }

  return v5;
}

- (void)loadFromUnarchiver:(id)a3
{
  v11 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(v11, v4, off_2812EA908[98]);

  v6 = off_27A696D50;
  if (*(v5 + 56) <= 0 && (*(v5 + 16) & 2) == 0)
  {
    v6 = off_27A696DA0;
  }

  v7 = objc_alloc(*v6);
  v9 = objc_msgSend_initWithArchive_unarchiver_(v7, v8, v5, v11);
  selection = self->_selection;
  self->_selection = v9;
}

- (void)saveToArchiver:(id)a3
{
  v7 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v7, v4, sub_275DC9B0C, off_2812EA908[98]);

  objc_msgSend_saveToArchive_archiver_(self->_selection, v6, v5, v7);
}

- (void)setSelection:(id)a3
{
  v6 = a3;
  if (v6)
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
  self->_selection = v6;
}

@end