@interface REMDAHashtagTombstone
- (NSString)description;
@end

@implementation REMDAHashtagTombstone

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMDAHashtagTombstone *)self objectIdentifier];
  v6 = [(REMDAHashtagTombstone *)self name];
  v7 = [(REMDAHashtagTombstone *)self reminderIdentifier];
  v8 = [v3 stringWithFormat:@"<%@: %p objectID: %@, name: %@, reminderIdentifier: %@>", v4, self, v5, v6, v7];

  return v8;
}

@end