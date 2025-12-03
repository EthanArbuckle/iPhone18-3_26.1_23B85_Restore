@interface SXImageRequest
- (CGSize)size;
- (SXImageRequest)initWithImageIdentifier:(id)identifier imageQualities:(unint64_t)qualities url:(id)url size:(CGSize)size preserveColorspace:(BOOL)colorspace loadingBlock:(id)block;
@end

@implementation SXImageRequest

- (SXImageRequest)initWithImageIdentifier:(id)identifier imageQualities:(unint64_t)qualities url:(id)url size:(CGSize)size preserveColorspace:(BOOL)colorspace loadingBlock:(id)block
{
  height = size.height;
  width = size.width;
  identifierCopy = identifier;
  urlCopy = url;
  blockCopy = block;
  v24.receiver = self;
  v24.super_class = SXImageRequest;
  v19 = [(SXImageRequest *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_imageIdentifier, identifier);
    v20->_qualities = qualities;
    objc_storeStrong(&v20->_imageIdentifier, identifier);
    objc_storeStrong(&v20->_URL, url);
    v20->_size.width = width;
    v20->_size.height = height;
    v21 = [blockCopy copy];
    loadingBlock = v20->_loadingBlock;
    v20->_loadingBlock = v21;

    v20->_preserveColorspace = colorspace;
  }

  return v20;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end