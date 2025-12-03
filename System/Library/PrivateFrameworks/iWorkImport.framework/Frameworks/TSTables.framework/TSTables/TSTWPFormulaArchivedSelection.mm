@interface TSTWPFormulaArchivedSelection
- (TSTWPFormulaArchivedSelection)initWithContext:(id)context;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSTWPFormulaArchivedSelection

- (TSTWPFormulaArchivedSelection)initWithContext:(id)context
{
  contextCopy = context;
  v20.receiver = self;
  v20.super_class = TSTWPFormulaArchivedSelection;
  v5 = [(TSWPArchivedSelection *)&v20 initWithContext:contextCopy];
  v10 = v5;
  if (v5)
  {
    v11 = objc_msgSend_selection(v5, v6, v7, v8, v9);
    v15 = objc_msgSend_selectionFromWPSelection_(TSTWPFormulaSelection, v12, v11, v13, v14);
    objc_msgSend_setSelection_(v10, v16, v15, v17, v18);
  }

  return v10;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v25.receiver = self;
  v25.super_class = TSTWPFormulaArchivedSelection;
  [(TSWPArchivedSelection *)&v25 loadFromUnarchiver:unarchiverCopy];
  v5 = unarchiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v9 = objc_msgSend_messageWithDescriptor_(v5, v6, off_2812E4498[290], v7, v8);

  v14 = objc_msgSend_selection(self, v10, v11, v12, v13);
  v18 = objc_msgSend_selectionFromWPSelection_(TSTWPFormulaSelection, v15, v14, v16, v17);

  if ((*(v9 + 16) & 2) != 0)
  {
    objc_msgSend_setActiveTokenCharIndex_(v18, v19, *(v9 + 32), v20, v21);
  }

  else
  {
    objc_msgSend_setActiveTokenCharIndex_(v18, v19, 0x7FFFFFFFFFFFFFFFLL, v20, v21);
  }

  objc_msgSend_setSelection_(self, v22, v18, v23, v24);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  v25.receiver = self;
  v25.super_class = TSTWPFormulaArchivedSelection;
  [(TSWPArchivedSelection *)&v25 saveToArchiver:archiverCopy];
  objc_opt_class();
  v9 = objc_msgSend_selection(self, v5, v6, v7, v8);
  v10 = TSUDynamicCast();

  if (v10 && objc_msgSend_activeTokenCharIndex(v10, v11, v12, v13, v14) != 0x7FFFFFFFFFFFFFFFLL)
  {
    active = objc_msgSend_activeTokenCharIndex(v10, v15, v16, v17, v18);
    v20 = archiverCopy;
    google::protobuf::internal::AssignDescriptors();
    v23 = objc_msgSend_messageWithNewFunction_descriptor_(v20, v21, sub_2212007B0, off_2812E4498[290], v22);

    v24 = -1;
    if (active < 0xFFFFFFFF)
    {
      v24 = active;
    }

    *(v23 + 16) |= 2u;
    *(v23 + 32) = v24;
  }
}

@end