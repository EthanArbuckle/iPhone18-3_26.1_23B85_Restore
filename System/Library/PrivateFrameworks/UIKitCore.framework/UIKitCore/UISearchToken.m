@interface UISearchToken
+ (UISearchToken)tokenWithIcon:(UIImage *)icon text:(NSString *)text;
+ (UISearchToken)tokenWithImage:(id)a3;
- (id)_initToken;
@end

@implementation UISearchToken

- (id)_initToken
{
  v3.receiver = self;
  v3.super_class = UISearchToken;
  return [(UISearchToken *)&v3 init];
}

+ (UISearchToken)tokenWithImage:(id)a3
{
  v3 = a3;
  v4 = [[_UISearchToken alloc] _initToken];
  [v4 setImage:v3];

  return v4;
}

+ (UISearchToken)tokenWithIcon:(UIImage *)icon text:(NSString *)text
{
  v5 = text;
  v6 = icon;
  v7 = [[_UISearchToken alloc] _initToken];
  [v7 setImage:v6];

  [v7 setText:v5];

  return v7;
}

@end