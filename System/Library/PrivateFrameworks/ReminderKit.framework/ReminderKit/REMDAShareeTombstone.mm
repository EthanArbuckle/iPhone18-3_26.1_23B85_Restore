@interface REMDAShareeTombstone
- (NSString)description;
@end

@implementation REMDAShareeTombstone

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMDAShareeTombstone *)self objectIdentifier];
  v6 = [(REMDAShareeTombstone *)self owningListIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p objectID: %@, owningListIdentifier: %@>", v4, self, v5, v6];

  return v7;
}

@end