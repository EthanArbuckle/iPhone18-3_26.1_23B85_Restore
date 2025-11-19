@interface TVImageDescription
- (TVImageDescription)initWithProxy:(id)a3 andPlaceHolderImage:(id)a4;
@end

@implementation TVImageDescription

- (TVImageDescription)initWithProxy:(id)a3 andPlaceHolderImage:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TVImageDescription;
  v9 = [(TVImageDescription *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_imageProxy, a3);
    objc_storeStrong(&v10->_placeholderImage, a4);
  }

  return v10;
}

@end