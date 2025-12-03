@interface VKScreenLabelFeature
- (CGPoint)position;
- (VKScreenLabelFeature)initWithCGImage:(CGImage *)image scale:(double)scale type:(unsigned int)type;
- (void)dealloc;
@end

@implementation VKScreenLabelFeature

- (CGPoint)position
{
  objc_copyStruct(v4, &self->_position, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)dealloc
{
  image = self->_image;
  if (image)
  {
    CGImageRelease(image);
  }

  v4.receiver = self;
  v4.super_class = VKScreenLabelFeature;
  [(VKScreenLabelFeature *)&v4 dealloc];
}

- (VKScreenLabelFeature)initWithCGImage:(CGImage *)image scale:(double)scale type:(unsigned int)type
{
  v11.receiver = self;
  v11.super_class = VKScreenLabelFeature;
  v8 = [(VKScreenLabelFeature *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    v8->_image = CGImageRetain(image);
    v9->_scale = scale;
  }

  return v9;
}

@end