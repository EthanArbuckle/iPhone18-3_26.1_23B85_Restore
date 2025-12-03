@interface PXStoryConcreteChapterCollectionChapterModification
- (PXStoryConcreteChapterCollectionChapterModification)init;
- (PXStoryConcreteChapterCollectionChapterModification)initWithEditedChapterIdentifier:(id)identifier chapterChangeRequest:(id)request;
@end

@implementation PXStoryConcreteChapterCollectionChapterModification

- (PXStoryConcreteChapterCollectionChapterModification)initWithEditedChapterIdentifier:(id)identifier chapterChangeRequest:(id)request
{
  identifierCopy = identifier;
  requestCopy = request;
  v14.receiver = self;
  v14.super_class = PXStoryConcreteChapterCollectionChapterModification;
  v9 = [(PXStoryConcreteChapterCollectionChapterModification *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_editedChapterIdentifier, identifier);
    v11 = [requestCopy copy];
    chapterChangeRequest = v10->_chapterChangeRequest;
    v10->_chapterChangeRequest = v11;
  }

  return v10;
}

- (PXStoryConcreteChapterCollectionChapterModification)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryChapterCollectionEdit.m" lineNumber:17 description:{@"%s is not available as initializer", "-[PXStoryConcreteChapterCollectionChapterModification init]"}];

  abort();
}

@end