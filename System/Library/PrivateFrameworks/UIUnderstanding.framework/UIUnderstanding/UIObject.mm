@interface UIObject
- (BOOL)clickabilityDetection;
- (BOOL)focusDetection;
- (CGRect)boundingBox;
- (NSString)elementDetectionLabel;
- (NSString)elementDetectionText;
- (NSString)iconDetectionLabel;
- (NSUUID)uuid;
- (UIObject)initWithCompat:(id)compat;
- (float)clickabilityConfidence;
- (float)elementDetectionConfidence;
- (float)focusConfidence;
- (float)iconDetectionConfidence;
- (id)init:(int64_t)init confidence:(double)confidence text:(id)text boundingBox:(id)box children:(id)children clickable:(BOOL)clickable focused:(BOOL)focused;
@end

@implementation UIObject

- (id)init:(int64_t)init confidence:(double)confidence text:(id)text boundingBox:(id)box children:(id)children clickable:(BOOL)clickable focused:(BOOL)focused
{
  focusedCopy = focused;
  clickableCopy = clickable;
  childrenCopy = children;
  boxCopy = box;
  textCopy = text;
  v19 = [[UIObjectCompat alloc] initWithLabel:init confidence:textCopy text:boxCopy boundingBox:childrenCopy children:clickableCopy clickable:focusedCopy focused:confidence];

  v20 = [(UIObject *)self initWithCompat:v19];
  return v20;
}

- (UIObject)initWithCompat:(id)compat
{
  compatCopy = compat;
  v8.receiver = self;
  v8.super_class = UIObject;
  v5 = [(UIObject *)&v8 init];
  underlyingObject = v5->_underlyingObject;
  v5->_underlyingObject = compatCopy;

  return v5;
}

- (NSUUID)uuid
{
  underlyingObject = [(UIObject *)self underlyingObject];
  v3 = [underlyingObject id];

  return v3;
}

- (CGRect)boundingBox
{
  underlyingObject = [(UIObject *)self underlyingObject];
  boundingBox = [underlyingObject boundingBox];
  [boundingBox rect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (NSString)elementDetectionLabel
{
  underlyingObject = [(UIObject *)self underlyingObject];
  detection = [underlyingObject detection];
  labelString = [detection labelString];

  return labelString;
}

- (NSString)elementDetectionText
{
  underlyingObject = [(UIObject *)self underlyingObject];
  detection = [underlyingObject detection];
  text = [detection text];

  return text;
}

- (float)elementDetectionConfidence
{
  underlyingObject = [(UIObject *)self underlyingObject];
  detection = [underlyingObject detection];
  [detection confidence];
  v5 = v4;

  return v5;
}

- (NSString)iconDetectionLabel
{
  underlyingObject = [(UIObject *)self underlyingObject];
  iconDetection = [underlyingObject iconDetection];

  if (iconDetection)
  {
    underlyingObject2 = [(UIObject *)self underlyingObject];
    iconDetection2 = [underlyingObject2 iconDetection];
    labelString = [iconDetection2 labelString];
  }

  else
  {
    labelString = 0;
  }

  return labelString;
}

- (float)iconDetectionConfidence
{
  underlyingObject = [(UIObject *)self underlyingObject];
  iconDetection = [underlyingObject iconDetection];

  if (!iconDetection)
  {
    return 0.0;
  }

  underlyingObject2 = [(UIObject *)self underlyingObject];
  iconDetection2 = [underlyingObject2 iconDetection];
  [iconDetection2 confidence];
  v8 = v7;

  return v8;
}

- (BOOL)clickabilityDetection
{
  underlyingObject = [(UIObject *)self underlyingObject];
  clickDetection = [underlyingObject clickDetection];

  if (!clickDetection)
  {
    return 0;
  }

  underlyingObject2 = [(UIObject *)self underlyingObject];
  clickDetection2 = [underlyingObject2 clickDetection];
  clickable = [clickDetection2 clickable];

  return clickable;
}

- (float)clickabilityConfidence
{
  underlyingObject = [(UIObject *)self underlyingObject];
  clickDetection = [underlyingObject clickDetection];

  if (!clickDetection)
  {
    return 0.0;
  }

  underlyingObject2 = [(UIObject *)self underlyingObject];
  clickDetection2 = [underlyingObject2 clickDetection];
  [clickDetection2 confidence];
  v8 = v7;

  return v8;
}

- (BOOL)focusDetection
{
  underlyingObject = [(UIObject *)self underlyingObject];
  focusDetection = [underlyingObject focusDetection];

  if (!focusDetection)
  {
    return 0;
  }

  underlyingObject2 = [(UIObject *)self underlyingObject];
  focusDetection2 = [underlyingObject2 focusDetection];
  focused = [focusDetection2 focused];

  return focused;
}

- (float)focusConfidence
{
  underlyingObject = [(UIObject *)self underlyingObject];
  focusDetection = [underlyingObject focusDetection];

  if (!focusDetection)
  {
    return 0.0;
  }

  underlyingObject2 = [(UIObject *)self underlyingObject];
  focusDetection2 = [underlyingObject2 focusDetection];
  [focusDetection2 confidence];
  v8 = v7;

  return v8;
}

@end