@interface SASUserEngagementContext
+ (id)newWithBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (SASUserEngagementContext)initWithBuilder:(id)builder;
- (id)description;
- (id)initInternal;
- (id)mutatedCopyWithMutator:(id)mutator;
@end

@implementation SASUserEngagementContext

- (SASUserEngagementContext)initWithBuilder:(id)builder
{
  v4 = [SASUserEngagementContext newWithBuilder:builder];

  return v4;
}

- (id)initInternal
{
  v3.receiver = self;
  v3.super_class = SASUserEngagementContext;
  return [(SASUserEngagementContext *)&v3 init];
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = SASUserEngagementContext;
  v2 = [(SASUserEngagementContext *)&v4 description];

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    isKindOfClass = 1;
  }

  else
  {
    equalCopy = equal;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = objc_alloc_init(_SASUserEngagementContextMutation);
  if (builderCopy)
  {
    builderCopy[2](builderCopy, v4);
  }

  generate = [(_SASUserEngagementContextMutation *)v4 generate];

  return generate;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_SASUserEngagementContextMutation alloc] initWithBaseModel:self];
    mutatorCopy[2](mutatorCopy, v5);
    generate = [(_SASUserEngagementContextMutation *)v5 generate];
  }

  else
  {
    generate = [(SASUserEngagementContext *)self copy];
  }

  return generate;
}

@end