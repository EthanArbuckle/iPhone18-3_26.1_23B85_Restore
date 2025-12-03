@interface OFUIButton
+ (id)button;
- (void)setImage:(id)image;
@end

@implementation OFUIButton

+ (id)button
{
  v2 = objc_opt_class();

  return [v2 buttonWithType:0];
}

- (void)setImage:(id)image
{
  [(OFUIButton *)self setImage:image forState:0];

  [(OFUIButton *)self setImage:image forState:7];
}

@end