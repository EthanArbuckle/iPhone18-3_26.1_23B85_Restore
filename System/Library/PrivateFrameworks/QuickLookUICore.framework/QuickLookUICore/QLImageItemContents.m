@interface QLImageItemContents
- (QLImageItemContents)initWithCoder:(id)a3;
- (QLImageItemContents)initWithImage:(id)a3;
@end

@implementation QLImageItemContents

- (QLImageItemContents)initWithImage:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = QLImageItemContents;
  v6 = [(QLImageItemContents *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_image, a3);
    v8 = v7;
  }

  return v7;
}

- (QLImageItemContents)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = QLImageItemContents;
  v5 = [(QLImageItemContents *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    image = v5->_image;
    v5->_image = v6;
  }

  return v5;
}

@end