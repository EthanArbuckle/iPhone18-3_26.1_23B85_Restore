@interface PXFileBackedImageKey
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (PXFileBackedImageKey)initWithUrl:(id)url size:(CGSize)size preferHDR:(BOOL)r;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([(NSURL *)self->_url isEqual:*(equalCopy + 2)])
  {
    v5 = self->_size.height == equalCopy[4] && self->_size.width == equalCopy[3];
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

- (PXFileBackedImageKey)initWithUrl:(id)url size:(CGSize)size preferHDR:(BOOL)r
{
  height = size.height;
  width = size.width;
  urlCopy = url;
  v14.receiver = self;
  v14.super_class = PXFileBackedImageKey;
  v10 = [(PXFileBackedImageKey *)&v14 init];
  if (v10)
  {
    v11 = [urlCopy copy];
    url = v10->_url;
    v10->_url = v11;

    v10->_size.width = width;
    v10->_size.height = height;
    v10->_preferHDR = r;
  }

  return v10;
}

@end