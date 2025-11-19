@interface TRIParsedFactorPackSet
+ (id)setWithIdent:(id)a3 packs:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSet:(id)a3;
- (TRIParsedFactorPackSet)initWithIdent:(id)a3 packs:(id)a4;
- (id)copyWithReplacementIdent:(id)a3;
- (id)copyWithReplacementPacks:(id)a3;
- (id)description;
@end

@implementation TRIParsedFactorPackSet

- (TRIParsedFactorPackSet)initWithIdent:(id)a3 packs:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1622 description:{@"Invalid parameter not satisfying: %@", @"ident != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x277CCA890] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1623 description:{@"Invalid parameter not satisfying: %@", @"packs != nil"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = TRIParsedFactorPackSet;
  v11 = [(TRIParsedFactorPackSet *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_ident, a3);
    objc_storeStrong(&v12->_packs, a4);
  }

  return v12;
}

+ (id)setWithIdent:(id)a3 packs:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithIdent:v7 packs:v6];

  return v8;
}

- (id)copyWithReplacementIdent:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithIdent:v4 packs:self->_packs];

  return v5;
}

- (id)copyWithReplacementPacks:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithIdent:self->_ident packs:v4];

  return v5;
}

- (BOOL)isEqualToSet:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = self->_ident == 0;
  v7 = [v4 ident];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_8;
  }

  ident = self->_ident;
  if (ident)
  {
    v10 = [v5 ident];
    v11 = [(TRIFactorPackSetId *)ident isEqual:v10];

    if (!v11)
    {
      goto LABEL_8;
    }
  }

  v12 = self->_packs == 0;
  v13 = [v5 packs];
  v14 = v13 != 0;

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
      v16 = [v5 packs];
      v17 = [(NSArray *)packs isEqual:v16];
    }

    else
    {
      v17 = 1;
    }
  }

  return v17 & 1;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIParsedFactorPackSet *)self isEqualToSet:v5];
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<TRIParsedFactorPackSet | ident:%@ packs:%@>", self->_ident, self->_packs];

  return v2;
}

@end