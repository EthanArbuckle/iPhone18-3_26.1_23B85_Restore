@interface SXRepeatableImageView
- (void)setImage:(id)image;
@end

@implementation SXRepeatableImageView

- (void)setImage:(id)image
{
  v4 = MEMORY[0x1E69DC888];
  imageCopy = image;
  v6 = [v4 colorWithPatternImage:imageCopy];
  [(SXRepeatableImageView *)self setBackgroundColor:v6];
  [(SXRepeatableImageView *)self setRepeatingImage:imageCopy];
}

@end