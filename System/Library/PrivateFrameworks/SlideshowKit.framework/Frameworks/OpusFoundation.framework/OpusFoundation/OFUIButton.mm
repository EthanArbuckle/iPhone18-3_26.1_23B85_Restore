@interface OFUIButton
+ (id)button;
- (void)setImage:(id)a3;
@end

@implementation OFUIButton

+ (id)button
{
  v2 = objc_opt_class();

  return [v2 buttonWithType:0];
}

- (void)setImage:(id)a3
{
  [(OFUIButton *)self setImage:a3 forState:0];

  [(OFUIButton *)self setImage:a3 forState:7];
}

@end