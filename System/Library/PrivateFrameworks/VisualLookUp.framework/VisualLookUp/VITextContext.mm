@interface VITextContext
- (VITextContext)initWithSurroundingText:(id)text normalizedBoundingBoxes:(id)boxes;
@end

@implementation VITextContext

- (VITextContext)initWithSurroundingText:(id)text normalizedBoundingBoxes:(id)boxes
{
  textCopy = text;
  boxesCopy = boxes;
  v14.receiver = self;
  v14.super_class = VITextContext;
  v8 = [(VITextContext *)&v14 init];
  if (v8)
  {
    v9 = [textCopy copy];
    surroundingText = v8->_surroundingText;
    v8->_surroundingText = v9;

    v11 = [boxesCopy copy];
    normalizedBoundingBoxes = v8->_normalizedBoundingBoxes;
    v8->_normalizedBoundingBoxes = v11;
  }

  return v8;
}

@end