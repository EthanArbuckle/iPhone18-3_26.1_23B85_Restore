@interface TSAPdfTaggerTextStorageChunkContext
- (TSAPdfTaggerTextStorageChunkContext)initWithStateOfTagger:(id)tagger textStorageChunk:(id)chunk limitSelection:(id)selection;
@end

@implementation TSAPdfTaggerTextStorageChunkContext

- (TSAPdfTaggerTextStorageChunkContext)initWithStateOfTagger:(id)tagger textStorageChunk:(id)chunk limitSelection:(id)selection
{
  taggerCopy = tagger;
  chunkCopy = chunk;
  selectionCopy = selection;
  v14 = objc_msgSend_columns(chunkCopy, v11, v12, v13);
  v18 = objc_msgSend_storage(chunkCopy, v15, v16, v17);
  v21.receiver = self;
  v21.super_class = TSAPdfTaggerTextStorageChunkContext;
  v19 = [(TSAPdfTaggerTextColumnOwnerContext *)&v21 initWithStateOfTagger:taggerCopy columns:v14 storage:v18 limitSelection:selectionCopy];

  if (v19)
  {
    objc_storeStrong(&v19->_textStorageChunk, chunk);
  }

  return v19;
}

@end