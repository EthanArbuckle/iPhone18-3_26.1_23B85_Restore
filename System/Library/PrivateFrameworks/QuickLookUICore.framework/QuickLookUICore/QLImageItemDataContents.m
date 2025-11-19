@interface QLImageItemDataContents
+ (id)imageItemContentsWithImage:(id)a3 imageData:(id)a4;
- (QLImageItemDataContents)initWithCoder:(id)a3;
@end

@implementation QLImageItemDataContents

+ (id)imageItemContentsWithImage:(id)a3 imageData:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setImage:v6];

  [v7 setImageData:v5];

  return v7;
}

- (QLImageItemDataContents)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = QLImageItemDataContents;
  v5 = [(QLImageItemContents *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
    imageData = v5->_imageData;
    v5->_imageData = v6;
  }

  return v5;
}

@end