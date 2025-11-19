@interface TRIFBFastFactorLevelsChanges
- (void)replaceLevels:(id)a3;
- (void)replaceNamespaceName:(id)a3;
- (void)replaceNcvs:(id)a3;
- (void)replaceSourceWithDefaults:(id)a3;
- (void)replaceSourceWithFactorPackId:(id)a3;
- (void)replaceSourceWithTreatmentId:(id)a3;
@end

@implementation TRIFBFastFactorLevelsChanges

- (void)replaceLevels:(id)a3
{
  v5 = a3;
  self->_changeTypeLevels = 1;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4902 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  self->_replacementLevels = [v5 unsignedIntValue];
}

- (void)replaceSourceWithTreatmentId:(id)a3
{
  v5 = a3;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4924 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  *&self->_replacementSourceType = 257;
  self->_replacementSource = [v5 unsignedIntValue];
}

- (void)replaceSourceWithFactorPackId:(id)a3
{
  v5 = a3;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4931 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  *&self->_replacementSourceType = 258;
  self->_replacementSource = [v5 unsignedIntValue];
}

- (void)replaceSourceWithDefaults:(id)a3
{
  v5 = a3;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4938 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  *&self->_replacementSourceType = 259;
  self->_replacementSource = [v5 unsignedIntValue];
}

- (void)replaceNamespaceName:(id)a3
{
  v5 = a3;
  self->_changeTypeNamespaceName = 1;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4958 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  self->_replacementNamespaceName = [v5 unsignedIntValue];
}

- (void)replaceNcvs:(id)a3
{
  v5 = a3;
  self->_changeTypeNcvs = 1;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4977 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  self->_replacementNcvs = [v5 unsignedIntValue];
}

@end