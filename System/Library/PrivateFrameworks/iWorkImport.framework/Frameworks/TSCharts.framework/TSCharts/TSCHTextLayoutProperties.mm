@interface TSCHTextLayoutProperties
+ (id)defaultPropertiesForWrapWidth:(double)width;
+ (id)placeTitleAtCenterPropertiesForWrapWidth:(double)width;
- (CGSize)maxSize;
- (CGSize)minSize;
- (TSCHTextLayoutProperties)initWithTextFlags:(int)flags minSize:(CGSize)size maxSize:(CGSize)maxSize;
@end

@implementation TSCHTextLayoutProperties

- (TSCHTextLayoutProperties)initWithTextFlags:(int)flags minSize:(CGSize)size maxSize:(CGSize)maxSize
{
  height = maxSize.height;
  width = maxSize.width;
  v7 = size.height;
  v8 = size.width;
  v11.receiver = self;
  v11.super_class = TSCHTextLayoutProperties;
  result = [(TSCHTextLayoutProperties *)&v11 init];
  if (result)
  {
    result->_textFlags = flags;
    result->_minSize.width = v8;
    result->_minSize.height = v7;
    result->_maxSize.width = width;
    result->_maxSize.height = height;
  }

  return result;
}

+ (id)defaultPropertiesForWrapWidth:(double)width
{
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  if (width == 0.0)
  {
    v4 = 4111;
  }

  else
  {
    v4 = 4099;
  }

  if (width == 0.0)
  {
    widthCopy = *MEMORY[0x277CBF3A8];
  }

  else
  {
    widthCopy = width;
  }

  if (width == 0.0)
  {
    widthCopy2 = 4294967300.0;
  }

  else
  {
    widthCopy2 = width;
  }

  v7 = [TSCHTextLayoutProperties alloc];
  v9 = objc_msgSend_initWithTextFlags_minSize_maxSize_(v7, v8, widthCopy, v3, widthCopy2, v4, 4294967300.0);

  return v9;
}

+ (id)placeTitleAtCenterPropertiesForWrapWidth:(double)width
{
  v4 = [TSCHTextLayoutProperties alloc];
  v6 = objc_msgSend_initWithTextFlags_minSize_maxSize_(v4, v5, width, width, width, 4096, width);

  return v6;
}

- (CGSize)minSize
{
  width = self->_minSize.width;
  height = self->_minSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)maxSize
{
  width = self->_maxSize.width;
  height = self->_maxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end