@interface UIUScreenShot
- (UIUScreenShot)initWithContents:(id)a3;
@end

@implementation UIUScreenShot

- (UIUScreenShot)initWithContents:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UIUScreenShot;
  v5 = [(UIUScreenShot *)&v8 init];
  underlyingObject = v5->_underlyingObject;
  v5->_underlyingObject = v4;

  return v5;
}

@end