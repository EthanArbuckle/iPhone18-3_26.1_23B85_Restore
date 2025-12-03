@interface PVDocumentWrapper
- (PVDocumentWrapper)initWithOZXDocument:(void *)document forKey:(id)key;
- (void)dealloc;
@end

@implementation PVDocumentWrapper

- (PVDocumentWrapper)initWithOZXDocument:(void *)document forKey:(id)key
{
  v6.receiver = self;
  v6.super_class = PVDocumentWrapper;
  result = [(PVDocumentWrapper *)&v6 init:document];
  if (result)
  {
    result->_ozxDocument = document;
  }

  return result;
}

- (void)dealloc
{
  if (self->_ozxDocument)
  {
    v3 = PVDocumentAccessController::INSTANCE(self);
    PVDocumentAccessController::ReleaseOZXDocument(v3, self->_ozxDocument);
  }

  v4.receiver = self;
  v4.super_class = PVDocumentWrapper;
  [(PVDocumentWrapper *)&v4 dealloc];
}

@end