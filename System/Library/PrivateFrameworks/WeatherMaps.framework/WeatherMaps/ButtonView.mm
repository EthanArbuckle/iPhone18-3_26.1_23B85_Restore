@interface ButtonView
- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)recognizedHover:(id)hover;
@end

@implementation ButtonView

- (void)recognizedHover:(id)hover
{
  hoverCopy = hover;
  selfCopy = self;
  sub_220E328EC(hoverCopy);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  sub_220E32A78(width, height);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_220E32C98(configurationCopy);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

@end