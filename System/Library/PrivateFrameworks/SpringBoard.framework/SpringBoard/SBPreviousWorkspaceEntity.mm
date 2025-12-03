@interface SBPreviousWorkspaceEntity
+ (id)entityWithPreviousLayoutRole:(int64_t)role;
- (SBPreviousWorkspaceEntity)initWithPreviousLayoutRole:(int64_t)role;
- (id)succinctDescriptionBuilder;
@end

@implementation SBPreviousWorkspaceEntity

+ (id)entityWithPreviousLayoutRole:(int64_t)role
{
  v3 = [[self alloc] initWithPreviousLayoutRole:role];

  return v3;
}

- (SBPreviousWorkspaceEntity)initWithPreviousLayoutRole:(int64_t)role
{
  v5.receiver = self;
  v5.super_class = SBPreviousWorkspaceEntity;
  result = [(SBWorkspaceEntity *)&v5 initWithIdentifier:0 displayChangeSettings:0];
  if (result)
  {
    result->_previousLayoutRole = role;
  }

  return result;
}

- (id)succinctDescriptionBuilder
{
  v7.receiver = self;
  v7.super_class = SBPreviousWorkspaceEntity;
  succinctDescriptionBuilder = [(SBWorkspaceEntity *)&v7 succinctDescriptionBuilder];
  v4 = SBLayoutRoleDescription(self->_previousLayoutRole);
  v5 = [succinctDescriptionBuilder appendObject:v4 withName:@"previousLayoutRole"];

  return succinctDescriptionBuilder;
}

@end