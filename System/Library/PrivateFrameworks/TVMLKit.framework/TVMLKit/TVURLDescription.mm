@interface TVURLDescription
- (CGSize)imageSize;
- (id)initUrlWithProperties:(id)properties imageSize:(CGSize)size focusSizeIncrease:(double)increase cropCode:(id)code urlFormat:(id)format;
@end

@implementation TVURLDescription

- (id)initUrlWithProperties:(id)properties imageSize:(CGSize)size focusSizeIncrease:(double)increase cropCode:(id)code urlFormat:(id)format
{
  height = size.height;
  width = size.width;
  propertiesCopy = properties;
  codeCopy = code;
  formatCopy = format;
  v19.receiver = self;
  v19.super_class = TVURLDescription;
  v16 = [(TVURLDescription *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(TVURLDescription *)v16 setUrl:propertiesCopy];
    [(TVURLDescription *)v17 setImageSize:width, height];
    [(TVURLDescription *)v17 setFocusSizeIncrease:increase];
    [(TVURLDescription *)v17 setCropCode:codeCopy];
    [(TVURLDescription *)v17 setUrlFormat:formatCopy];
  }

  return v17;
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