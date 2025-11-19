@interface _TPTemplatedColoredImageView
- (void)setTemplateImageColor:(id)a3;
@end

@implementation _TPTemplatedColoredImageView

- (void)setTemplateImageColor:(id)a3
{
  v5 = a3;
  if (self->_templateImageColor != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_templateImageColor, a3);
    v6 = [(_TPTemplatedColoredImageView *)self layer];
    [v6 setContentsMultiplyColor:{-[UIColor CGColor](self->_templateImageColor, "CGColor")}];

    v5 = v7;
  }
}

@end