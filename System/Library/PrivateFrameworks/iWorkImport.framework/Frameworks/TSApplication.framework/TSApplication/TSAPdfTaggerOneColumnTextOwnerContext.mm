@interface TSAPdfTaggerOneColumnTextOwnerContext
- (TSAPdfTaggerOneColumnTextOwnerContext)initWithStateOfTagger:(id)a3 textColumn:(id)a4 limitSelection:(id)a5;
@end

@implementation TSAPdfTaggerOneColumnTextOwnerContext

- (TSAPdfTaggerOneColumnTextOwnerContext)initWithStateOfTagger:(id)a3 textColumn:(id)a4 limitSelection:(id)a5
{
  v20[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v20[0] = v9;
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v20, 1);
  v16 = objc_msgSend_storage(v9, v13, v14, v15);
  v19.receiver = self;
  v19.super_class = TSAPdfTaggerOneColumnTextOwnerContext;
  v17 = [(TSAPdfTaggerTextColumnOwnerContext *)&v19 initWithStateOfTagger:v8 columns:v12 storage:v16 limitSelection:v10];

  if (v17)
  {
    objc_storeStrong(&v17->_textColumn, a4);
  }

  return v17;
}

@end