@interface WFContextualActionFilteringBehavior
+ (WFContextualActionFilteringBehavior)matchAllFiles;
+ (id)filteringWithMatchingTypes:(id)types predicate:(id)predicate;
+ (id)filteringWithMatchingTypes:(id)types predicate:(id)predicate daemonPredicate:(id)daemonPredicate;
- (BOOL)isEqual:(id)equal;
- (WFContextualActionFilteringBehavior)initWithCoder:(id)coder;
- (WFContextualActionFilteringBehavior)initWithMatchingTypes:(id)types inClientPredicate:(id)predicate daemonPredicate:(id)daemonPredicate;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFContextualActionFilteringBehavior

- (void)encodeWithCoder:(id)coder
{
  matchingTypes = self->_matchingTypes;
  coderCopy = coder;
  [coderCopy encodeObject:matchingTypes forKey:@"matchingTypes"];
  [coderCopy encodeObject:self->_inClientPredicate forKey:@"inClientPredicate"];
  [coderCopy encodeObject:self->_daemonPredicate forKey:@"daemonPredicate"];
}

- (WFContextualActionFilteringBehavior)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"matchingTypes"];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inClientPredicate"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"daemonPredicate"];

  if (v8)
  {
    self = [(WFContextualActionFilteringBehavior *)self initWithMatchingTypes:v8 inClientPredicate:v9 daemonPredicate:v10];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy != self)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_27:

      goto LABEL_28;
    }

    matchingTypes = [(WFContextualActionFilteringBehavior *)v6 matchingTypes];
    matchingTypes2 = [(WFContextualActionFilteringBehavior *)self matchingTypes];
    v9 = matchingTypes;
    v10 = matchingTypes2;
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

    inClientPredicate = [(WFContextualActionFilteringBehavior *)v6 inClientPredicate];
    inClientPredicate2 = [(WFContextualActionFilteringBehavior *)self inClientPredicate];
    v14 = inClientPredicate;
    v18 = inClientPredicate2;
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

    daemonPredicate = [(WFContextualActionFilteringBehavior *)v6 daemonPredicate];
    daemonPredicate2 = [(WFContextualActionFilteringBehavior *)self daemonPredicate];
    v20 = daemonPredicate;
    v23 = daemonPredicate2;
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
  matchingTypes = [(WFContextualActionFilteringBehavior *)self matchingTypes];

  if (matchingTypes)
  {
    matchingTypes2 = [(WFContextualActionFilteringBehavior *)self matchingTypes];
    v6 = [v3 combine:matchingTypes2];
  }

  inClientPredicate = [(WFContextualActionFilteringBehavior *)self inClientPredicate];

  if (inClientPredicate)
  {
    inClientPredicate2 = [(WFContextualActionFilteringBehavior *)self inClientPredicate];
    v9 = [v3 combine:inClientPredicate2];
  }

  daemonPredicate = [(WFContextualActionFilteringBehavior *)self daemonPredicate];

  if (daemonPredicate)
  {
    daemonPredicate2 = [(WFContextualActionFilteringBehavior *)self daemonPredicate];
    v12 = [v3 combine:daemonPredicate2];
  }

  v13 = [v3 finalize];

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  matchingTypes = [(WFContextualActionFilteringBehavior *)self matchingTypes];
  inClientPredicate = [(WFContextualActionFilteringBehavior *)self inClientPredicate];
  daemonPredicate = [(WFContextualActionFilteringBehavior *)self daemonPredicate];
  v9 = [v3 stringWithFormat:@"<%@ %p types=%@, files predicate=%@, thorough filtering predicate=%@>", v5, self, matchingTypes, inClientPredicate, daemonPredicate];

  return v9;
}

- (WFContextualActionFilteringBehavior)initWithMatchingTypes:(id)types inClientPredicate:(id)predicate daemonPredicate:(id)daemonPredicate
{
  typesCopy = types;
  predicateCopy = predicate;
  daemonPredicateCopy = daemonPredicate;
  if (!typesCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContextualActionFilteringBehavior.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"matchingTypes"}];
  }

  v18.receiver = self;
  v18.super_class = WFContextualActionFilteringBehavior;
  v13 = [(WFContextualActionFilteringBehavior *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_matchingTypes, types);
    objc_storeStrong(&v14->_inClientPredicate, predicate);
    objc_storeStrong(&v14->_daemonPredicate, daemonPredicate);
    v15 = v14;
  }

  return v14;
}

+ (id)filteringWithMatchingTypes:(id)types predicate:(id)predicate daemonPredicate:(id)daemonPredicate
{
  typesCopy = types;
  predicateCopy = predicate;
  daemonPredicateCopy = daemonPredicate;
  if (!daemonPredicateCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContextualActionFilteringBehavior.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"daemonPredicate"}];
  }

  v12 = [[self alloc] initWithMatchingTypes:typesCopy inClientPredicate:predicateCopy daemonPredicate:daemonPredicateCopy];

  return v12;
}

+ (id)filteringWithMatchingTypes:(id)types predicate:(id)predicate
{
  predicateCopy = predicate;
  typesCopy = types;
  v8 = [[self alloc] initWithMatchingTypes:typesCopy inClientPredicate:predicateCopy daemonPredicate:0];

  return v8;
}

+ (WFContextualActionFilteringBehavior)matchAllFiles
{
  v2 = [self alloc];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6982E48]];
  v4 = [v2 initWithMatchingTypes:v3 inClientPredicate:0 daemonPredicate:0];

  return v4;
}

@end