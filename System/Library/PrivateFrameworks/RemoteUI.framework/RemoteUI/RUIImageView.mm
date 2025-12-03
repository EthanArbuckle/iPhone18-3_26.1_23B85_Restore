@interface RUIImageView
- (void)setImage:(id)image;
@end

@implementation RUIImageView

- (void)setImage:(id)image
{
  v5.receiver = self;
  v5.super_class = RUIImageView;
  [(RUIImageView *)&v5 setImage:?];
  [(RUIImageView *)self setHidden:image == 0];
}

@end