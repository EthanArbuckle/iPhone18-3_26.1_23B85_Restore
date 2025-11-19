@interface SFMessageAuthenticationCodeOperation
+ (id)_defaultMacOperation;
- (SFMessageAuthenticationCodeOperation)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation SFMessageAuthenticationCodeOperation

+ (id)_defaultMacOperation
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (SFMessageAuthenticationCodeOperation)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SFMessageAuthenticationCodeOperation;
  return [(SFMessageAuthenticationCodeOperation *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = objc_opt_class();

  return objc_alloc_init(v3);
}

@end