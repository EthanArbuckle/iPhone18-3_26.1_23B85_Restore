@interface TRIFBFactorLevelChanges
- (void)replaceAlias:(id)a3;
- (void)replaceFactorId:(id)a3;
- (void)replaceFactorNamespaceName:(id)a3;
- (void)replaceLevelWithBoolVal:(id)a3;
- (void)replaceLevelWithDoubleVal:(id)a3;
- (void)replaceLevelWithInt64Val:(id)a3;
- (void)replaceLevelWithMaRefVal:(id)a3;
- (void)replaceLevelWithStringVal:(id)a3;
- (void)replaceLevelWithTrialAssetVal:(id)a3;
- (void)replaceMetadata:(id)a3;
- (void)replaceName:(id)a3;
@end

@implementation TRIFBFactorLevelChanges

- (void)replaceName:(id)a3
{
  v5 = a3;
  self->_changeTypeName = 1;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3970 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  self->_replacementName = [v5 unsignedIntValue];
}

- (void)replaceLevelWithBoolVal:(id)a3
{
  v5 = a3;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3992 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  *&self->_replacementLevelType = 257;
  self->_replacementLevel = [v5 unsignedIntValue];
}

- (void)replaceLevelWithStringVal:(id)a3
{
  v5 = a3;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3999 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  *&self->_replacementLevelType = 258;
  self->_replacementLevel = [v5 unsignedIntValue];
}

- (void)replaceLevelWithInt64Val:(id)a3
{
  v5 = a3;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4006 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  *&self->_replacementLevelType = 259;
  self->_replacementLevel = [v5 unsignedIntValue];
}

- (void)replaceLevelWithDoubleVal:(id)a3
{
  v5 = a3;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4013 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  *&self->_replacementLevelType = 260;
  self->_replacementLevel = [v5 unsignedIntValue];
}

- (void)replaceLevelWithTrialAssetVal:(id)a3
{
  v5 = a3;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4020 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  *&self->_replacementLevelType = 261;
  self->_replacementLevel = [v5 unsignedIntValue];
}

- (void)replaceLevelWithMaRefVal:(id)a3
{
  v5 = a3;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4027 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  *&self->_replacementLevelType = 262;
  self->_replacementLevel = [v5 unsignedIntValue];
}

- (void)replaceMetadata:(id)a3
{
  v5 = a3;
  self->_changeTypeMetadata = 1;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4047 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  self->_replacementMetadata = [v5 unsignedIntValue];
}

- (void)replaceAlias:(id)a3
{
  v5 = a3;
  self->_changeTypeAlias = 1;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4087 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  self->_replacementAlias = [v5 unsignedIntValue];
}

- (void)replaceFactorNamespaceName:(id)a3
{
  v5 = a3;
  self->_changeTypeFactorNamespaceName = 1;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4110 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  self->_replacementFactorNamespaceName = [v5 unsignedIntValue];
}

- (void)replaceFactorId:(id)a3
{
  v5 = a3;
  self->_changeTypeFactorId = 1;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4133 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  self->_replacementFactorId = [v5 unsignedIntValue];
}

@end