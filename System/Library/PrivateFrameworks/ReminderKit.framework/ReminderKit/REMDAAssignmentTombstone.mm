@interface REMDAAssignmentTombstone
- (NSString)description;
@end

@implementation REMDAAssignmentTombstone

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  objectIdentifier = [(REMDAAssignmentTombstone *)self objectIdentifier];
  owningReminderIdentifier = [(REMDAAssignmentTombstone *)self owningReminderIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p objectID: %@, owningReminderIdentifier: %@>", v4, self, objectIdentifier, owningReminderIdentifier];

  return v7;
}

@end