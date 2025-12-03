@interface SUCorePolicyExtension
- (SUCorePolicyExtension)init;
- (SUCorePolicyExtension)initWithCoder:(id)coder;
@end

@implementation SUCorePolicyExtension

- (SUCorePolicyExtension)init
{
  v3.receiver = self;
  v3.super_class = SUCorePolicyExtension;
  return [(SUCorePolicyExtension *)&v3 init];
}

- (SUCorePolicyExtension)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SUCorePolicyExtension;
  return [(SUCorePolicyExtension *)&v4 init];
}

@end