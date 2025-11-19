@interface SBDisplayModePredicate
+ (id)forDisplay:(id)a3;
+ (id)forDisplaysSimilarToDisplay:(id)a3;
+ (id)fromDefaultsKey:(id)a3;
- (BOOL)matchesDisplay:(id)a3;
- (id)_init;
- (id)defaultsKeyRepresentation;
- (id)description;
@end

@implementation SBDisplayModePredicate

- (id)_init
{
  v3.receiver = self;
  v3.super_class = SBDisplayModePredicate;
  return [(SBDisplayModePredicate *)&v3 init];
}

+ (id)forDisplaysSimilarToDisplay:(id)a3
{
  v3 = a3;
  v4 = [[_SBDisplaysWithSizePredicate alloc] initWithDisplay:v3];

  return v4;
}

+ (id)forDisplay:(id)a3
{
  v3 = a3;
  v4 = [[_SBDisplayPredicate alloc] initWithDisplay:v3];

  return v4;
}

- (BOOL)matchesDisplay:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"SBDisplayModePredicate.m" lineNumber:54 description:@"must be overridden"];

  return 0;
}

+ (id)fromDefaultsKey:(id)a3
{
  v3 = a3;
  v4 = [_SBAllDisplaysPredicate fromDefaultsKey:v3];
  if (!v4)
  {
    v4 = [_SBDisplayPredicate fromDefaultsKey:v3];
    if (!v4)
    {
      v4 = [_SBDisplaysWithSizePredicate fromDefaultsKey:v3];
    }
  }

  v5 = v4;

  return v5;
}

- (id)defaultsKeyRepresentation
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBDisplayModePredicate.m" lineNumber:72 description:@"must be overridden"];

  return &stru_1F3D19FF0;
}

- (id)description
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBDisplayModePredicate.m" lineNumber:77 description:@"invalid predicate"];

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p> [invalid]", objc_opt_class(), self];
}

@end