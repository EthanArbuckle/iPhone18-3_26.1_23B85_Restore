@interface TSKAddedToDocumentContext_Importing
- (TSKAddedToDocumentContext_Importing)initWithImporterID:(id)d;
- (void)dealloc;
@end

@implementation TSKAddedToDocumentContext_Importing

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKAddedToDocumentContext_Importing;
  [(TSKAddedToDocumentContext_Importing *)&v3 dealloc];
}

- (TSKAddedToDocumentContext_Importing)initWithImporterID:(id)d
{
  v6.receiver = self;
  v6.super_class = TSKAddedToDocumentContext_Importing;
  v4 = [(TSKAddedToDocumentContext_Importing *)&v6 init];
  if (v4)
  {
    v4->mImporterID = d;
  }

  return v4;
}

@end