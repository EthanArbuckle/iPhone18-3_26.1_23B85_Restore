@interface CGImageRefWithFormat
- (CGImageRefWithFormat)initWithImage:(CGImage *)image andFormat:(__CFString *)sourceImageFormatUTI;
- (void)dealloc;
@end

@implementation CGImageRefWithFormat

- (CGImageRefWithFormat)initWithImage:(CGImage *)image andFormat:(__CFString *)sourceImageFormatUTI
{
  v10.receiver = self;
  v10.super_class = CGImageRefWithFormat;
  v6 = [(CGImageRefWithFormat *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_imageRef = image;
    v6->_sourceImageFormatUTI = sourceImageFormatUTI;
    if (image)
    {
      CFRetain(image);
      sourceImageFormatUTI = v7->_sourceImageFormatUTI;
    }

    if (sourceImageFormatUTI)
    {
      CFRetain(sourceImageFormatUTI);
    }

    v8 = v7;
  }

  return v7;
}

- (void)dealloc
{
  imageRef = self->_imageRef;
  if (imageRef)
  {
    CFRelease(imageRef);
  }

  sourceImageFormatUTI = self->_sourceImageFormatUTI;
  if (sourceImageFormatUTI)
  {
    CFRelease(sourceImageFormatUTI);
  }

  v5.receiver = self;
  v5.super_class = CGImageRefWithFormat;
  [(CGImageRefWithFormat *)&v5 dealloc];
}

@end