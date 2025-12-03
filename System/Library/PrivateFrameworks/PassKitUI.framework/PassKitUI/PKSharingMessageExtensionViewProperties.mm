@interface PKSharingMessageExtensionViewProperties
- (PKSharingMessageExtensionViewProperties)initWithCoder:(id)coder;
@end

@implementation PKSharingMessageExtensionViewProperties

- (PKSharingMessageExtensionViewProperties)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = PKSharingMessageExtensionViewProperties;
  return [(PKSharingMessageExtensionViewProperties *)&v4 init];
}

@end