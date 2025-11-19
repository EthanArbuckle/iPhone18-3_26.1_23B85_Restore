@interface PXGDecorationReference
- (PXGDecorationReference)init;
- (PXGDecorationReference)initWithDecoratedSpriteReference:(id)a3 decorationType:(int64_t)a4;
@end

@implementation PXGDecorationReference

- (PXGDecorationReference)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGDecoratingLayout.m" lineNumber:1187 description:{@"%s is not available as initializer", "-[PXGDecorationReference init]"}];

  abort();
}

- (PXGDecorationReference)initWithDecoratedSpriteReference:(id)a3 decorationType:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PXGDecorationReference;
  v8 = [(PXGDecorationReference *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_decoratedSpriteReference, a3);
    v9->_decorationType = a4;
  }

  return v9;
}

@end