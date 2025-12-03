@interface UIUDedupeElement
- (BOOL)isDuplicate;
- (CGRect)rect;
- (UIUDedupeElement)initWithContents:(id)contents;
@end

@implementation UIUDedupeElement

- (UIUDedupeElement)initWithContents:(id)contents
{
  contentsCopy = contents;
  v8.receiver = self;
  v8.super_class = UIUDedupeElement;
  v5 = [(UIUDedupeElement *)&v8 init];
  underlyingObject = v5->_underlyingObject;
  v5->_underlyingObject = contentsCopy;

  return v5;
}

- (BOOL)isDuplicate
{
  underlyingObject = [(UIUDedupeElement *)self underlyingObject];
  isDuplicate = [underlyingObject isDuplicate];

  return isDuplicate;
}

- (CGRect)rect
{
  underlyingObject = [(UIUDedupeElement *)self underlyingObject];
  uiObject = [underlyingObject uiObject];
  boundingBox = [uiObject boundingBox];
  [boundingBox rect];
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