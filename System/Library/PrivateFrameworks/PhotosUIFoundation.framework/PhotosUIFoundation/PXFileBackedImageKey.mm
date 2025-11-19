@interface PXFileBackedImageKey
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (PXFileBackedImageKey)initWithUrl:(id)a3 size:(CGSize)a4 preferHDR:(BOOL)a5;
- (unint64_t)hash;
@end

@implementation PXFileBackedImageKey

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([(NSURL *)self->_url isEqual:*(v4 + 2)])
  {
    v5 = self->_size.height == v4[4] && self->_size.width == v4[3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSURL *)self->_url hash];
  v4 = CGSizeHash(self->_size.width, self->_size.height);
  v5 = 321;
  if (self->_preferHDR)
  {
    v5 = 123;
  }

  return v5 - (v4 - v3 + 32 * v3) + 32 * (v4 - v3 + 32 * v3) + 29791;
}

- (PXFileBackedImageKey)initWithUrl:(id)a3 size:(CGSize)a4 preferHDR:(BOOL)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v14.receiver = self;
  v14.super_class = PXFileBackedImageKey;
  v10 = [(PXFileBackedImageKey *)&v14 init];
  if (v10)
  {
    v11 = [v9 copy];
    url = v10->_url;
    v10->_url = v11;

    v10->_size.width = width;
    v10->_size.height = height;
    v10->_preferHDR = a5;
  }

  return v10;
}

@end