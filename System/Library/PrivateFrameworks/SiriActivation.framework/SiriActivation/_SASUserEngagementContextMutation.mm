@interface _SASUserEngagementContextMutation
- (_SASUserEngagementContextMutation)initWithBaseModel:(id)model;
- (id)generate;
@end

@implementation _SASUserEngagementContextMutation

- (_SASUserEngagementContextMutation)initWithBaseModel:(id)model
{
  modelCopy = model;
  v9.receiver = self;
  v9.super_class = _SASUserEngagementContextMutation;
  v6 = [(_SASUserEngagementContextMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_baseModel, model);
  }

  return v7;
}

- (id)generate
{
  baseModel = self->_baseModel;
  if (!baseModel || (*&self->_mutationFlags & 1) != 0)
  {
    initInternal = [[SASUserEngagementContext alloc] initInternal];
  }

  else
  {
    initInternal = [(SASUserEngagementContext *)baseModel copy];
  }

  return initInternal;
}

@end