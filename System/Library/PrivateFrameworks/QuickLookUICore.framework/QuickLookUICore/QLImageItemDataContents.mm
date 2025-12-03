@interface QLImageItemDataContents
+ (id)imageItemContentsWithImage:(id)image imageData:(id)data;
- (QLImageItemDataContents)initWithCoder:(id)coder;
@end

@implementation QLImageItemDataContents

+ (id)imageItemContentsWithImage:(id)image imageData:(id)data
{
  dataCopy = data;
  imageCopy = image;
  v7 = objc_opt_new();
  [v7 setImage:imageCopy];

  [v7 setImageData:dataCopy];

  return v7;
}

- (QLImageItemDataContents)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = QLImageItemDataContents;
  v5 = [(QLImageItemContents *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
    imageData = v5->_imageData;
    v5->_imageData = v6;
  }

  return v5;
}

@end