@interface SharingXPCHelperPerspectiveDataItem
- (CGSize)perspectiveDataSize;
- (SharingXPCHelperPerspectiveDataItem)init;
- (SharingXPCHelperPerspectiveDataItem)initWithCoder:(id)a3;
- (SharingXPCHelperPerspectiveDataItem)initWithPerspectiveData:(id)a3 perspectiveDataSize:(CGSize)a4 CGImageData:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SharingXPCHelperPerspectiveDataItem

- (SharingXPCHelperPerspectiveDataItem)init
{
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = [(SharingXPCHelperPerspectiveDataItem *)self initWithPerspectiveData:v3 perspectiveDataSize:v4 CGImageData:0.0, 0.0];

  return v5;
}

- (SharingXPCHelperPerspectiveDataItem)initWithPerspectiveData:(id)a3 perspectiveDataSize:(CGSize)a4 CGImageData:(id)a5
{
  height = a4.height;
  width = a4.width;
  v10 = a3;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SharingXPCHelperPerspectiveDataItem;
  v12 = [(SharingXPCHelperPerspectiveDataItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_perspectiveData, a3);
    v13->_perspectiveDataSize.width = width;
    v13->_perspectiveDataSize.height = height;
    objc_storeStrong(&v13->_CGImageData, a5);
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  perspectiveData = self->_perspectiveData;
  if (perspectiveData)
  {
    [v9 encodeObject:perspectiveData forKey:@"SharingXPCHelperPerspectiveDataItem-PerspectiveData"];
  }

  [(SharingXPCHelperPerspectiveDataItem *)self perspectiveDataSize];
  *&v5 = v5;
  [v9 encodeFloat:@"SharingXPCHelperPerspectiveDataItem-PerspectiveDataWidth" forKey:v5];
  [(SharingXPCHelperPerspectiveDataItem *)self perspectiveDataSize];
  *&v7 = v6;
  [v9 encodeFloat:@"SharingXPCHelperPerspectiveDataItem-PerspectiveDataHeight" forKey:v7];
  CGImageData = self->_CGImageData;
  if (CGImageData)
  {
    [v9 encodeObject:CGImageData forKey:@"SharingXPCHelperPerspectiveDataItem-CGImageData"];
  }
}

- (SharingXPCHelperPerspectiveDataItem)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SharingXPCHelperPerspectiveDataItem;
  v5 = [(SharingXPCHelperPerspectiveDataItem *)&v12 init];
  if (v5)
  {
    v6 = v4;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    [v6 decodeFloatForKey:@"SharingXPCHelperPerspectiveDataItem-PerspectiveDataWidth"];
    v8 = v7;
    [v6 decodeFloatForKey:@"SharingXPCHelperPerspectiveDataItem-PerspectiveDataHeight"];
    v5->_perspectiveDataSize.width = v8;
    v5->_perspectiveDataSize.height = v9;
    v10 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();
  }

  return v5;
}

- (CGSize)perspectiveDataSize
{
  width = self->_perspectiveDataSize.width;
  height = self->_perspectiveDataSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end