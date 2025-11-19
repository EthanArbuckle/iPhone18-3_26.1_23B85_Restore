@interface TRIRuleQualifiedFactorPackSetId
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFactorPackSetId:(id)a3;
- (TRIRuleQualifiedFactorPackSetId)initWithIdent:(id)a3 targetingRuleIndex:(int)a4;
- (id)copyWithReplacementIdent:(id)a3;
- (id)description;
@end

@implementation TRIRuleQualifiedFactorPackSetId

- (TRIRuleQualifiedFactorPackSetId)initWithIdent:(id)a3 targetingRuleIndex:(int)a4
{
  v8 = a3;
  if (!v8)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:4336 description:{@"Invalid parameter not satisfying: %@", @"ident != nil"}];
  }

  v13.receiver = self;
  v13.super_class = TRIRuleQualifiedFactorPackSetId;
  v9 = [(TRIRuleQualifiedFactorPackSetId *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ident, a3);
    v10->_targetingRuleIndex = a4;
  }

  return v10;
}

- (id)copyWithReplacementIdent:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithIdent:v4 targetingRuleIndex:self->_targetingRuleIndex];

  return v5;
}

- (BOOL)isEqualToFactorPackSetId:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  v6 = self->_ident == 0;
  v7 = [v4 ident];
  v8 = v7 != 0;

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIRuleQualifiedFactorPackSetId *)self isEqualToFactorPackSetId:v5];
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