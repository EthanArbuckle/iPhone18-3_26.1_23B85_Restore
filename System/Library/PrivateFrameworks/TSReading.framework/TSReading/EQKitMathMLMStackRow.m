@interface EQKitMathMLMStackRow
- (BOOL)isBaseFontNameUsed;
- (EQKitMathMLMStackRow)initWithChildren:(id)a3;
- (const)mathMLAttributes;
- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4;
- (void)dealloc;
@end

@implementation EQKitMathMLMStackRow

- (id)initFromXMLNode:(_xmlNode *)a3 parser:(id)a4
{
  v5 = [a4 parseChildrenAsArrayFromXMLNode:a3];

  return [(EQKitMathMLMStackRow *)self initWithChildren:v5];
}

- (const)mathMLAttributes
{
  {
    std::set<EQKitTypes::Attributes::Enum>::set[abi:nn200100]<EQKitTypes::Attributes::Enum const*>(-[EQKitMathMLMStackRow mathMLAttributes]::sAttributesSet, &-[EQKitMathMLMStackRow mathMLAttributes]::sAttributesData, -[EQKitMathMLMTable mathMLAttributes]::sAttributesData);
  }

  return [EQKitMathMLMStackRow mathMLAttributes]::sAttributesSet;
}

- (EQKitMathMLMStackRow)initWithChildren:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = EQKitMathMLMStackRow;
  v4 = [(EQKitMathMLMStackRow *)&v15 init];
  if (v4)
  {
    v5 = a3;
    v4->mChildren = v5;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v11 + 1) + 8 * v9++) setParent:v4];
        }

        while (v7 != v9);
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
      }

      while (v7);
    }
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EQKitMathMLMStackRow;
  [(EQKitMathMLMStackRow *)&v3 dealloc];
}

- (BOOL)isBaseFontNameUsed
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  mChildren = self->mChildren;
  v3 = [(NSArray *)mChildren countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(mChildren);
        }

        if ([*(*(&v8 + 1) + 8 * v6) isBaseFontNameUsed])
        {
          LOBYTE(v3) = 1;
          return v3;
        }

        ++v6;
      }

      while (v4 != v6);
      v3 = [(NSArray *)mChildren countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

@end