@interface PLKImageRendererFormat
+ (id)formatForContextType:(int64_t)type;
+ (id)formatForContextType:(int64_t)type scale:(double)scale;
+ (id)formatForContextType:(int64_t)type scale:(double)scale memoryPool:(id)pool;
+ (id)sharedFormatForLegibilityWithMaximumSize:(CGSize)size scale:(double)scale contentType:(int64_t)type legibilityDescriptor:(id)descriptor;
- (PLKImageRendererFormat)initWithScale:(double)scale contextType:(int64_t)type memoryPool:(id)pool;
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

+ (id)formatForContextType:(int64_t)type
{
  v3 = [[self alloc] initWithScale:type contextType:0 memoryPool:PLKDefaultScreenScale()];

  return v3;
}

+ (id)formatForContextType:(int64_t)type scale:(double)scale
{
  v4 = [[self alloc] initWithScale:type contextType:0 memoryPool:scale];

  return v4;
}

+ (id)formatForContextType:(int64_t)type scale:(double)scale memoryPool:(id)pool
{
  poolCopy = pool;
  v9 = [[self alloc] initWithScale:type contextType:poolCopy memoryPool:scale];

  return v9;
}

- (PLKImageRendererFormat)initWithScale:(double)scale contextType:(int64_t)type memoryPool:(id)pool
{
  poolCopy = pool;
  v13.receiver = self;
  v13.super_class = PLKImageRendererFormat;
  v10 = [(UIGraphicsImageRendererFormat *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(UIGraphicsImageRendererFormat *)v10 setScale:scale];
    v11->_contextType = type;
    objc_storeStrong(&v11->_memoryPool, pool);
    if (type <= 1)
    {
      v11->_colorSpace = CGColorSpaceCreateDeviceRGB();
    }
  }

  return v11;
}

+ (id)sharedFormatForLegibilityWithMaximumSize:(CGSize)size scale:(double)scale contentType:(int64_t)type legibilityDescriptor:(id)descriptor
{
  height = size.height;
  width = size.width;
  background = [descriptor background];
  [background sizeForContentSize:{width, height}];
  v13 = v12;
  v15 = v14;

  v16 = [MEMORY[0x277CEC5B0] plk_sharedMemoryPoolForMaxSize:type scale:v13 contextType:{v15, scale}];
  v17 = [self formatForContextType:type scale:v16 memoryPool:scale];

  return v17;
}

@end