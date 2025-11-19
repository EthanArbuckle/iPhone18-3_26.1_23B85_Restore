@interface SBSAEjectRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation SBSAEjectRequest

- (BOOL)isEqual:(id)a3
{
  v3 = MEMORY[0x277CF0C20];
  v4 = a3;
  v5 = [v3 builderWithObject:v4 ofExpectedClass:objc_opt_class()];

  LOBYTE(v3) = [v5 isEqual];
  return v3;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x277CF0C40] builder];
  v3 = [v2 appendClass:objc_opt_class()];
  v4 = [v3 hash];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = objc_opt_class();

  return objc_alloc_init(v3);
}

@end