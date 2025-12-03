@interface _TPTemplatedColoredImageView
- (void)setTemplateImageColor:(id)color;
@end

@implementation _TPTemplatedColoredImageView

- (void)setTemplateImageColor:(id)color
{
  colorCopy = color;
  if (self->_templateImageColor != colorCopy)
  {
    v7 = colorCopy;
    objc_storeStrong(&self->_templateImageColor, color);
    layer = [(_TPTemplatedColoredImageView *)self layer];
    [layer setContentsMultiplyColor:{-[UIColor CGColor](self->_templateImageColor, "CGColor")}];

    colorCopy = v7;
  }
}

@end