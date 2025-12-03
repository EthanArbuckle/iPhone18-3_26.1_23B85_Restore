@interface SCRCMathRowFormatter
- (SCRCMathRowFormatter)initWithIsNumberOverride:(BOOL)override;
- (id)mathEquation;
- (void)_addDictionary:(id)dictionary;
- (void)addCloseParenthesis:(BOOL)parenthesis;
- (void)addIdentifier:(id)identifier;
- (void)addNumber:(id)number implicit:(BOOL)implicit;
- (void)addOpenParenthesis;
- (void)addOperator:(id)operator implicit:(BOOL)implicit;
- (void)addRadicalWithRootIndex:(id)index;
- (void)addSubscript:(id)subscript superscript:(id)superscript;
- (void)appendMathEquation:(id)equation;
@end

@implementation SCRCMathRowFormatter

- (SCRCMathRowFormatter)initWithIsNumberOverride:(BOOL)override
{
  v10.receiver = self;
  v10.super_class = SCRCMathRowFormatter;
  v4 = [(SCRCMathRowFormatter *)&v10 init];
  if (v4)
  {
    v5 = objc_opt_new();
    childrenStack = v4->_childrenStack;
    v4->_childrenStack = v5;

    v7 = v4->_childrenStack;
    v8 = objc_opt_new();
    [(NSMutableArray *)v7 addObject:v8];

    v4->_isNumberOverride = override;
  }

  return v4;
}

- (void)addNumber:(id)number implicit:(BOOL)implicit
{
  v11[2] = *MEMORY[0x277D85DE8];
  if (number)
  {
    implicitCopy = implicit;
    v10[0] = @"AXMType";
    v10[1] = @"AXMContent";
    v11[0] = @"Number";
    v11[1] = number;
    v6 = MEMORY[0x277CBEAC0];
    numberCopy = number;
    v8 = [v6 dictionaryWithObjects:v11 forKeys:v10 count:2];

    v9 = [v8 mutableCopy];
    if (implicitCopy)
    {
      [v9 setObject:MEMORY[0x277CBEC38] forKey:@"AXMIsImplicit"];
    }

    [(SCRCMathRowFormatter *)self _addDictionary:v9];
  }
}

- (void)addOperator:(id)operator implicit:(BOOL)implicit
{
  implicitCopy = implicit;
  v14[3] = *MEMORY[0x277D85DE8];
  operatorCopy = operator;
  v7 = operatorCopy;
  if (operatorCopy)
  {
    if ([operatorCopy length] == 1)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v7, "characterAtIndex:", 0)}];
      v13[0] = @"AXMType";
      v13[1] = @"AXMContent";
      v14[0] = @"Operator";
      v14[1] = v7;
      v13[2] = @"AXMUnichar";
      v14[2] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
      v10 = [v9 mutableCopy];
    }

    else
    {
      v11[0] = @"AXMType";
      v11[1] = @"AXMContent";
      v12[0] = @"Operator";
      v12[1] = v7;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
      v10 = [v8 mutableCopy];
    }

    if (implicitCopy)
    {
      [v10 setObject:MEMORY[0x277CBEC38] forKey:@"AXMIsImplicit"];
    }

    if ([(SCRCMathRowFormatter *)self isNumberOverride])
    {
      [v10 setObject:MEMORY[0x277CBEC38] forKey:@"AXMIsNumberOverride"];
    }

    [(SCRCMathRowFormatter *)self _addDictionary:v10];
  }
}

- (void)addIdentifier:(id)identifier
{
  v9[2] = *MEMORY[0x277D85DE8];
  if (identifier)
  {
    v8[0] = @"AXMType";
    v8[1] = @"AXMContent";
    v9[0] = @"Identifier";
    v9[1] = identifier;
    v4 = MEMORY[0x277CBEAC0];
    identifierCopy = identifier;
    v6 = [v4 dictionaryWithObjects:v9 forKeys:v8 count:2];

    v7 = [v6 mutableCopy];
    if ([(SCRCMathRowFormatter *)self isNumberOverride])
    {
      [v7 setObject:MEMORY[0x277CBEC38] forKey:@"AXMIsNumberOverride"];
    }

    [(SCRCMathRowFormatter *)self _addDictionary:v7];
  }
}

- (void)addRadicalWithRootIndex:(id)index
{
  v9[2] = *MEMORY[0x277D85DE8];
  if (index)
  {
    v8[0] = @"AXMType";
    v8[1] = @"AXMRootIndexObject";
    v9[0] = @"RootOperation";
    v9[1] = index;
    v4 = MEMORY[0x277CBEAC0];
    indexCopy = index;
    v6 = [v4 dictionaryWithObjects:v9 forKeys:v8 count:2];

    v7 = [v6 mutableCopy];
    if ([(SCRCMathRowFormatter *)self isNumberOverride])
    {
      [v7 setObject:MEMORY[0x277CBEC38] forKey:@"AXMIsNumberOverride"];
    }

    [(SCRCMathRowFormatter *)self _addDictionary:v7];
  }
}

- (void)addOpenParenthesis
{
  childrenStack = [(SCRCMathRowFormatter *)self childrenStack];
  v2 = objc_opt_new();
  [childrenStack addObject:v2];
}

