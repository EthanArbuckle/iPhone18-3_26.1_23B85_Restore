@interface TRIRuleQualifiedFactorPackSetId
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFactorPackSetId:(id)id;
- (TRIRuleQualifiedFactorPackSetId)initWithIdent:(id)ident targetingRuleIndex:(int)index;
- (id)copyWithReplacementIdent:(id)ident;
- (id)description;
@end

@implementation TRIRuleQualifiedFactorPackSetId

- (TRIRuleQualifiedFactorPackSetId)initWithIdent:(id)ident targetingRuleIndex:(int)index
{
  identCopy = ident;
  if (!identCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:4336 description:{@"Invalid parameter not satisfying: %@", @"ident != nil"}];
  }

  v13.receiver = self;
  v13.super_class = TRIRuleQualifiedFactorPackSetId;
  v9 = [(TRIRuleQualifiedFactorPackSetId *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ident, ident);
    v10->_targetingRuleIndex = index;
  }

  return v10;
}

- (id)copyWithReplacementIdent:(id)ident
{
  identCopy = ident;
  v5 = [objc_alloc(objc_opt_class()) initWithIdent:identCopy targetingRuleIndex:self->_targetingRuleIndex];

  return v5;
}

- (BOOL)isEqualToFactorPackSetId:(id)id
{
  idCopy = id;
  v5 = idCopy;
  if (!idCopy)
  {
    goto LABEL_6;
  }

  v6 = self->_ident == 0;
  ident = [idCopy ident];
  v8 = ident != 0;

  if (v6 == v8 || (ident = self->_ident) != 0 && ([v5 ident], v10 = objc_claimAutoreleasedReturnValue(), v11 = -[TRIFactorPackSetId isEqual:](ident, "isEqual:", v10), v10, !v11))
  {
LABEL_6:
    v13 = 0;
  }

  else
  {
    targetingRuleIndex = self->_targetingRuleIndex;
    v13 = targetingRuleIndex == [v5 targetingRuleIndex];
  }

  return v13;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIRuleQualifiedFactorPackSetId *)self isEqualToFactorPackSetId:v5];
  }

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  ident = self->_ident;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_targetingRuleIndex];
  v6 = [v3 initWithFormat:@"<TRIRuleQualifiedFactorPackSetId | ident:%@ targetingRuleIndex:%@>", ident, v5];

  return v6;
}

@end