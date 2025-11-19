@interface SXImageRequest
- (CGSize)size;
- (SXImageRequest)initWithImageIdentifier:(id)a3 imageQualities:(unint64_t)a4 url:(id)a5 size:(CGSize)a6 preserveColorspace:(BOOL)a7 loadingBlock:(id)a8;
@end

@implementation SXImageRequest

- (SXImageRequest)initWithImageIdentifier:(id)a3 imageQualities:(unint64_t)a4 url:(id)a5 size:(CGSize)a6 preserveColorspace:(BOOL)a7 loadingBlock:(id)a8
{
  height = a6.height;
  width = a6.width;
  v16 = a3;
  v17 = a5;
  v18 = a8;
  v24.receiver = self;
  v24.super_class = SXImageRequest;
  v19 = [(SXImageRequest *)&v24 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_imageIdentifier, a3);
    v20->_qualities = a4;
    objc_storeStrong(&v20->_imageIdentifier, a3);
    objc_storeStrong(&v20->_URL, a5);
    v20->_size.width = width;
    v20->_size.height = height;
    v21 = [v18 copy];
    loadingBlock = v20->_loadingBlock;
    v20->_loadingBlock = v21;

    v20->_preserveColorspace = a7;
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