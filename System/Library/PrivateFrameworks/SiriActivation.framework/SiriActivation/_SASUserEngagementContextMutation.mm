@interface _SASUserEngagementContextMutation
- (_SASUserEngagementContextMutation)initWithBaseModel:(id)a3;
- (id)generate;
@end

@implementation _SASUserEngagementContextMutation

- (_SASUserEngagementContextMutation)initWithBaseModel:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _SASUserEngagementContextMutation;
  v6 = [(_SASUserEngagementContextMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, a3);
  }

  return v7;
}

- (id)generate
{
  baseModel = self->_baseModel;
  if (!baseModel || (*&self->_mutationFlags & 1) != 0)
  {
    v4 = [[SASUserEngagementContext alloc] initInternal];
  }

  else
  {
    v4 = [(SASUserEngagementContext *)baseModel copy];
  }

  return v4;
}

@end