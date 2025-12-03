@interface SBSAEjectRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation SBSAEjectRequest

- (BOOL)isEqual:(id)equal
{
  v3 = MEMORY[0x277CF0C20];
  equalCopy = equal;
  v5 = [v3 builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];

  LOBYTE(v3) = [v5 isEqual];
  return v3;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v3 = [builder appendClass:objc_opt_class()];
  v4 = [v3 hash];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = objc_opt_class();

  return objc_alloc_init(v3);
}

@end