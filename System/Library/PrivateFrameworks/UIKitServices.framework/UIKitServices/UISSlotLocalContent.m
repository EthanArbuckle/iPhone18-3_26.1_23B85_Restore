@interface UISSlotLocalContent
+ (id)contentWithDrawing:(id)a3 scale:(unsigned __int8)a4 range:(unint64_t)a5;
+ (id)contentWithDrawing:(id)a3 style:(id)a4;
+ (id)contentWithImage:(CGImage *)a3 scale:(unsigned __int8)a4;
- (CGSize)contentSize;
- (UISSlotLocalContent)initWithDrawing:(id)a3 scale:(unsigned __int8)a4 range:(unint64_t)a5;
- (UISSlotLocalContent)initWithImage:(CGImage *)a3 scale:(unsigned __int8)a4;
- (void)dealloc;
@end

@implementation UISSlotLocalContent

- (UISSlotLocalContent)initWithDrawing:(id)a3 scale:(unsigned __int8)a4 range:(unint64_t)a5
{
  v6 = a4;
  v8 = a3;
  v14.receiver = self;
  v14.super_class = UISSlotLocalContent;
  v9 = [(UISSlotLocalContent *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_contentScale = v6;
    [v8 drawingSize];
    v10->_contentSize.width = v11;
    v10->_contentSize.height = v12;
    v10->_localImage = UISCreateImageFromDrawing(v8, a5, v6);
  }

  return v10;
}

- (UISSlotLocalContent)initWithImage:(CGImage *)a3 scale:(unsigned __int8)a4
{
  v4 = a4;
  v11.receiver = self;
  v11.super_class = UISSlotLocalContent;
  v6 = [(UISSlotLocalContent *)&v11 init];
  v7 = v6;
  if (v6)
  {
    v6->_contentScale = v4;
    v8 = (CGImageGetWidth(a3) / v4);
    Height = CGImageGetHeight(a3);
    v7->_contentSize.width = v8;
    v7->_contentSize.height = (Height / v4);
    v7->_localImage = CGImageRetain(a3);
  }

  return v7;
}

+ (id)contentWithDrawing:(id)a3 scale:(unsigned __int8)a4 range:(unint64_t)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [[UISSlotLocalContent alloc] initWithDrawing:v7 scale:v6 range:a5];

  return v8;
}

+ (id)contentWithDrawing:(id)a3 style:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [UISSlotLocalContent alloc];
  v8 = [v5 displayScale];
  v9 = [v5 displayRange];

  v10 = [(UISSlotLocalContent *)v7 initWithDrawing:v6 scale:v8 range:v9];

  return v10;
}

+ (id)contentWithImage:(CGImage *)a3 scale:(unsigned __int8)a4
{
  v4 = [[UISSlotLocalContent alloc] initWithImage:a3 scale:a4];

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