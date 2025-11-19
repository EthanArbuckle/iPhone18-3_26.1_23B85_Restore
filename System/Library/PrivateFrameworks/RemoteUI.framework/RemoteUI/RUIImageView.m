@interface RUIImageView
- (void)setImage:(id)a3;
@end

@implementation RUIImageView

- (void)setImage:(id)a3
{
  v5.receiver = self;
  v5.super_class = RUIImageView;
  [(RUIImageView *)&v5 setImage:?];
  [(RUIImageView *)self setHidden:a3 == 0];
}

@end