- (void)addCloseParenthesis:(BOOL)parenthesis
{
  parenthesisCopy = parenthesis;
  v13[4] = *MEMORY[0x277D85DE8];
  childrenStack = [(SCRCMathRowFormatter *)self childrenStack];
  v6 = [childrenStack count];

  if (v6 >= 2)
  {
    childrenStack2 = [(SCRCMathRowFormatter *)self childrenStack];
    lastObject = [childrenStack2 lastObject];

    childrenStack3 = [(SCRCMathRowFormatter *)self childrenStack];
    [childrenStack3 removeLastObject];

    v12[0] = @"AXMType";
    v12[1] = @"AXMChildren";
    v13[0] = @"Fenced";
    v13[1] = lastObject;
    v12[2] = @"AXMOpenOperator";
    v12[3] = @"AXMCloseOperator";
    v13[2] = CFSTR("(");
    v13[3] = @"");
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:4];
    v11 = [v10 mutableCopy];

    if (parenthesisCopy)
    {
      [v11 setObject:MEMORY[0x277CBEC38] forKey:@"AXMIsImplicit"];
    }

    if ([(SCRCMathRowFormatter *)self isNumberOverride])
    {
      [v11 setObject:MEMORY[0x277CBEC38] forKey:@"AXMIsNumberOverride"];
    }

    [(SCRCMathRowFormatter *)self _addDictionary:v11];
  }
}

- (void)addSubscript:(id)subscript superscript:(id)superscript
{
  subscriptCopy = subscript;
  superscriptCopy = superscript;
  childrenStack = [(SCRCMathRowFormatter *)self childrenStack];
  v8 = [childrenStack count];

  if (v8)
  {
    v9 = [MEMORY[0x277CBEB38] dictionaryWithObject:@"SubSuperScript" forKey:@"AXMType"];
    if (subscriptCopy)
    {
      [v9 setObject:subscriptCopy forKey:@"AXMSubscriptObject"];
    }

    if (superscriptCopy)
    {
      [v9 setObject:superscriptCopy forKey:@"AXMSuperscriptObject"];
    }

    if ([(SCRCMathRowFormatter *)self isNumberOverride])
    {
      [v9 setObject:MEMORY[0x277CBEC38] forKey:@"AXMIsNumberOverride"];
    }

    [(SCRCMathRowFormatter *)self _addDictionary:v9];
  }
}

- (void)appendMathEquation:(id)equation
{
  v13[1] = *MEMORY[0x277D85DE8];
  equationCopy = equation;
  childrenStack = [(SCRCMathRowFormatter *)self childrenStack];
  v6 = [childrenStack count];

  if (v6)
  {
    v7 = [equationCopy objectForKey:@"AXMType"];
    v8 = [v7 isEqualToString:@"Row"];

    if (v8)
    {
      v9 = [equationCopy objectForKey:@"AXMChildren"];
    }

    else
    {
      v13[0] = equationCopy;
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    }

    v10 = v9;
    childrenStack2 = [(SCRCMathRowFormatter *)self childrenStack];
    lastObject = [childrenStack2 lastObject];

    [lastObject addObjectsFromArray:v10];
  }
}

- (void)_addDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    childrenStack = [(SCRCMathRowFormatter *)self childrenStack];
    v5 = [childrenStack count];

    if (v5)
    {
      childrenStack2 = [(SCRCMathRowFormatter *)self childrenStack];
      lastObject = [childrenStack2 lastObject];

      if ([lastObject count])
      {
        v7LastObject = [lastObject lastObject];
        v9 = [v7LastObject objectForKeyedSubscript:@"AXMType"];
        if ([v9 isEqualToString:@"RootOperation"])
        {
          v7LastObject2 = [lastObject lastObject];
          v11 = [v7LastObject2 objectForKeyedSubscript:@"AXMRadicandObject"];

          if (!v11)
          {
            v7LastObject3 = [lastObject lastObject];
            v13 = [v7LastObject3 mutableCopy];

            [v13 setObject:dictionaryCopy forKeyedSubscript:@"AXMRadicandObject"];
            [lastObject removeLastObject];
            [lastObject addObject:v13];

LABEL_12:
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v14 = [lastObject count];
      v15 = dictionaryCopy;
      if (v14 && ([dictionaryCopy objectForKeyedSubscript:@"AXMType"], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", @"SubSuperScript"), v16, v15 = dictionaryCopy, v17))
      {
        v18 = [dictionaryCopy mutableCopy];
        v7LastObject4 = [lastObject lastObject];
        [v18 setObject:v7LastObject4 forKey:@"AXMBaseObject"];

        [lastObject removeLastObject];
        [lastObject addObject:v18];
      }

      else
      {
        [lastObject addObject:v15];
      }

      goto LABEL_12;
    }
  }

LABEL_13:
}

- (id)mathEquation
{
  v17[3] = *MEMORY[0x277D85DE8];
  childrenStack = [(SCRCMathRowFormatter *)self childrenStack];
  v4 = [childrenStack count];

  if (v4)
  {
    childrenStack2 = [(SCRCMathRowFormatter *)self childrenStack];
    firstObject = [childrenStack2 firstObject];

    if ([firstObject count] == 1)
    {
      v6FirstObject = [firstObject firstObject];
    }

    else
    {
      if ([(SCRCMathRowFormatter *)self isNumberOverride])
      {
        v16[0] = @"AXMType";
        v16[1] = @"AXMChildren";
        v17[0] = @"Row";
        v17[1] = firstObject;
        v16[2] = @"AXMIsNumberOverride";
        v17[2] = MEMORY[0x277CBEC38];
        v9 = MEMORY[0x277CBEAC0];
        v10 = v17;
        v11 = v16;
        v12 = 3;
      }

      else
      {
        v14[0] = @"AXMType";
        v14[1] = @"AXMChildren";
        v15[0] = @"Row";
        v15[1] = firstObject;
        v9 = MEMORY[0x277CBEAC0];
        v10 = v15;
        v11 = v14;
        v12 = 2;
      }

      v6FirstObject = [v9 dictionaryWithObjects:v10 forKeys:v11 count:v12];
    }

    v8 = v6FirstObject;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end