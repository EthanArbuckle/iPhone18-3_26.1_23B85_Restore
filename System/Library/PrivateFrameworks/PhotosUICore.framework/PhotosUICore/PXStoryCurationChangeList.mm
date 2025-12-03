@interface PXStoryCurationChangeList
+ (id)changeListByCombiningChangeList:(id)list withChangeList:(id)changeList;
- (BOOL)isEqual:(id)equal;
- (PXStoryCurationChangeList)initWithPromotedIdentifiers:(id)identifiers demotedIdentifiers:(id)demotedIdentifiers;
- (id)changeListByApplyingChangeList:(id)list;
- (id)changeListByDemotingIdentifiers:(id)identifiers;
- (id)changeListByPromotingIdentifiers:(id)identifiers;
- (id)description;
- (unint64_t)hash;
@end

@implementation PXStoryCurationChangeList

- (id)changeListByApplyingChangeList:(id)list
{
  listCopy = list;
  promotedIdentifiers = [(PXStoryCurationChangeList *)self promotedIdentifiers];
  v6 = [promotedIdentifiers mutableCopy];

  demotedIdentifiers = [(PXStoryCurationChangeList *)self demotedIdentifiers];
  v8 = [demotedIdentifiers mutableCopy];

  promotedIdentifiers2 = [listCopy promotedIdentifiers];
  [v6 unionSet:promotedIdentifiers2];

  demotedIdentifiers2 = [listCopy demotedIdentifiers];
  [v6 minusSet:demotedIdentifiers2];

  promotedIdentifiers3 = [listCopy promotedIdentifiers];
  [v8 minusSet:promotedIdentifiers3];

  demotedIdentifiers3 = [listCopy demotedIdentifiers];

  [v8 unionSet:demotedIdentifiers3];
  v13 = [objc_alloc(objc_opt_class()) initWithPromotedIdentifiers:v6 demotedIdentifiers:v8];

  return v13;
}

- (id)changeListByDemotingIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [PXStoryCurationChangeList alloc];
  v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:identifiersCopy];

  v7 = [(PXStoryCurationChangeList *)v5 initWithPromotedIdentifiers:0 demotedIdentifiers:v6];
  v8 = [(PXStoryCurationChangeList *)self changeListByApplyingChangeList:v7];

  return v8;
}

- (id)changeListByPromotingIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [PXStoryCurationChangeList alloc];
  v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:identifiersCopy];

  v7 = [(PXStoryCurationChangeList *)v5 initWithPromotedIdentifiers:v6 demotedIdentifiers:0];
  v8 = [(PXStoryCurationChangeList *)self changeListByApplyingChangeList:v7];

  return v8;
}

- (unint64_t)hash
{
  promotedIdentifiers = [(PXStoryCurationChangeList *)self promotedIdentifiers];
  v4 = [promotedIdentifiers hash];

  demotedIdentifiers = [(PXStoryCurationChangeList *)self demotedIdentifiers];
  v6 = v4 ^ (2 * [demotedIdentifiers hash]);

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      promotedIdentifiers = [(PXStoryCurationChangeList *)self promotedIdentifiers];
      promotedIdentifiers2 = [(PXStoryCurationChangeList *)v5 promotedIdentifiers];
      if ([promotedIdentifiers isEqualToSet:promotedIdentifiers2])
      {
        demotedIdentifiers = [(PXStoryCurationChangeList *)self demotedIdentifiers];
        demotedIdentifiers2 = [(PXStoryCurationChangeList *)v5 demotedIdentifiers];
        v10 = [demotedIdentifiers isEqualToSet:demotedIdentifiers2];
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
  promotedIdentifiers = [(PXStoryCurationChangeList *)self promotedIdentifiers];
  demotedIdentifiers = [(PXStoryCurationChangeList *)self demotedIdentifiers];
  v8 = [v3 initWithFormat:@"<%@: %p, promoted: %@, demoted: %@>", v5, self, promotedIdentifiers, demotedIdentifiers];

  return v8;
}

- (PXStoryCurationChangeList)initWithPromotedIdentifiers:(id)identifiers demotedIdentifiers:(id)demotedIdentifiers
{
  identifiersCopy = identifiers;
  demotedIdentifiersCopy = demotedIdentifiers;
  v19.receiver = self;
  v19.super_class = PXStoryCurationChangeList;
  v8 = [(PXStoryCurationChangeList *)&v19 init];
  if (v8)
  {
    v9 = [identifiersCopy copy];
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

    v13 = [demotedIdentifiersCopy copy];
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

+ (id)changeListByCombiningChangeList:(id)list withChangeList:(id)changeList
{
  listCopy = list;
  changeListCopy = changeList;
  v7 = changeListCopy;
  if (listCopy)
  {
    if (changeListCopy)
    {
      v8 = [listCopy changeListByApplyingChangeList:changeListCopy];
    }

    else
    {
      v8 = listCopy;
    }
  }

  else
  {
    v8 = changeListCopy;
  }

  v9 = v8;

  return v9;
}

@end