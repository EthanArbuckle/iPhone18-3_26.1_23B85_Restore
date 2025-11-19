@interface TSKAddedToDocumentContext_Pasting
- (TSKAddedToDocumentContext_Pasting)init;
- (void)dealloc;
- (void)setTableIDMap:(__CFDictionary *)a3;
@end

@implementation TSKAddedToDocumentContext_Pasting

- (TSKAddedToDocumentContext_Pasting)init
{
  v3.receiver = self;
  v3.super_class = TSKAddedToDocumentContext_Pasting;
  result = [(TSKAddedToDocumentContext_Pasting *)&v3 init];
  if (result)
  {
    result->mTableIDMap = 0;
  }

  return result;
}

- (void)dealloc
{
  mTableIDMap = self->mTableIDMap;
  if (mTableIDMap)
  {
    CFRelease(mTableIDMap);
  }

  v4.receiver = self;
  v4.super_class = TSKAddedToDocumentContext_Pasting;
  [(TSKAddedToDocumentContext_Pasting *)&v4 dealloc];
}

- (void)setTableIDMap:(__CFDictionary *)a3
{
  if (a3)
  {
    CFRetain(a3);
  }

  mTableIDMap = self->mTableIDMap;
  if (mTableIDMap)
  {
    CFRelease(mTableIDMap);
  }

  self->mTableIDMap = a3;
}

@end