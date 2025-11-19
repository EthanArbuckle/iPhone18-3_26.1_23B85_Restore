@interface SBHSetDiff
+ (id)diffFromSet:(id)a3 toSet:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)_initWithFromSet:(id)a3 toSet:(id)a4 additions:(id)a5 deletions:(id)a6 updates:(id)a7;
- (id)description;
- (unint64_t)hash;
@end

@implementation SBHSetDiff

+ (id)diffFromSet:(id)a3 toSet:(id)a4
{
  v5 = MEMORY[0x1E695DFA8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 setWithSet:v6];
  [v8 minusSet:v7];
  v9 = [MEMORY[0x1E695DFA8] setWithSet:v7];
  [v9 minusSet:v6];
  v10 = [MEMORY[0x1E695DFA8] setWithSet:v6];
  [v10 minusSet:v8];
  [v10 minusSet:v9];
  v11 = [objc_alloc(objc_opt_class()) _initWithFromSet:v7 toSet:v6 additions:v8 deletions:v9 updates:v10];

  return v11;
}

- (id)_initWithFromSet:(id)a3 toSet:(id)a4 additions:(id)a5 deletions:(id)a6 updates:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = SBHSetDiff;
  v17 = [(SBHSetDiff *)&v21 init];
  p_isa = &v17->super.isa;
  if (v17)
  {
    objc_storeStrong(&v17->_fromSet, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
    objc_storeStrong(p_isa + 4, a6);
    objc_storeStrong(p_isa + 5, a7);
  }

  return p_isa;
}

- (unint64_t)hash
{
  v2 = [(SBHSetDiff *)self fromSet];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SBHSetDiff *)v5 fromSet];
      v7 = [(SBHSetDiff *)self fromSet];
      if (v6 == v7)
      {
        v10 = 1;
      }

      else
      {
        v8 = [(SBHSetDiff *)v5 fromSet];
        v9 = [(SBHSetDiff *)self fromSet];
        v10 = [v8 isEqual:v9];
      }

      v11 = [(SBHSetDiff *)v5 toSet];
      v12 = [(SBHSetDiff *)self toSet];
      if (v11 != v12)
      {
        v13 = [(SBHSetDiff *)v5 toSet];
        v14 = [(SBHSetDiff *)self toSet];
        v10 &= [v13 isEqual:v14];
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
  v4 = [(SBHSetDiff *)self fromSet];
  v5 = [v3 appendObject:v4 withName:@"fromSet"];

  v6 = [(SBHSetDiff *)self toSet];
  v7 = [v3 appendObject:v6 withName:@"toSet"];

  v8 = [(SBHSetDiff *)self additions];
  v9 = [v3 appendObject:v8 withName:@"additions"];

  v10 = [(SBHSetDiff *)self deletions];
  v11 = [v3 appendObject:v10 withName:@"deletions"];

  v12 = [(SBHSetDiff *)self updates];
  v13 = [v3 appendObject:v12 withName:@"updates"];

  v14 = [v3 build];

  return v14;
}

@end