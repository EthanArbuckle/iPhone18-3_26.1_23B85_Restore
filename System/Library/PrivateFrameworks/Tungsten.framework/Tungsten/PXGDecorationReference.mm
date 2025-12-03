@interface PXGDecorationReference
- (PXGDecorationReference)init;
- (PXGDecorationReference)initWithDecoratedSpriteReference:(id)reference decorationType:(int64_t)type;
@end

@implementation PXGDecorationReference

- (PXGDecorationReference)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXGDecoratingLayout.m" lineNumber:1187 description:{@"%s is not available as initializer", "-[PXGDecorationReference init]"}];

  abort();
}

- (PXGDecorationReference)initWithDecoratedSpriteReference:(id)reference decorationType:(int64_t)type
{
  referenceCopy = reference;
  v11.receiver = self;
  v11.super_class = PXGDecorationReference;
  v8 = [(PXGDecorationReference *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_decoratedSpriteReference, reference);
    v9->_decorationType = type;
  }

  return v9;
}

@end