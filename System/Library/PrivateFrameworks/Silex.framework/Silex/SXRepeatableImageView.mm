@interface SXRepeatableImageView
- (void)setImage:(id)a3;
@end

@implementation SXRepeatableImageView

- (void)setImage:(id)a3
{
  v4 = MEMORY[0x1E69DC888];
  v5 = a3;
  v6 = [v4 colorWithPatternImage:v5];
  [(SXRepeatableImageView *)self setBackgroundColor:v6];
  [(SXRepeatableImageView *)self setRepeatingImage:v5];
}

@end