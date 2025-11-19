@interface PXStoryConcreteChapterCollectionEditTransaction
- (PXStoryConcreteChapterCollectionEditTransaction)init;
- (PXStoryConcreteChapterCollectionEditTransaction)initWithOriginalChapterCollection:(id)a3 edits:(id)a4;
@end

@implementation PXStoryConcreteChapterCollectionEditTransaction

- (PXStoryConcreteChapterCollectionEditTransaction)initWithOriginalChapterCollection:(id)a3 edits:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PXStoryConcreteChapterCollectionEditTransaction;
  v9 = [(PXStoryConcreteChapterCollectionEditTransaction *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_originalChapterCollection, a3);
    v11 = [v8 copy];
    edits = v10->_edits;
    v10->_edits = v11;
  }

  return v10;
}

- (PXStoryConcreteChapterCollectionEditTransaction)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryChapterCollectionEdit.m" lineNumber:105 description:{@"%s is not available as initializer", "-[PXStoryConcreteChapterCollectionEditTransaction init]"}];

  abort();
}

@end