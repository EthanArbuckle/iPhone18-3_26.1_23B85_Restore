@interface IPAImageIdentityTransform
- (id)description;
@end

@implementation IPAImageIdentityTransform

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@.%p>", v5, self];

  return v6;
}

@end