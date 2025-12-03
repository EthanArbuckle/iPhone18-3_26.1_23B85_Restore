@interface PXStoryConcreteChapterCollectionEditTransaction
- (PXStoryConcreteChapterCollectionEditTransaction)init;
- (PXStoryConcreteChapterCollectionEditTransaction)initWithOriginalChapterCollection:(id)collection edits:(id)edits;
@end

@implementation PXStoryConcreteChapterCollectionEditTransaction

- (PXStoryConcreteChapterCollectionEditTransaction)initWithOriginalChapterCollection:(id)collection edits:(id)edits
{
  collectionCopy = collection;
  editsCopy = edits;
  v14.receiver = self;
  v14.super_class = PXStoryConcreteChapterCollectionEditTransaction;
  v9 = [(PXStoryConcreteChapterCollectionEditTransaction *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_originalChapterCollection, collection);
    v11 = [editsCopy copy];
    edits = v10->_edits;
    v10->_edits = v11;
  }

  return v10;
}

- (PXStoryConcreteChapterCollectionEditTransaction)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryChapterCollectionEdit.m" lineNumber:105 description:{@"%s is not available as initializer", "-[PXStoryConcreteChapterCollectionEditTransaction init]"}];

  abort();
}

@end