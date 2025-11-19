@interface SASUserEngagementContext
+ (id)newWithBuilder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SASUserEngagementContext)initWithBuilder:(id)a3;
- (id)description;
- (id)initInternal;
- (id)mutatedCopyWithMutator:(id)a3;
@end

@implementation SASUserEngagementContext

- (SASUserEngagementContext)initWithBuilder:(id)a3
{
  v4 = [SASUserEngagementContext newWithBuilder:a3];

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

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    isKindOfClass = 1;
  }

  else
  {
    v3 = a3;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_SASUserEngagementContextMutation);
  if (v3)
  {
    v3[2](v3, v4);
  }

  v5 = [(_SASUserEngagementContextMutation *)v4 generate];

  return v5;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_SASUserEngagementContextMutation alloc] initWithBaseModel:self];
    v4[2](v4, v5);
    v6 = [(_SASUserEngagementContextMutation *)v5 generate];
  }

  else
  {
    v6 = [(SASUserEngagementContext *)self copy];
  }

  return v6;
}

@end