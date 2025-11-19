@interface PLKImageRendererFormat
+ (id)formatForContextType:(int64_t)a3;
+ (id)formatForContextType:(int64_t)a3 scale:(double)a4;
+ (id)formatForContextType:(int64_t)a3 scale:(double)a4 memoryPool:(id)a5;
+ (id)sharedFormatForLegibilityWithMaximumSize:(CGSize)a3 scale:(double)a4 contentType:(int64_t)a5 legibilityDescriptor:(id)a6;
- (PLKImageRendererFormat)initWithScale:(double)a3 contextType:(int64_t)a4 memoryPool:(id)a5;
- (void)dealloc;
@end

@implementation PLKImageRendererFormat

- (void)dealloc
{
  colorSpace = self->_colorSpace;
  if (colorSpace)
  {
    CGColorSpaceRelease(colorSpace);
    self->_colorSpace = 0;
  }

  v4.receiver = self;
  v4.super_class = PLKImageRendererFormat;
  [(UIGraphicsImageRendererFormat *)&v4 dealloc];
}

+ (id)formatForContextType:(int64_t)a3
{
  v3 = [[a1 alloc] initWithScale:a3 contextType:0 memoryPool:PLKDefaultScreenScale()];

  return v3;
}

+ (id)formatForContextType:(int64_t)a3 scale:(double)a4
{
  v4 = [[a1 alloc] initWithScale:a3 contextType:0 memoryPool:a4];

  return v4;
}

+ (id)formatForContextType:(int64_t)a3 scale:(double)a4 memoryPool:(id)a5
{
  v8 = a5;
  v9 = [[a1 alloc] initWithScale:a3 contextType:v8 memoryPool:a4];

  return v9;
}

- (PLKImageRendererFormat)initWithScale:(double)a3 contextType:(int64_t)a4 memoryPool:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = PLKImageRendererFormat;
  v10 = [(UIGraphicsImageRendererFormat *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(UIGraphicsImageRendererFormat *)v10 setScale:a3];
    v11->_contextType = a4;
    objc_storeStrong(&v11->_memoryPool, a5);
    if (a4 <= 1)
    {
      v11->_colorSpace = CGColorSpaceCreateDeviceRGB();
    }
  }

  return v11;
}

+ (id)sharedFormatForLegibilityWithMaximumSize:(CGSize)a3 scale:(double)a4 contentType:(int64_t)a5 legibilityDescriptor:(id)a6
{
  height = a3.height;
  width = a3.width;
  v11 = [a6 background];
  [v11 sizeForContentSize:{width, height}];
  v13 = v12;
  v15 = v14;

  v16 = [MEMORY[0x277CEC5B0] plk_sharedMemoryPoolForMaxSize:a5 scale:v13 contextType:{v15, a4}];
  v17 = [a1 formatForContextType:a5 scale:v16 memoryPool:a4];

  return v17;
}

@end