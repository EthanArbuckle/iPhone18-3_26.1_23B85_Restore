@interface TRIParsedFactorPackSet
+ (id)setWithIdent:(id)ident packs:(id)packs;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSet:(id)set;
- (TRIParsedFactorPackSet)initWithIdent:(id)ident packs:(id)packs;
- (id)copyWithReplacementIdent:(id)ident;
- (id)copyWithReplacementPacks:(id)packs;
- (id)description;
@end

@implementation TRIParsedFactorPackSet

- (TRIParsedFactorPackSet)initWithIdent:(id)ident packs:(id)packs
{
  identCopy = ident;
  packsCopy = packs;
  v10 = packsCopy;
  if (identCopy)
  {
    if (packsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1622 description:{@"Invalid parameter not satisfying: %@", @"ident != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1623 description:{@"Invalid parameter not satisfying: %@", @"packs != nil"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = TRIParsedFactorPackSet;
  v11 = [(TRIParsedFactorPackSet *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_ident, ident);
    objc_storeStrong(&v12->_packs, packs);
  }

  return v12;
}

+ (id)setWithIdent:(id)ident packs:(id)packs
{
  packsCopy = packs;
  identCopy = ident;
  v8 = [[self alloc] initWithIdent:identCopy packs:packsCopy];

  return v8;
}

- (id)copyWithReplacementIdent:(id)ident
{
  identCopy = ident;
  v5 = [objc_alloc(objc_opt_class()) initWithIdent:identCopy packs:self->_packs];

  return v5;
}

- (id)copyWithReplacementPacks:(id)packs
{
  packsCopy = packs;
  v5 = [objc_alloc(objc_opt_class()) initWithIdent:self->_ident packs:packsCopy];

  return v5;
}

- (BOOL)isEqualToSet:(id)set
{
  setCopy = set;
  v5 = setCopy;
  if (!setCopy)
  {
    goto LABEL_8;
  }

  v6 = self->_ident == 0;
  ident = [setCopy ident];
  v8 = ident != 0;

  if (v6 == v8)
  {
    goto LABEL_8;
  }

  ident = self->_ident;
  if (ident)
  {
    ident2 = [v5 ident];
    v11 = [(TRIFactorPackSetId *)ident isEqual:ident2];

    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v12 = self->_packs == 0;
  packs = [v5 packs];
  v14 = packs != 0;

  if (v12 == v14)
  {
LABEL_8:
    v17 = 0;
  }

  else
  {
    packs = self->_packs;
    if (packs)
    {
      packs2 = [v5 packs];
      v17 = [(NSArray *)packs isEqual:packs2];
    }

    else
    {
      v17 = 1;
    }
  }

  return v17 & 1;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIParsedFactorPackSet *)self isEqualToSet:v5];
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRIParsedFactorPackSet | ident:%@ packs:%@>", self->_ident, self->_packs];

  return v2;
}

@end