@interface SXImageComponentSizer
- (double)calculateHeightForWidth:(double)width layoutContext:(id)context;
@end

@implementation SXImageComponentSizer

- (double)calculateHeightForWidth:(double)width layoutContext:(id)context
{
  contextCopy = context;
  dOMObjectProvider = [(SXComponentSizer *)self DOMObjectProvider];
  component = [(SXComponentSizer *)self component];
  imageIdentifier = [component imageIdentifier];
  v10 = [dOMObjectProvider imageResourceForIdentifier:imageIdentifier];

  componentLayout = [(SXComponentSizer *)self componentLayout];
  [componentLayout maximumContentWidth];
  v13 = v12;

  widthCopy = width;
  if (v13)
  {
    unitConverter = [contextCopy unitConverter];
    componentLayout2 = [(SXComponentSizer *)self componentLayout];
    maximumContentWidth = [componentLayout2 maximumContentWidth];
    [unitConverter convertValueToPoints:{maximumContentWidth, v18}];
    widthCopy = v19;
  }

  if (widthCopy >= width)
  {
    widthCopy2 = width;
  }

  else
  {
    widthCopy2 = widthCopy;
  }

  [v10 heightForImageWidth:widthCopy2];
  v22 = v21;

  return v22;
}

@end