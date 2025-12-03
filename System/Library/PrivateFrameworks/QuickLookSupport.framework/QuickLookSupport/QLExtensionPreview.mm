@interface QLExtensionPreview
- (QLExtensionPreview)initWithCoder:(id)coder;
- (QLExtensionPreview)initWithDescription:(id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation QLExtensionPreview

- (QLExtensionPreview)initWithDescription:(id)description
{
  descriptionCopy = description;
  v9.receiver = self;
  v9.super_class = QLExtensionPreview;
  v6 = [(QLExtensionPreview *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_previewDescription, description);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  previewDescription = [(QLExtensionPreview *)self previewDescription];
  [coderCopy encodeObject:previewDescription forKey:@"previewDescription"];
}

- (QLExtensionPreview)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"previewDescription"];

  v6 = [(QLExtensionPreview *)self initWithDescription:v5];
  return v6;
}

@end