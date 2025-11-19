@interface UIObject
- (BOOL)clickabilityDetection;
- (BOOL)focusDetection;
- (CGRect)boundingBox;
- (NSString)elementDetectionLabel;
- (NSString)elementDetectionText;
- (NSString)iconDetectionLabel;
- (NSUUID)uuid;
- (UIObject)initWithCompat:(id)a3;
- (float)clickabilityConfidence;
- (float)elementDetectionConfidence;
- (float)focusConfidence;
- (float)iconDetectionConfidence;
- (id)init:(int64_t)a3 confidence:(double)a4 text:(id)a5 boundingBox:(id)a6 children:(id)a7 clickable:(BOOL)a8 focused:(BOOL)a9;
@end

@implementation UIObject

- (id)init:(int64_t)a3 confidence:(double)a4 text:(id)a5 boundingBox:(id)a6 children:(id)a7 clickable:(BOOL)a8 focused:(BOOL)a9
{
  v9 = a9;
  v10 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = [[UIObjectCompat alloc] initWithLabel:a3 confidence:v18 text:v17 boundingBox:v16 children:v10 clickable:v9 focused:a4];

  v20 = [(UIObject *)self initWithCompat:v19];
  return v20;
}

- (UIObject)initWithCompat:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UIObject;
  v5 = [(UIObject *)&v8 init];
  underlyingObject = v5->_underlyingObject;
  v5->_underlyingObject = v4;

  return v5;
}

- (NSUUID)uuid
{
  v2 = [(UIObject *)self underlyingObject];
  v3 = [v2 id];

  return v3;
}

- (CGRect)boundingBox
{
  v2 = [(UIObject *)self underlyingObject];
  v3 = [v2 boundingBox];
  [v3 rect];
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
  v2 = [(UIObject *)self underlyingObject];
  v3 = [v2 detection];
  v4 = [v3 labelString];

  return v4;
}

- (NSString)elementDetectionText
{
  v2 = [(UIObject *)self underlyingObject];
  v3 = [v2 detection];
  v4 = [v3 text];

  return v4;
}

- (float)elementDetectionConfidence
{
  v2 = [(UIObject *)self underlyingObject];
  v3 = [v2 detection];
  [v3 confidence];
  v5 = v4;

  return v5;
}

- (NSString)iconDetectionLabel
{
  v3 = [(UIObject *)self underlyingObject];
  v4 = [v3 iconDetection];

  if (v4)
  {
    v5 = [(UIObject *)self underlyingObject];
    v6 = [v5 iconDetection];
    v7 = [v6 labelString];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (float)iconDetectionConfidence
{
  v3 = [(UIObject *)self underlyingObject];
  v4 = [v3 iconDetection];

  if (!v4)
  {
    return 0.0;
  }

  v5 = [(UIObject *)self underlyingObject];
  v6 = [v5 iconDetection];
  [v6 confidence];
  v8 = v7;

  return v8;
}

- (BOOL)clickabilityDetection
{
  v3 = [(UIObject *)self underlyingObject];
  v4 = [v3 clickDetection];

  if (!v4)
  {
    return 0;
  }

  v5 = [(UIObject *)self underlyingObject];
  v6 = [v5 clickDetection];
  v7 = [v6 clickable];

  return v7;
}

- (float)clickabilityConfidence
{
  v3 = [(UIObject *)self underlyingObject];
  v4 = [v3 clickDetection];

  if (!v4)
  {
    return 0.0;
  }

  v5 = [(UIObject *)self underlyingObject];
  v6 = [v5 clickDetection];
  [v6 confidence];
  v8 = v7;

  return v8;
}

- (BOOL)focusDetection
{
  v3 = [(UIObject *)self underlyingObject];
  v4 = [v3 focusDetection];

  if (!v4)
  {
    return 0;
  }

  v5 = [(UIObject *)self underlyingObject];
  v6 = [v5 focusDetection];
  v7 = [v6 focused];

  return v7;
}

- (float)focusConfidence
{
  v3 = [(UIObject *)self underlyingObject];
  v4 = [v3 focusDetection];

  if (!v4)
  {
    return 0.0;
  }

  v5 = [(UIObject *)self underlyingObject];
  v6 = [v5 focusDetection];
  [v6 confidence];
  v8 = v7;

  return v8;
}

@end