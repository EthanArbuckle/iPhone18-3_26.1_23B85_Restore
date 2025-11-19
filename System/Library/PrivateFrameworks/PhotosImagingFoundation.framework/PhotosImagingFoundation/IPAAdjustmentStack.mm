@interface IPAAdjustmentStack
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAdjustmentStack:(id)a3;
- (IPAAdjustmentStack)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
@end

@implementation IPAAdjustmentStack

- (id)debugDescription
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  [v3 appendFormat:@"<%@:%p ", objc_opt_class(), self];
  v4 = [(IPAAdjustmentStack *)self versionInfo];
  [v3 appendFormat:@"versionInfo=%@", v4];

  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_adjustments;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) debugDescription];
        [v5 addObject:v11];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [v5 componentsJoinedByString:{@", "}];
  [v3 appendFormat:@"adjustments=[%@]", v12];

  v13 = [(IPAAdjustmentStack *)self _debugDescriptionSuffix];
  if (v13)
  {
    [v3 appendString:@" "];
    [v3 appendString:v13];
  }

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToAdjustmentStack:(id)a3
{
  v4 = self->_adjustments;
  v5 = [a3 adjustments];
  v6 = [(NSArray *)v4 count];
  if (v6 == [v5 count])
  {
    if (v6)
    {
      v7 = 0;
      v8 = v6 - 1;
      do
      {
        v9 = [(NSArray *)v4 objectAtIndexedSubscript:v7];
        v10 = [v5 objectAtIndexedSubscript:v7];
        v11 = [v9 isEqualToAdjustment:v10];

        if (!v11)
        {
          break;
        }
      }

      while (v8 != v7++);
    }

    else
    {
      LOBYTE(v11) = 1;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IPAAdjustmentStack *)self isEqualToAdjustmentStack:v4];

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(IPAAdjustmentStack *)self versionInfo];
  [v4 setVersionInfo:v5];

  v6 = [(IPAAdjustmentStack *)self adjustments];
  [v4 setAdjustments:v6];

  return v4;
}

- (IPAAdjustmentStack)init
{
  v6.receiver = self;
  v6.super_class = IPAAdjustmentStack;
  v2 = [(IPAAdjustmentStack *)&v6 init];
  v3 = v2;
  if (v2)
  {
    adjustments = v2->_adjustments;
    v2->_adjustments = MEMORY[0x277CBEBF8];
  }

  return v3;
}

@end