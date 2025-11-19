@interface UIUDedupeElement
- (BOOL)isDuplicate;
- (CGRect)rect;
- (UIUDedupeElement)initWithContents:(id)a3;
@end

@implementation UIUDedupeElement

- (UIUDedupeElement)initWithContents:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UIUDedupeElement;
  v5 = [(UIUDedupeElement *)&v8 init];
  underlyingObject = v5->_underlyingObject;
  v5->_underlyingObject = v4;

  return v5;
}

- (BOOL)isDuplicate
{
  v2 = [(UIUDedupeElement *)self underlyingObject];
  v3 = [v2 isDuplicate];

  return v3;
}

- (CGRect)rect
{
  v2 = [(UIUDedupeElement *)self underlyingObject];
  v3 = [v2 uiObject];
  v4 = [v3 boundingBox];
  [v4 rect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

@end