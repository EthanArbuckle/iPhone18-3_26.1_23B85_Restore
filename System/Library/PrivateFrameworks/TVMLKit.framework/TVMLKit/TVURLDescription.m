@interface TVURLDescription
- (CGSize)imageSize;
- (id)initUrlWithProperties:(id)a3 imageSize:(CGSize)a4 focusSizeIncrease:(double)a5 cropCode:(id)a6 urlFormat:(id)a7;
@end

@implementation TVURLDescription

- (id)initUrlWithProperties:(id)a3 imageSize:(CGSize)a4 focusSizeIncrease:(double)a5 cropCode:(id)a6 urlFormat:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = TVURLDescription;
  v16 = [(TVURLDescription *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(TVURLDescription *)v16 setUrl:v13];
    [(TVURLDescription *)v17 setImageSize:width, height];
    [(TVURLDescription *)v17 setFocusSizeIncrease:a5];
    [(TVURLDescription *)v17 setCropCode:v14];
    [(TVURLDescription *)v17 setUrlFormat:v15];
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