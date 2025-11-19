@interface PXAssistantTraitCollection
- (PXAssistantTraitCollection)init;
- (PXAssistantTraitCollection)initWithDisplayScale:(double)a3 isRTL:(BOOL)a4;
@end

@implementation PXAssistantTraitCollection

- (PXAssistantTraitCollection)initWithDisplayScale:(double)a3 isRTL:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = PXAssistantTraitCollection;
  result = [(PXAssistantTraitCollection *)&v7 init];
  if (result)
  {
    result->_displayScale = a3;
    result->_isRTL = a4;
  }

  return result;
}

- (PXAssistantTraitCollection)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXAssistantTraitCollection.m" lineNumber:17 description:{@"%s is not available as initializer", "-[PXAssistantTraitCollection init]"}];

  abort();
}

@end