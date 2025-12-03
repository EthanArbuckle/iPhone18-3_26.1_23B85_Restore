@interface SSUIShowScreenshotUIWithImageServiceRequest
- (SSUIShowScreenshotUIWithImageServiceRequest)initWithBSXPCCoder:(id)coder;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation SSUIShowScreenshotUIWithImageServiceRequest

- (void)encodeWithBSXPCCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = SSUIShowScreenshotUIWithImageServiceRequest;
  coderCopy = coder;
  [(SSUIServiceRequest *)&v8 encodeWithBSXPCCoder:coderCopy];
  v5 = [(SSUIShowScreenshotUIWithImageServiceRequest *)self image:v8.receiver];
  ss_imageSurfaceFromImage = [v5 ss_imageSurfaceFromImage];

  [coderCopy encodeObject:ss_imageSurfaceFromImage forKey:@"SSUIServiceRequestImage"];
  options = [(SSUIShowScreenshotUIWithImageServiceRequest *)self options];
  [coderCopy encodeObject:options forKey:@"SSUIServiceRequestOptions"];
}

- (SSUIShowScreenshotUIWithImageServiceRequest)initWithBSXPCCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = SSUIShowScreenshotUIWithImageServiceRequest;
  coderCopy = coder;
  v4 = [(SSUIServiceRequest *)&v11 initWithBSXPCCoder:coderCopy];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"SSUIServiceRequestImage", v11.receiver, v11.super_class}];
  v6 = [MEMORY[0x1E69DCAB8] ss_cgImageBackedImageFromImageSurface:v5];
  image = v4->_image;
  v4->_image = v6;

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSUIServiceRequestOptions"];

  options = v4->_options;
  v4->_options = v8;

  return v4;
}

@end