@interface SBSceneSnapshotRequest
- (BOOL)isEqual:(id)equal;
- (SBSceneSnapshotRequest)initWithSize:(unint64_t)size orientation:(unint64_t)orientation userInterfaceStyle:(unint64_t)style;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBSceneSnapshotRequest

- (SBSceneSnapshotRequest)initWithSize:(unint64_t)size orientation:(unint64_t)orientation userInterfaceStyle:(unint64_t)style
{
  v9.receiver = self;
  v9.super_class = SBSceneSnapshotRequest;
  result = [(SBSceneSnapshotRequest *)&v9 init];
  if (result)
  {
    result->_size = size;
    result->_orientation = orientation;
    result->_userInterfaceStyle = style;
  }

  return result;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBSceneSnapshotRequest *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = SBStringForSceneSnapshotRequestSize(self->_size);
  v5 = [v3 appendObject:v4 withName:@"size"];

  v6 = self->_orientation - 1;
  v7 = @"current";
  if (v6 <= 4)
  {
    v7 = off_2783B51E0[v6];
  }

  v8 = [v3 appendObject:v7 withName:@"orientation"];
  if (self->_userInterfaceStyle)
  {
    v9 = @"both";
  }

  else
  {
    v9 = @"current";
  }

  v10 = [v3 appendObject:v9 withName:@"userInterfaceStyle"];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBSceneSnapshotRequest *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      size = self->_size;
      if (size == [(SBSceneSnapshotRequest *)v5 size]&& (orientation = self->_orientation, orientation == [(SBSceneSnapshotRequest *)v5 orientation]))
      {
        userInterfaceStyle = self->_userInterfaceStyle;
        v9 = userInterfaceStyle == [(SBSceneSnapshotRequest *)v5 userInterfaceStyle];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end