@interface WFContextualActionFilteringBehavior
+ (WFContextualActionFilteringBehavior)matchAllFiles;
+ (id)filteringWithMatchingTypes:(id)a3 predicate:(id)a4;
+ (id)filteringWithMatchingTypes:(id)a3 predicate:(id)a4 daemonPredicate:(id)a5;
- (BOOL)isEqual:(id)a3;
- (WFContextualActionFilteringBehavior)initWithCoder:(id)a3;
- (WFContextualActionFilteringBehavior)initWithMatchingTypes:(id)a3 inClientPredicate:(id)a4 daemonPredicate:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFContextualActionFilteringBehavior

- (void)encodeWithCoder:(id)a3
{
  matchingTypes = self->_matchingTypes;
  v5 = a3;
  [v5 encodeObject:matchingTypes forKey:@"matchingTypes"];
  [v5 encodeObject:self->_inClientPredicate forKey:@"inClientPredicate"];
  [v5 encodeObject:self->_daemonPredicate forKey:@"daemonPredicate"];
}

- (WFContextualActionFilteringBehavior)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"matchingTypes"];

  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"inClientPredicate"];
  v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"daemonPredicate"];

  if (v8)
  {
    self = [(WFContextualActionFilteringBehavior *)self initWithMatchingTypes:v8 inClientPredicate:v9 daemonPredicate:v10];
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    v6 = v4;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_27:

      goto LABEL_28;
    }

    v7 = [(WFContextualActionFilteringBehavior *)v6 matchingTypes];
    v8 = [(WFContextualActionFilteringBehavior *)self matchingTypes];
    v9 = v7;
    v10 = v8;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_25;
      }

      v15 = [v9 isEqualToSet:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    v16 = [(WFContextualActionFilteringBehavior *)v6 inClientPredicate];
    v17 = [(WFContextualActionFilteringBehavior *)self inClientPredicate];
    v14 = v16;
    v18 = v17;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
LABEL_24:

LABEL_25:
        goto LABEL_26;
      }

      v12 = [v14 isEqual:v18];

      if (!v12)
      {
        goto LABEL_25;
      }
    }

    v21 = [(WFContextualActionFilteringBehavior *)v6 daemonPredicate];
    v22 = [(WFContextualActionFilteringBehavior *)self daemonPredicate];
    v20 = v21;
    v23 = v22;
    v19 = v23;
    if (v20 == v23)
    {
      LOBYTE(v12) = 1;
    }

    else
    {
      LOBYTE(v12) = 0;
      if (v20 && v23)
      {
        LOBYTE(v12) = [v20 isEqual:v23];
      }
    }

    goto LABEL_24;
  }

  LOBYTE(v12) = 1;
LABEL_28:

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v4 = [(WFContextualActionFilteringBehavior *)self matchingTypes];

  if (v4)
  {
    v5 = [(WFContextualActionFilteringBehavior *)self matchingTypes];
    v6 = [v3 combine:v5];
  }

  v7 = [(WFContextualActionFilteringBehavior *)self inClientPredicate];

  if (v7)
  {
    v8 = [(WFContextualActionFilteringBehavior *)self inClientPredicate];
    v9 = [v3 combine:v8];
  }

  v10 = [(WFContextualActionFilteringBehavior *)self daemonPredicate];

  if (v10)
  {
    v11 = [(WFContextualActionFilteringBehavior *)self daemonPredicate];
    v12 = [v3 combine:v11];
  }

  v13 = [v3 finalize];

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WFContextualActionFilteringBehavior *)self matchingTypes];
  v7 = [(WFContextualActionFilteringBehavior *)self inClientPredicate];
  v8 = [(WFContextualActionFilteringBehavior *)self daemonPredicate];
  v9 = [v3 stringWithFormat:@"<%@ %p types=%@, files predicate=%@, thorough filtering predicate=%@>", v5, self, v6, v7, v8];

  return v9;
}

- (WFContextualActionFilteringBehavior)initWithMatchingTypes:(id)a3 inClientPredicate:(id)a4 daemonPredicate:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"WFContextualActionFilteringBehavior.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"matchingTypes"}];
  }

  v18.receiver = self;
  v18.super_class = WFContextualActionFilteringBehavior;
  v13 = [(WFContextualActionFilteringBehavior *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_matchingTypes, a3);
    objc_storeStrong(&v14->_inClientPredicate, a4);
    objc_storeStrong(&v14->_daemonPredicate, a5);
    v15 = v14;
  }

  return v14;
}

+ (id)filteringWithMatchingTypes:(id)a3 predicate:(id)a4 daemonPredicate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"WFContextualActionFilteringBehavior.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"daemonPredicate"}];
  }

  v12 = [[a1 alloc] initWithMatchingTypes:v9 inClientPredicate:v10 daemonPredicate:v11];

  return v12;
}

+ (id)filteringWithMatchingTypes:(id)a3 predicate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithMatchingTypes:v7 inClientPredicate:v6 daemonPredicate:0];

  return v8;
}

+ (WFContextualActionFilteringBehavior)matchAllFiles
{
  v2 = [a1 alloc];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6982E48]];
  v4 = [v2 initWithMatchingTypes:v3 inClientPredicate:0 daemonPredicate:0];

  return v4;
}

@end