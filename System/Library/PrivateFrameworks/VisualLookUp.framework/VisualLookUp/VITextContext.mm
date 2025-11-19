@interface VITextContext
- (VITextContext)initWithSurroundingText:(id)a3 normalizedBoundingBoxes:(id)a4;
@end

@implementation VITextContext

- (VITextContext)initWithSurroundingText:(id)a3 normalizedBoundingBoxes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = VITextContext;
  v8 = [(VITextContext *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    surroundingText = v8->_surroundingText;
    v8->_surroundingText = v9;

    v11 = [v7 copy];
    normalizedBoundingBoxes = v8->_normalizedBoundingBoxes;
    v8->_normalizedBoundingBoxes = v11;
  }

  return v8;
}

@end