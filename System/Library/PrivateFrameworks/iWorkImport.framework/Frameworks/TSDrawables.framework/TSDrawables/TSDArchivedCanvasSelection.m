@interface TSDArchivedCanvasSelection
- (NSString)description;
- (TSDArchivedCanvasSelection)initWithContext:(id)a3;
- (void)loadFromUnarchiver:(id)a3;
- (void)saveToArchiver:(id)a3;
- (void)setSelection:(id)a3;
@end

@implementation TSDArchivedCanvasSelection

- (TSDArchivedCanvasSelection)initWithContext:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TSDArchivedCanvasSelection;
  v7 = [(TSDArchivedCanvasSelection *)&v11 initWithContext:v4];
  if (v7)
  {
    v8 = objc_msgSend_emptySelection(TSDCanvasSelection, v5, v6);
    selection = v7->_selection;
    v7->_selection = v8;
  }

  return v7;
}

- (void)loadFromUnarchiver:(id)a3
{
  v10 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithDescriptor_(v10, v4, off_2812F5188[108]);

  v6 = [TSDCanvasSelection alloc];
  v8 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, v5, v10);
  objc_msgSend_setSelection_(self, v9, v8);
}

- (void)saveToArchiver:(id)a3
{
  v10 = a3;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(v10, v4, sub_2766B9690, off_2812F5188[108]);

  v8 = objc_msgSend_selection(self, v6, v7);
  objc_msgSend_saveToArchive_archiver_(v8, v9, v5, v10);
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
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSDArchivedCanvasSelection setSelection:]");
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSDArchivedCanvasSelection.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v11, v8, v10, 51, 0, "selection is not a TSDCanvasSelection");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13);
    }
  }

  objc_msgSend_willModify(self, v4, v5);
  selection = self->_selection;
  self->_selection = v6;
}

- (NSString)description
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_selection(self, a2, v2);
  v7 = objc_msgSend_stringWithFormat_(v4, v6, @"<TSDArchivedCanvasSelection: %p> %@", self, v5);

  return v7;
}

@end