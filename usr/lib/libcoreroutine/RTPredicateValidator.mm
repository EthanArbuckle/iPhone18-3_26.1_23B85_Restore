@interface RTPredicateValidator
+ (BOOL)validatePredicate:(id)a3 allowedKeys:(id)a4 error:(id *)a5;
- (BOOL)validateWithError:(id *)a3;
- (RTPredicateValidator)initWithPredicate:(id)a3 allowedKeys:(id)a4;
- (void)visitPredicateExpression:(id)a3;
@end

@implementation RTPredicateValidator

+ (BOOL)validatePredicate:(id)a3 allowedKeys:(id)a4 error:(id *)a5
{
  v14[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a3;
  v10 = [[a1 alloc] initWithPredicate:v9 allowedKeys:v8];

  if (v10)
  {
    LOBYTE(a5) = [v10 validateWithError:a5];
  }

  else if (a5)
  {
    v13 = *MEMORY[0x277CCA450];
    v14[0] = @"Predicate was invalid because it was nil.";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *a5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:v11];

    LOBYTE(a5) = 0;
  }

  return a5;
}

- (RTPredicateValidator)initWithPredicate:(id)a3 allowedKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v15.receiver = self;
    v15.super_class = RTPredicateValidator;
    v8 = [(RTPredicateValidator *)&v15 init];
    if (v8)
    {
      v9 = [v6 copy];
      predicate = v8->_predicate;
      v8->_predicate = v9;

      if (v7)
      {
        v11 = [MEMORY[0x277CBEB98] setWithArray:v7];
        allowedKeys = v8->_allowedKeys;
        v8->_allowedKeys = v11;
      }
    }

    self = v8;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)validateWithError:(id *)a3
{
  [(RTPredicateValidator *)self setValidated:1];
  v5 = [(RTPredicateValidator *)self predicate];
  if (v5)
  {
    v6 = v5;
    v7 = [(RTPredicateValidator *)self allowedKeys];

    if (v7)
    {
      v8 = [(RTPredicateValidator *)self predicate];
      [v8 acceptVisitor:self flags:3];

      if (a3)
      {
        v9 = [(RTPredicateValidator *)self error];

        if (v9)
        {
          *a3 = [(RTPredicateValidator *)self error];
        }
      }
    }
  }

  return [(RTPredicateValidator *)self validated];
}

- (void)visitPredicateExpression:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(RTPredicateValidator *)self validated])
  {
    goto LABEL_32;
  }

  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v29 = [v5 initWithObjects:{*MEMORY[0x277CCA020], *MEMORY[0x277CCA058], *MEMORY[0x277CCA098], *MEMORY[0x277CCA0A0], *MEMORY[0x277CCA0A8], *MEMORY[0x277CCA4B0], *MEMORY[0x277CCA570], *MEMORY[0x277CCA698], *MEMORY[0x277CCA830], *MEMORY[0x277CCA838], *MEMORY[0x277CCA840], 0}];
  v6 = [v4 expressionType];
  v28 = v4;
  if (v6 != 10)
  {
    if (v6 == 4)
    {
      v21 = MEMORY[0x277CCA9C0];
      v22 = [v4 function];
      v23 = [v4 arguments];
      v24 = [v21 expressionForFunction:v22 arguments:v23];

      if (!v24)
      {
        [(RTPredicateValidator *)self setValidated:0];
        v25 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:0];
        [(RTPredicateValidator *)self setError:v25];

        v24 = 0;
      }

      goto LABEL_31;
    }

    if (v6 != 3)
    {
      goto LABEL_31;
    }
  }

  v27 = [v4 keyPath];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D01448] code:0 userInfo:0];
    [(RTPredicateValidator *)self setError:v26];

    [(RTPredicateValidator *)self setValidated:0];
    goto LABEL_30;
  }

  v7 = [v4 keyPath];
  v8 = [v7 componentsSeparatedByString:@"."];

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
        v16 = [(RTPredicateValidator *)self allowedKeys];
        v17 = [v16 containsObject:v14];

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

  v4 = v28;
LABEL_32:
}

@end