@interface TSAPdfTaggerOneColumnTextOwnerContext
- (TSAPdfTaggerOneColumnTextOwnerContext)initWithStateOfTagger:(id)tagger textColumn:(id)column limitSelection:(id)selection;
@end

@implementation TSAPdfTaggerOneColumnTextOwnerContext

- (TSAPdfTaggerOneColumnTextOwnerContext)initWithStateOfTagger:(id)tagger textColumn:(id)column limitSelection:(id)selection
{
  v20[1] = *MEMORY[0x277D85DE8];
  taggerCopy = tagger;
  columnCopy = column;
  selectionCopy = selection;
  v20[0] = columnCopy;
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v20, 1);
  v16 = objc_msgSend_storage(columnCopy, v13, v14, v15);
  v19.receiver = self;
  v19.super_class = TSAPdfTaggerOneColumnTextOwnerContext;
  v17 = [(TSAPdfTaggerTextColumnOwnerContext *)&v19 initWithStateOfTagger:taggerCopy columns:v12 storage:v16 limitSelection:selectionCopy];

  if (v17)
  {
    objc_storeStrong(&v17->_textColumn, column);
  }

  return v17;
}

@end