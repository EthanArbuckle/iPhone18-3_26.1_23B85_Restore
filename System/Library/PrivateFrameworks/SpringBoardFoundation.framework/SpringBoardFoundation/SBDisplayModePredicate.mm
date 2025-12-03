@interface SBDisplayModePredicate
+ (id)forDisplay:(id)display;
+ (id)forDisplaysSimilarToDisplay:(id)display;
+ (id)fromDefaultsKey:(id)key;
- (BOOL)matchesDisplay:(id)display;
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

+ (id)forDisplaysSimilarToDisplay:(id)display
{
  displayCopy = display;
  v4 = [[_SBDisplaysWithSizePredicate alloc] initWithDisplay:displayCopy];

  return v4;
}

+ (id)forDisplay:(id)display
{
  displayCopy = display;
  v4 = [[_SBDisplayPredicate alloc] initWithDisplay:displayCopy];

  return v4;
}

- (BOOL)matchesDisplay:(id)display
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBDisplayModePredicate.m" lineNumber:54 description:@"must be overridden"];

  return 0;
}

+ (id)fromDefaultsKey:(id)key
{
  keyCopy = key;
  v4 = [_SBAllDisplaysPredicate fromDefaultsKey:keyCopy];
  if (!v4)
  {
    v4 = [_SBDisplayPredicate fromDefaultsKey:keyCopy];
    if (!v4)
    {
      v4 = [_SBDisplaysWithSizePredicate fromDefaultsKey:keyCopy];
    }
  }

  v5 = v4;

  return v5;
}

- (id)defaultsKeyRepresentation
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBDisplayModePredicate.m" lineNumber:72 description:@"must be overridden"];

  return &stru_1F3D19FF0;
}

- (id)description
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SBDisplayModePredicate.m" lineNumber:77 description:@"invalid predicate"];

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@:%p> [invalid]", objc_opt_class(), self];
}

@end