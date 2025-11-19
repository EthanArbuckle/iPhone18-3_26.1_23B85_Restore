@interface TSAPdfTaggerTextStorageChunkContext
- (TSAPdfTaggerTextStorageChunkContext)initWithStateOfTagger:(id)a3 textStorageChunk:(id)a4 limitSelection:(id)a5;
@end

@implementation TSAPdfTaggerTextStorageChunkContext

- (TSAPdfTaggerTextStorageChunkContext)initWithStateOfTagger:(id)a3 textStorageChunk:(id)a4 limitSelection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14 = objc_msgSend_columns(v9, v11, v12, v13);
  v18 = objc_msgSend_storage(v9, v15, v16, v17);
  v21.receiver = self;
  v21.super_class = TSAPdfTaggerTextStorageChunkContext;
  v19 = [(TSAPdfTaggerTextColumnOwnerContext *)&v21 initWithStateOfTagger:v8 columns:v14 storage:v18 limitSelection:v10];

  if (v19)
  {
    objc_storeStrong(&v19->_textStorageChunk, a4);
  }

  return v19;
}

@end