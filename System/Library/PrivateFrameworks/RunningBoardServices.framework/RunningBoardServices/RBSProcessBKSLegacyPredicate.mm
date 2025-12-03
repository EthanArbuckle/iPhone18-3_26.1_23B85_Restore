@interface RBSProcessBKSLegacyPredicate
+ (id)legacyPredicate;
+ (id)legacyPredicateMatchingBundleIdentifier:(id)identifier;
+ (id)legacyPredicateMatchingProcessIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
@end

@implementation RBSProcessBKSLegacyPredicate

+ (id)legacyPredicate
{
  if (legacyPredicate_onceToken != -1)
  {
    +[RBSProcessBKSLegacyPredicate legacyPredicate];
  }

  v3 = legacyPredicate___LegacyPredicate;

  return v3;
}

void __47__RBSProcessBKSLegacyPredicate_legacyPredicate__block_invoke()
{
  v7[2] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(RBSProcessBKSLegacyPredicate);
  v1 = [RBSProcessPredicate predicateMatching:v0];

  v2 = [RBSProcessPredicate predicateMatchingEuid:geteuid()];
  v7[0] = v1;
  v7[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v4 = [RBSProcessPredicate predicateMatchingPredicates:v3];
  v5 = legacyPredicate___LegacyPredicate;
  legacyPredicate___LegacyPredicate = v4;

  v6 = *MEMORY[0x1E69E9840];
}

+ (id)legacyPredicateMatchingBundleIdentifier:(id)identifier
{
  v10[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = +[RBSProcessBKSLegacyPredicate legacyPredicate];
  v10[0] = v4;
  v5 = [RBSProcessPredicate predicateMatchingBundleIdentifier:identifierCopy];

  v10[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];

  v7 = [RBSProcessPredicate predicateMatchingPredicates:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)legacyPredicateMatchingProcessIdentifier:(id)identifier
{
  v10[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = +[RBSProcessBKSLegacyPredicate legacyPredicate];
  v10[0] = v4;
  v5 = [RBSProcessPredicate predicateMatchingIdentifier:identifierCopy];

  v10[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];

  v7 = [RBSProcessPredicate predicateMatchingPredicates:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
  v4 = objc_opt_class();
  v5 = objc_opt_class();

  return v4 == v5;
}

@end