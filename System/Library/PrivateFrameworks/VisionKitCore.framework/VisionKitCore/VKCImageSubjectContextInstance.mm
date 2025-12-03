@interface VKCImageSubjectContextInstance
- (CGRect)cachedNormalizedPathContentsRect;
- (CGRect)cachedTopLevelNormalizedPathContentsRect;
- (CGSize)imageSize;
- (VKCImageSubjectContextInstance)init;
- (id)normalizedSubjectPathWithContentsRect:(CGRect)rect topLevelOnly:(BOOL)only;
- (void)dealloc;
- (void)setMaskImage:(CGImage *)image;
- (void)setOrientedMaskImage:(CGImage *)image;
@end

@implementation VKCImageSubjectContextInstance

- (void)dealloc
{
  CGImageRelease(self->_orientedMaskImage);
  CGImageRelease(self->_maskImage);
  v3.receiver = self;
  v3.super_class = VKCImageSubjectContextInstance;
  [(VKCImageSubjectContextInstance *)&v3 dealloc];
}

- (VKCImageSubjectContextInstance)init
{
  v5.receiver = self;
  v5.super_class = VKCImageSubjectContextInstance;
  result = [(VKCImageSubjectContextInstance *)&v5 init];
  if (result)
  {
    v3 = *MEMORY[0x1E695F050];
    v4 = *(MEMORY[0x1E695F050] + 16);
    result->_cachedNormalizedPathContentsRect.origin = *MEMORY[0x1E695F050];
    result->_cachedNormalizedPathContentsRect.size = v4;
    result->_cachedTopLevelNormalizedPathContentsRect.origin = v3;
    result->_cachedTopLevelNormalizedPathContentsRect.size = v4;
  }

  return result;
}

- (void)setOrientedMaskImage:(CGImage *)image
{
  orientedMaskImage = self->_orientedMaskImage;
  if (orientedMaskImage != image)
  {
    CGImageRelease(orientedMaskImage);
    self->_orientedMaskImage = image;

    CGImageRetain(image);
  }
}

- (void)setMaskImage:(CGImage *)image
{
  maskImage = self->_maskImage;
  if (maskImage != image)
  {
    CGImageRelease(maskImage);
    self->_maskImage = image;

    CGImageRetain(image);
  }
}

- (id)normalizedSubjectPathWithContentsRect:(CGRect)rect topLevelOnly:(BOOL)only
{
  onlyCopy = only;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (only)
  {
    [(VKCImageSubjectContextInstance *)self cachedTopLevelNormalizedPathContentsRect];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [(VKCImageSubjectContextInstance *)self cachedTopLevelNormalizedPath];
  }

  else
  {
    [(VKCImageSubjectContextInstance *)self cachedNormalizedPathContentsRect];
    v11 = v18;
    v13 = v19;
    v15 = v20;
    v17 = v21;
    [(VKCImageSubjectContextInstance *)self cachedNormalizedPath];
  }
  v22 = ;
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  if (CGRectIsNull(v30) || (v31.origin.x = v11, v31.origin.y = v13, v31.size.width = v15, v31.size.height = v17, v33.origin.x = x, v33.origin.y = y, v33.size.width = width, v33.size.height = height, !CGRectEqualToRect(v31, v33)) || (v23 = v22) == 0)
  {
    if (onlyCopy)
    {
      [(VKCImageSubjectContextInstance *)self baseTopLevelNormalizedSubjectPath];
    }

    else
    {
      [(VKCImageSubjectContextInstance *)self baseNormalizedSubjectPath];
    }
    v24 = ;
    v23 = [v24 copy];
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    v34.origin.x = 0.0;
    v34.origin.y = 0.0;
    v34.size.width = 1.0;
    v34.size.height = 1.0;
    if (!CGRectEqualToRect(v32, v34))
    {
      v25 = [v23 copy];

      [v25 vk_applyTransform:{v28, VKMTransformConvertingRectToRect(v28, 0.0, 1.0, 1.0, x, y, width, height)}];
      v23 = v25;
    }

    if (onlyCopy)
    {
      [(VKCImageSubjectContextInstance *)self setCachedTopLevelNormalizedPathContentsRect:x, y, width, height];
      [(VKCImageSubjectContextInstance *)self setCachedTopLevelNormalizedPath:v23];
    }

    else
    {
      [(VKCImageSubjectContextInstance *)self setCachedNormalizedPathContentsRect:x, y, width, height];
      [(VKCImageSubjectContextInstance *)self setCachedNormalizedPath:v23];
    }
  }

  v26 = [v23 copy];

  return v26;
}

- (CGRect)cachedNormalizedPathContentsRect
{
  x = self->_cachedNormalizedPathContentsRect.origin.x;
  y = self->_cachedNormalizedPathContentsRect.origin.y;
  width = self->_cachedNormalizedPathContentsRect.size.width;
  height = self->_cachedNormalizedPathContentsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)cachedTopLevelNormalizedPathContentsRect
{
  x = self->_cachedTopLevelNormalizedPathContentsRect.origin.x;
  y = self->_cachedTopLevelNormalizedPathContentsRect.origin.y;
  width = self->_cachedTopLevelNormalizedPathContentsRect.size.width;
  height = self->_cachedTopLevelNormalizedPathContentsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end