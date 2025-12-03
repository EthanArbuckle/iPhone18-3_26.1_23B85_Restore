@interface SXScalableImageComponentSizer
- (double)calculateHeightForWidth:(double)width layoutContext:(id)context;
@end

@implementation SXScalableImageComponentSizer

- (double)calculateHeightForWidth:(double)width layoutContext:(id)context
{
  dOMObjectProvider = [(SXComponentSizer *)self DOMObjectProvider];
  component = [(SXComponentSizer *)self component];
  imageIdentifier = [component imageIdentifier];
  v9 = [dOMObjectProvider imageResourceForIdentifier:imageIdentifier];

  [v9 heightForImageWidth:width];
  v11 = v10;

  return v11;
}

@end