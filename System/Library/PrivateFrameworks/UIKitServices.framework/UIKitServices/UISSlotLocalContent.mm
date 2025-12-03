@interface UISSlotLocalContent
+ (id)contentWithDrawing:(id)drawing scale:(unsigned __int8)scale range:(unint64_t)range;
+ (id)contentWithDrawing:(id)drawing style:(id)style;
+ (id)contentWithImage:(CGImage *)image scale:(unsigned __int8)scale;
- (CGSize)contentSize;
- (UISSlotLocalContent)initWithDrawing:(id)drawing scale:(unsigned __int8)scale range:(unint64_t)range;
- (UISSlotLocalContent)initWithImage:(CGImage *)image scale:(unsigned __int8)scale;
- (void)dealloc;
@end

@implementation UISSlotLocalContent

- (UISSlotLocalContent)initWithDrawing:(id)drawing scale:(unsigned __int8)scale range:(unint64_t)range
{
  scaleCopy = scale;
  drawingCopy = drawing;
  v14.receiver = self;
  v14.super_class = UISSlotLocalContent;
  v9 = [(UISSlotLocalContent *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_contentScale = scaleCopy;
    [drawingCopy drawingSize];
    v10->_contentSize.width = v11;
    v10->_contentSize.height = v12;
    v10->_localImage = UISCreateImageFromDrawing(drawingCopy, range, scaleCopy);
  }

  return v10;
}

- (UISSlotLocalContent)initWithImage:(CGImage *)image scale:(unsigned __int8)scale
{
  scaleCopy = scale;
  v11.receiver = self;
  v11.super_class = UISSlotLocalContent;
  v6 = [(UISSlotLocalContent *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_contentScale = scaleCopy;
    v8 = (CGImageGetWidth(image) / scaleCopy);
    Height = CGImageGetHeight(image);
    v7->_contentSize.width = v8;
    v7->_contentSize.height = (Height / scaleCopy);
    v7->_localImage = CGImageRetain(image);
  }

  return v7;
}

+ (id)contentWithDrawing:(id)drawing scale:(unsigned __int8)scale range:(unint64_t)range
{
  scaleCopy = scale;
  drawingCopy = drawing;
  v8 = [[UISSlotLocalContent alloc] initWithDrawing:drawingCopy scale:scaleCopy range:range];

  return v8;
}

+ (id)contentWithDrawing:(id)drawing style:(id)style
{
  styleCopy = style;
  drawingCopy = drawing;
  v7 = [UISSlotLocalContent alloc];
  displayScale = [styleCopy displayScale];
  displayRange = [styleCopy displayRange];

  v10 = [(UISSlotLocalContent *)v7 initWithDrawing:drawingCopy scale:displayScale range:displayRange];

  return v10;
}

+ (id)contentWithImage:(CGImage *)image scale:(unsigned __int8)scale
{
  v4 = [[UISSlotLocalContent alloc] initWithImage:image scale:scale];

  return v4;
}

- (void)dealloc
{
  CGImageRelease(self->_localImage);
  v3.receiver = self;
  v3.super_class = UISSlotLocalContent;
  [(UISSlotLocalContent *)&v3 dealloc];
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end