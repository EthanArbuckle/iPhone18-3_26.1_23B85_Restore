@interface PVDocumentWrapper
- (PVDocumentWrapper)initWithOZXDocument:(void *)a3 forKey:(id)a4;
- (void)dealloc;
@end

@implementation PVDocumentWrapper

- (PVDocumentWrapper)initWithOZXDocument:(void *)a3 forKey:(id)a4
{
  v6.receiver = self;
  v6.super_class = PVDocumentWrapper;
  result = [(PVDocumentWrapper *)&v6 init:a3];
  if (result)
  {
    result->_ozxDocument = a3;
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