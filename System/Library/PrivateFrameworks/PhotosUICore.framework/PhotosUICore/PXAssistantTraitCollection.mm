@interface PXAssistantTraitCollection
- (PXAssistantTraitCollection)init;
- (PXAssistantTraitCollection)initWithDisplayScale:(double)scale isRTL:(BOOL)l;
@end

@implementation PXAssistantTraitCollection

- (PXAssistantTraitCollection)initWithDisplayScale:(double)scale isRTL:(BOOL)l
{
  v7.receiver = self;
  v7.super_class = PXAssistantTraitCollection;
  result = [(PXAssistantTraitCollection *)&v7 init];
  if (result)
  {
    result->_displayScale = scale;
    result->_isRTL = l;
  }

  return result;
}

- (PXAssistantTraitCollection)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAssistantTraitCollection.m" lineNumber:17 description:{@"%s is not available as initializer", "-[PXAssistantTraitCollection init]"}];

  abort();
}

@end