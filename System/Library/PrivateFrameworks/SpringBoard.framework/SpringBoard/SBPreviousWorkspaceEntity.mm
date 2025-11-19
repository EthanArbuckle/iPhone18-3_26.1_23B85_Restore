@interface SBPreviousWorkspaceEntity
+ (id)entityWithPreviousLayoutRole:(int64_t)a3;
- (SBPreviousWorkspaceEntity)initWithPreviousLayoutRole:(int64_t)a3;
- (id)succinctDescriptionBuilder;
@end

@implementation SBPreviousWorkspaceEntity

+ (id)entityWithPreviousLayoutRole:(int64_t)a3
{
  v3 = [[a1 alloc] initWithPreviousLayoutRole:a3];

  return v3;
}

- (SBPreviousWorkspaceEntity)initWithPreviousLayoutRole:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = SBPreviousWorkspaceEntity;
  result = [(SBWorkspaceEntity *)&v5 initWithIdentifier:0 displayChangeSettings:0];
  if (result)
  {
    result->_previousLayoutRole = a3;
  }

  return result;
}

- (id)succinctDescriptionBuilder
{
  v7.receiver = self;
  v7.super_class = SBPreviousWorkspaceEntity;
  v3 = [(SBWorkspaceEntity *)&v7 succinctDescriptionBuilder];
  v4 = SBLayoutRoleDescription(self->_previousLayoutRole);
  v5 = [v3 appendObject:v4 withName:@"previousLayoutRole"];

  return v3;
}

@end