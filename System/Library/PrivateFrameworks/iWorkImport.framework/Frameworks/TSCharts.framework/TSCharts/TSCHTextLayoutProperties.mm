@interface TSCHTextLayoutProperties
+ (id)defaultPropertiesForWrapWidth:(double)a3;
+ (id)placeTitleAtCenterPropertiesForWrapWidth:(double)a3;
- (CGSize)maxSize;
- (CGSize)minSize;
- (TSCHTextLayoutProperties)initWithTextFlags:(int)a3 minSize:(CGSize)a4 maxSize:(CGSize)a5;
@end

@implementation TSCHTextLayoutProperties

- (TSCHTextLayoutProperties)initWithTextFlags:(int)a3 minSize:(CGSize)a4 maxSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v7 = a4.height;
  v8 = a4.width;
  v11.receiver = self;
  v11.super_class = TSCHTextLayoutProperties;
  result = [(TSCHTextLayoutProperties *)&v11 init];
  if (result)
  {
    result->_textFlags = a3;
    result->_minSize.width = v8;
    result->_minSize.height = v7;
    result->_maxSize.width = width;
    result->_maxSize.height = height;
  }

  return result;
}

+ (id)defaultPropertiesForWrapWidth:(double)a3
{
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  if (a3 == 0.0)
  {
    v4 = 4111;
  }

  else
  {
    v4 = 4099;
  }

  if (a3 == 0.0)
  {
    v5 = *MEMORY[0x277CBF3A8];
  }

  else
  {
    v5 = a3;
  }

  if (a3 == 0.0)
  {
    v6 = 4294967300.0;
  }

  else
  {
    v6 = a3;
  }

  v7 = [TSCHTextLayoutProperties alloc];
  v9 = objc_msgSend_initWithTextFlags_minSize_maxSize_(v7, v8, v5, v3, v6, v4, 4294967300.0);

  return v9;
}

+ (id)placeTitleAtCenterPropertiesForWrapWidth:(double)a3
{
  v4 = [TSCHTextLayoutProperties alloc];
  v6 = objc_msgSend_initWithTextFlags_minSize_maxSize_(v4, v5, a3, a3, a3, 4096, a3);

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