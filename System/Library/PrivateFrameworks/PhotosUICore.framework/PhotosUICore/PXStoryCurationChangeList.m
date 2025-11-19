@interface PXStoryCurationChangeList
+ (id)changeListByCombiningChangeList:(id)a3 withChangeList:(id)a4;
- (BOOL)isEqual:(id)a3;
- (PXStoryCurationChangeList)initWithPromotedIdentifiers:(id)a3 demotedIdentifiers:(id)a4;
- (id)changeListByApplyingChangeList:(id)a3;
- (id)changeListByDemotingIdentifiers:(id)a3;
- (id)changeListByPromotingIdentifiers:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation PXStoryCurationChangeList

- (id)changeListByApplyingChangeList:(id)a3
{
  v4 = a3;
  v5 = [(PXStoryCurationChangeList *)self promotedIdentifiers];
  v6 = [v5 mutableCopy];

  v7 = [(PXStoryCurationChangeList *)self demotedIdentifiers];
  v8 = [v7 mutableCopy];

  v9 = [v4 promotedIdentifiers];
  [v6 unionSet:v9];

  v10 = [v4 demotedIdentifiers];
  [v6 minusSet:v10];

  v11 = [v4 promotedIdentifiers];
  [v8 minusSet:v11];

  v12 = [v4 demotedIdentifiers];

  [v8 unionSet:v12];
  v13 = [objc_alloc(objc_opt_class()) initWithPromotedIdentifiers:v6 demotedIdentifiers:v8];

  return v13;
}

- (id)changeListByDemotingIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [PXStoryCurationChangeList alloc];
  v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v4];

  v7 = [(PXStoryCurationChangeList *)v5 initWithPromotedIdentifiers:0 demotedIdentifiers:v6];
  v8 = [(PXStoryCurationChangeList *)self changeListByApplyingChangeList:v7];

  return v8;
}

- (id)changeListByPromotingIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [PXStoryCurationChangeList alloc];
  v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v4];

  v7 = [(PXStoryCurationChangeList *)v5 initWithPromotedIdentifiers:v6 demotedIdentifiers:0];
  v8 = [(PXStoryCurationChangeList *)self changeListByApplyingChangeList:v7];

  return v8;
}

- (unint64_t)hash
{
  v3 = [(PXStoryCurationChangeList *)self promotedIdentifiers];
  v4 = [v3 hash];

  v5 = [(PXStoryCurationChangeList *)self demotedIdentifiers];
  v6 = v4 ^ (2 * [v5 hash]);

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PXStoryCurationChangeList *)self promotedIdentifiers];
      v7 = [(PXStoryCurationChangeList *)v5 promotedIdentifiers];
      if ([v6 isEqualToSet:v7])
      {
        v8 = [(PXStoryCurationChangeList *)self demotedIdentifiers];
        v9 = [(PXStoryCurationChangeList *)v5 demotedIdentifiers];
        v10 = [v8 isEqualToSet:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PXStoryCurationChangeList *)self promotedIdentifiers];
  v7 = [(PXStoryCurationChangeList *)self demotedIdentifiers];
  v8 = [v3 initWithFormat:@"<%@: %p, promoted: %@, demoted: %@>", v5, self, v6, v7];

  return v8;
}

- (PXStoryCurationChangeList)initWithPromotedIdentifiers:(id)a3 demotedIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = PXStoryCurationChangeList;
  v8 = [(PXStoryCurationChangeList *)&v19 init];
  if (v8)
  {
    v9 = [v6 copy];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    }

    promotedIdentifiers = v8->_promotedIdentifiers;
    v8->_promotedIdentifiers = v11;

    v13 = [v7 copy];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    }

    demotedIdentifiers = v8->_demotedIdentifiers;
    v8->_demotedIdentifiers = v15;

    if ([(NSSet *)v8->_promotedIdentifiers count])
    {
      v17 = 1;
    }

    else
    {
      v17 = [(NSSet *)v8->_demotedIdentifiers count]!= 0;
    }

    v8->_hasAnyChange = v17;
  }

  return v8;
}

+ (id)changeListByCombiningChangeList:(id)a3 withChangeList:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      v8 = [v5 changeListByApplyingChangeList:v6];
    }

    else
    {
      v8 = v5;
    }
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;

  return v9;
}

@end