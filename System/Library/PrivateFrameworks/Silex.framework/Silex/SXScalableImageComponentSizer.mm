@interface SXScalableImageComponentSizer
- (double)calculateHeightForWidth:(double)a3 layoutContext:(id)a4;
@end

@implementation SXScalableImageComponentSizer

- (double)calculateHeightForWidth:(double)a3 layoutContext:(id)a4
{
  v6 = [(SXComponentSizer *)self DOMObjectProvider];
  v7 = [(SXComponentSizer *)self component];
  v8 = [v7 imageIdentifier];
  v9 = [v6 imageResourceForIdentifier:v8];

  [v9 heightForImageWidth:a3];
  v11 = v10;

  return v11;
}

@end