@interface REMDAHashtagTombstone
- (NSString)description;
@end

@implementation REMDAHashtagTombstone

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  objectIdentifier = [(REMDAHashtagTombstone *)self objectIdentifier];
  name = [(REMDAHashtagTombstone *)self name];
  reminderIdentifier = [(REMDAHashtagTombstone *)self reminderIdentifier];
  v8 = [v3 stringWithFormat:@"<%@: %p objectID: %@, name: %@, reminderIdentifier: %@>", v4, self, objectIdentifier, name, reminderIdentifier];

  return v8;
}

@end