@interface QLImageItemContents
- (QLImageItemContents)initWithCoder:(id)coder;
- (QLImageItemContents)initWithImage:(id)image;
@end

@implementation QLImageItemContents

- (QLImageItemContents)initWithImage:(id)image
{
  imageCopy = image;
  v10.receiver = self;
  v10.super_class = QLImageItemContents;
  v6 = [(QLImageItemContents *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_image, image);
    v8 = v7;
  }

  return v7;
}

- (QLImageItemContents)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = QLImageItemContents;
  v5 = [(QLImageItemContents *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    image = v5->_image;
    v5->_image = v6;
  }

  return v5;
}

@end