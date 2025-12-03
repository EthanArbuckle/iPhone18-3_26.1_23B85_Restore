@interface SFMessageAuthenticationCodeOperation
+ (id)_defaultMacOperation;
- (SFMessageAuthenticationCodeOperation)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation SFMessageAuthenticationCodeOperation

+ (id)_defaultMacOperation
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (SFMessageAuthenticationCodeOperation)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFMessageAuthenticationCodeOperation;
  return [(SFMessageAuthenticationCodeOperation *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = objc_opt_class();

  return objc_alloc_init(v3);
}

@end