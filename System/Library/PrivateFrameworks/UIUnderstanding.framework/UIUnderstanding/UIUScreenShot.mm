@interface UIUScreenShot
- (UIUScreenShot)initWithContents:(id)contents;
@end

@implementation UIUScreenShot

- (UIUScreenShot)initWithContents:(id)contents
{
  contentsCopy = contents;
  v8.receiver = self;
  v8.super_class = UIUScreenShot;
  v5 = [(UIUScreenShot *)&v8 init];
  underlyingObject = v5->_underlyingObject;
  v5->_underlyingObject = contentsCopy;

  return v5;
}

@end