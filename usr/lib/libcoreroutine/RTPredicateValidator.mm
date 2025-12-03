@interface RTPredicateValidator
+ (BOOL)validatePredicate:(id)predicate allowedKeys:(id)keys error:(id *)error;
- (BOOL)validateWithError:(id *)error;
- (RTPredicateValidator)initWithPredicate:(id)predicate allowedKeys:(id)keys;
- (void)visitPredicateExpression:(id)expression;
@end

@implementation RTPredicateValidator

+ (BOOL)validatePredicate:(id)predicate allowedKeys:(id)keys error:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  keysCopy = keys;
  predicateCopy = predicate;
  v10 = [[self alloc] initWithPredicate:predicateCopy allowedKeys:keysCopy];

  if (v10)
  {
    LOBYTE(error) = [v10 validateWithError:error];
  }

  else if (error)
  {
    v13 = *MEMORY[0x277CCA450];
    v14[0] = @"Predicate was invalid because it was nil.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:v11];

    LOBYTE(error) = 0;
  }

  return error;
}

- (RTPredicateValidator)initWithPredicate:(id)predicate allowedKeys:(id)keys
{
  predicateCopy = predicate;
  keysCopy = keys;
  if (predicateCopy)
  {
    v15.receiver = self;
    v15.super_class = RTPredicateValidator;
    v8 = [(RTPredicateValidator *)&v15 init];
    if (v8)
    {
      v9 = [predicateCopy copy];
      predicate = v8->_predicate;
      v8->_predicate = v9;

      if (keysCopy)
      {
        v11 = [MEMORY[0x277CBEB98] setWithArray:keysCopy];
        allowedKeys = v8->_allowedKeys;
        v8->_allowedKeys = v11;
      }
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)validateWithError:(id *)error
{
  [(RTPredicateValidator *)self setValidated:1];
  predicate = [(RTPredicateValidator *)self predicate];
  if (predicate)
  {
    v6 = predicate;
    allowedKeys = [(RTPredicateValidator *)self allowedKeys];

    if (allowedKeys)
    {
      predicate2 = [(RTPredicateValidator *)self predicate];
      [predicate2 acceptVisitor:self flags:3];

      if (error)
      {
        error = [(RTPredicateValidator *)self error];

        if (error)
        {
          *error = [(RTPredicateValidator *)self error];
        }
      }
    }
  }

  return [(RTPredicateValidator *)self validated];
}

- (void)visitPredicateExpression:(id)expression
{
  v37 = *MEMORY[0x277D85DE8];
  expressionCopy = expression;
  if (![(RTPredicateValidator *)self validated])
  {
    goto LABEL_32;
  }

  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v29 = [v5 initWithObjects:{*MEMORY[0x277CCA020], *MEMORY[0x277CCA058], *MEMORY[0x277CCA098], *MEMORY[0x277CCA0A0], *MEMORY[0x277CCA0A8], *MEMORY[0x277CCA4B0], *MEMORY[0x277CCA570], *MEMORY[0x277CCA698], *MEMORY[0x277CCA830], *MEMORY[0x277CCA838], *MEMORY[0x277CCA840], 0}];
  expressionType = [expressionCopy expressionType];
  v28 = expressionCopy;
  if (expressionType != 10)
  {
    if (expressionType == 4)
    {
      v21 = MEMORY[0x277CCA9C0];
      function = [expressionCopy function];
      arguments = [expressionCopy arguments];
      v24 = [v21 expressionForFunction:function arguments:arguments];

      if (!v24)
      {
        [(RTPredicateValidator *)self setValidated:0];
        v25 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:0];
        [(RTPredicateValidator *)self setError:v25];

        v24 = 0;
      }

      goto LABEL_31;
    }

    if (expressionType != 3)
    {
      goto LABEL_31;
    }
  }

  keyPath = [expressionCopy keyPath];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:0];
    [(RTPredicateValidator *)self setError:v26];

    [(RTPredicateValidator *)self setValidated:0];
    goto LABEL_30;
  }

  keyPath2 = [expressionCopy keyPath];
  v8 = [keyPath2 componentsSeparatedByString:@"."];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = v8;
  v10 = 0;
  v11 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (!v11)
  {
    goto LABEL_23;
  }

  v12 = *v31;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v31 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v30 + 1) + 8 * i);
      if ([v14 hasPrefix:@"@"])
      {
        if ([v14 length] < 2)
        {
          goto LABEL_20;
        }

        v15 = [v14 substringFromIndex:1];
        if (([v29 containsObject:v15] & 1) == 0)
        {
          [(RTPredicateValidator *)self setValidated:0];
        }
      }

      else
      {
        allowedKeys = [(RTPredicateValidator *)self allowedKeys];
        v17 = [allowedKeys containsObject:v14];

        if ((v17 & 1) == 0)
        {
LABEL_20:
          [(RTPredicateValidator *)self setValidated:0];
          continue;
        }

        if (!v10)
        {
          v10 = objc_opt_new();
        }

        [v10 addObject:v14];
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v30 objects:v36 count:16];
  }

  while (v11);
LABEL_23:

  if (![(RTPredicateValidator *)self validated])
  {
    v34 = *MEMORY[0x277CCA450];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Used keys: %@", v10];
    v35 = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];

    v20 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:v19];
    [(RTPredicateValidator *)self setError:v20];
  }

LABEL_30:
LABEL_31:

  expressionCopy = v28;
LABEL_32:
}

@end