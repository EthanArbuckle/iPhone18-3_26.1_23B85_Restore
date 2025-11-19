@interface SSUIShowScreenshotUIWithImageServiceRequest
- (SSUIShowScreenshotUIWithImageServiceRequest)initWithBSXPCCoder:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation SSUIShowScreenshotUIWithImageServiceRequest

- (void)encodeWithBSXPCCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = SSUIShowScreenshotUIWithImageServiceRequest;
  v4 = a3;
  [(SSUIServiceRequest *)&v8 encodeWithBSXPCCoder:v4];
  v5 = [(SSUIShowScreenshotUIWithImageServiceRequest *)self image:v8.receiver];
  v6 = [v5 ss_imageSurfaceFromImage];

  [v4 encodeObject:v6 forKey:@"SSUIServiceRequestImage"];
  v7 = [(SSUIShowScreenshotUIWithImageServiceRequest *)self options];
  [v4 encodeObject:v7 forKey:@"SSUIServiceRequestOptions"];
}

- (SSUIShowScreenshotUIWithImageServiceRequest)initWithBSXPCCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = SSUIShowScreenshotUIWithImageServiceRequest;
  v3 = a3;
  v4 = [(SSUIServiceRequest *)&v11 initWithBSXPCCoder:v3];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"SSUIServiceRequestImage", v11.receiver, v11.super_class}];
  v6 = [MEMORY[0x1E69DCAB8] ss_cgImageBackedImageFromImageSurface:v5];
  image = v4->_image;
  v4->_image = v6;

  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"SSUIServiceRequestOptions"];

  options = v4->_options;
  v4->_options = v8;

  return v4;
}

@end