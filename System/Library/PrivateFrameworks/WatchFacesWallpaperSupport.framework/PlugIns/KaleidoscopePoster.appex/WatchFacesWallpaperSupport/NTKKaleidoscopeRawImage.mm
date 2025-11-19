@interface NTKKaleidoscopeRawImage
- (NTKKaleidoscopeRawImage)initWithContent:(NTKKaleidoscopeRawImage *)self width:(SEL)a2 height:;
- (void)dealloc;
- (void)write:(id)a3;
@end

@implementation NTKKaleidoscopeRawImage

- (NTKKaleidoscopeRawImage)initWithContent:(NTKKaleidoscopeRawImage *)self width:(SEL)a2 height:
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v12.receiver = self;
  v12.super_class = NTKKaleidoscopeRawImage;
  v8 = [(NTKKaleidoscopeRawImage *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_contents = v7;
    v8->_width = v6;
    v8->_height = v5;
    v10 = v8;
  }

  return v9;
}

- (void)dealloc
{
  free(self->_contents);
  v3.receiver = self;
  v3.super_class = NTKKaleidoscopeRawImage;
  [(NTKKaleidoscopeRawImage *)&v3 dealloc];
}

- (void)write:(id)a3
{
  v4 = a3;
  width = self->_width;
  height = self->_height;
  v14 = height * width;
  v15 = height * width;
  v12 = v4;
  if (height * width <= 0)
  {
    v11 = v4;
    v7 = 0;
    v13 = 0;
  }

  else
  {
    v7 = malloc_type_malloc(4 * (height * width), 0x100004052888210uLL);
    width = self->_width;
    height = self->_height;
    v13 = v7;
    if (height * width >= 1)
    {
      v8 = 0;
      contents = self->_contents;
      do
      {
        v10 = *&contents[4 * v8];
        *(v7 + v8++) = CLKUIConvertToSRGB8FromRGBf_fast();
        width = self->_width;
        height = self->_height;
      }

      while (v8 < height * width);
    }

    v11 = v12;
  }

  _NTKRawWriteToFile(&v13, width, height, v11);
  free(v7);
}

@end