@interface UISearchToken
+ (UISearchToken)tokenWithIcon:(UIImage *)icon text:(NSString *)text;
+ (UISearchToken)tokenWithImage:(id)image;
- (id)_initToken;
@end

@implementation UISearchToken

- (id)_initToken
{
  v3.receiver = self;
  v3.super_class = UISearchToken;
  return [(UISearchToken *)&v3 init];
}

+ (UISearchToken)tokenWithImage:(id)image
{
  imageCopy = image;
  _initToken = [[_UISearchToken alloc] _initToken];
  [_initToken setImage:imageCopy];

  return _initToken;
}

+ (UISearchToken)tokenWithIcon:(UIImage *)icon text:(NSString *)text
{
  v5 = text;
  v6 = icon;
  _initToken = [[_UISearchToken alloc] _initToken];
  [_initToken setImage:v6];

  [_initToken setText:v5];

  return _initToken;
}

@end