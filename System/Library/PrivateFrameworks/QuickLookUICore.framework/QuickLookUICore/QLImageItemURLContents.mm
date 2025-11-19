@interface QLImageItemURLContents
+ (id)imageItemContentsWithImage:(id)a3 imageURL:(id)a4;
- (QLImageItemURLContents)initWithCoder:(id)a3;
@end

@implementation QLImageItemURLContents

+ (id)imageItemContentsWithImage:(id)a3 imageURL:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(QLImageItemContents *)[QLImageItemURLContents alloc] initWithImage:v6];

  [(QLImageItemURLContents *)v7 setImageURL:v5];

  return v7;
}

- (QLImageItemURLContents)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = QLImageItemURLContents;
  v5 = [(QLImageItemContents *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageURL"];
    imageURL = v5->_imageURL;
    v5->_imageURL = v6;
  }

  return v5;
}

@end