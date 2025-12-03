@interface QLImageItemURLContents
+ (id)imageItemContentsWithImage:(id)image imageURL:(id)l;
- (QLImageItemURLContents)initWithCoder:(id)coder;
@end

@implementation QLImageItemURLContents

+ (id)imageItemContentsWithImage:(id)image imageURL:(id)l
{
  lCopy = l;
  imageCopy = image;
  v7 = [(QLImageItemContents *)[QLImageItemURLContents alloc] initWithImage:imageCopy];

  [(QLImageItemURLContents *)v7 setImageURL:lCopy];

  return v7;
}

- (QLImageItemURLContents)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = QLImageItemURLContents;
  v5 = [(QLImageItemContents *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageURL"];
    imageURL = v5->_imageURL;
    v5->_imageURL = v6;
  }

  return v5;
}

@end