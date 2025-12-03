@interface TVImageDescription
- (TVImageDescription)initWithProxy:(id)proxy andPlaceHolderImage:(id)image;
@end

@implementation TVImageDescription

- (TVImageDescription)initWithProxy:(id)proxy andPlaceHolderImage:(id)image
{
  proxyCopy = proxy;
  imageCopy = image;
  v12.receiver = self;
  v12.super_class = TVImageDescription;
  v9 = [(TVImageDescription *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_imageProxy, proxy);
    objc_storeStrong(&v10->_placeholderImage, image);
  }

  return v10;
}

@end