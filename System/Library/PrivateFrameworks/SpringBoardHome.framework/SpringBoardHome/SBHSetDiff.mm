@interface SBHSetDiff
+ (id)diffFromSet:(id)set toSet:(id)toSet;
- (BOOL)isEqual:(id)equal;
- (id)_initWithFromSet:(id)set toSet:(id)toSet additions:(id)additions deletions:(id)deletions updates:(id)updates;
- (id)description;
- (unint64_t)hash;
@end

@implementation SBHSetDiff

+ (id)diffFromSet:(id)set toSet:(id)toSet
{
  v5 = MEMORY[0x1E695DFA8];
  toSetCopy = toSet;
  setCopy = set;
  v8 = [v5 setWithSet:toSetCopy];
  [v8 minusSet:setCopy];
  v9 = [MEMORY[0x1E695DFA8] setWithSet:setCopy];
  [v9 minusSet:toSetCopy];
  v10 = [MEMORY[0x1E695DFA8] setWithSet:toSetCopy];
  [v10 minusSet:v8];
  [v10 minusSet:v9];
  v11 = [objc_alloc(objc_opt_class()) _initWithFromSet:setCopy toSet:toSetCopy additions:v8 deletions:v9 updates:v10];

  return v11;
}

- (id)_initWithFromSet:(id)set toSet:(id)toSet additions:(id)additions deletions:(id)deletions updates:(id)updates
{
  setCopy = set;
  toSetCopy = toSet;
  additionsCopy = additions;
  deletionsCopy = deletions;
  updatesCopy = updates;
  v21.receiver = self;
  v21.super_class = SBHSetDiff;
  v17 = [(SBHSetDiff *)&v21 init];
  p_isa = &v17->super.isa;
  if (v17)
  {
    objc_storeStrong(&v17->_fromSet, set);
    objc_storeStrong(p_isa + 2, toSet);
    objc_storeStrong(p_isa + 3, additions);
    objc_storeStrong(p_isa + 4, deletions);
    objc_storeStrong(p_isa + 5, updates);
  }

  return p_isa;
}

- (unint64_t)hash
{
  fromSet = [(SBHSetDiff *)self fromSet];
  v3 = [fromSet hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      fromSet = [(SBHSetDiff *)v5 fromSet];
      fromSet2 = [(SBHSetDiff *)self fromSet];
      if (fromSet == fromSet2)
      {
        v10 = 1;
      }

      else
      {
        fromSet3 = [(SBHSetDiff *)v5 fromSet];
        fromSet4 = [(SBHSetDiff *)self fromSet];
        v10 = [fromSet3 isEqual:fromSet4];
      }

      toSet = [(SBHSetDiff *)v5 toSet];
      toSet2 = [(SBHSetDiff *)self toSet];
      if (toSet != toSet2)
      {
        toSet3 = [(SBHSetDiff *)v5 toSet];
        toSet4 = [(SBHSetDiff *)self toSet];
        v10 &= [toSet3 isEqual:toSet4];
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  fromSet = [(SBHSetDiff *)self fromSet];
  v5 = [v3 appendObject:fromSet withName:@"fromSet"];

  toSet = [(SBHSetDiff *)self toSet];
  v7 = [v3 appendObject:toSet withName:@"toSet"];

  additions = [(SBHSetDiff *)self additions];
  v9 = [v3 appendObject:additions withName:@"additions"];

  deletions = [(SBHSetDiff *)self deletions];
  v11 = [v3 appendObject:deletions withName:@"deletions"];

  updates = [(SBHSetDiff *)self updates];
  v13 = [v3 appendObject:updates withName:@"updates"];

  build = [v3 build];

  return build;
}

@end