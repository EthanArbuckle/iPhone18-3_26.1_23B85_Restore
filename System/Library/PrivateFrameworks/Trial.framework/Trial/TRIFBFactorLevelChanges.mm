@interface TRIFBFactorLevelChanges
- (void)replaceAlias:(id)alias;
- (void)replaceFactorId:(id)id;
- (void)replaceFactorNamespaceName:(id)name;
- (void)replaceLevelWithBoolVal:(id)val;
- (void)replaceLevelWithDoubleVal:(id)val;
- (void)replaceLevelWithInt64Val:(id)val;
- (void)replaceLevelWithMaRefVal:(id)val;
- (void)replaceLevelWithStringVal:(id)val;
- (void)replaceLevelWithTrialAssetVal:(id)val;
- (void)replaceMetadata:(id)metadata;
- (void)replaceName:(id)name;
@end

@implementation TRIFBFactorLevelChanges

- (void)replaceName:(id)name
{
  nameCopy = name;
  self->_changeTypeName = 1;
  v7 = nameCopy;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3970 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    nameCopy = 0;
  }

  self->_replacementName = [nameCopy unsignedIntValue];
}

- (void)replaceLevelWithBoolVal:(id)val
{
  valCopy = val;
  v7 = valCopy;
  if (!valCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3992 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    valCopy = 0;
  }

  *&self->_replacementLevelType = 257;
  self->_replacementLevel = [valCopy unsignedIntValue];
}

- (void)replaceLevelWithStringVal:(id)val
{
  valCopy = val;
  v7 = valCopy;
  if (!valCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3999 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    valCopy = 0;
  }

  *&self->_replacementLevelType = 258;
  self->_replacementLevel = [valCopy unsignedIntValue];
}

- (void)replaceLevelWithInt64Val:(id)val
{
  valCopy = val;
  v7 = valCopy;
  if (!valCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4006 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    valCopy = 0;
  }

  *&self->_replacementLevelType = 259;
  self->_replacementLevel = [valCopy unsignedIntValue];
}

- (void)replaceLevelWithDoubleVal:(id)val
{
  valCopy = val;
  v7 = valCopy;
  if (!valCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4013 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    valCopy = 0;
  }

  *&self->_replacementLevelType = 260;
  self->_replacementLevel = [valCopy unsignedIntValue];
}

- (void)replaceLevelWithTrialAssetVal:(id)val
{
  valCopy = val;
  v7 = valCopy;
  if (!valCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4020 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    valCopy = 0;
  }

  *&self->_replacementLevelType = 261;
  self->_replacementLevel = [valCopy unsignedIntValue];
}

- (void)replaceLevelWithMaRefVal:(id)val
{
  valCopy = val;
  v7 = valCopy;
  if (!valCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4027 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    valCopy = 0;
  }

  *&self->_replacementLevelType = 262;
  self->_replacementLevel = [valCopy unsignedIntValue];
}

- (void)replaceMetadata:(id)metadata
{
  metadataCopy = metadata;
  self->_changeTypeMetadata = 1;
  v7 = metadataCopy;
  if (!metadataCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4047 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    metadataCopy = 0;
  }

  self->_replacementMetadata = [metadataCopy unsignedIntValue];
}

- (void)replaceAlias:(id)alias
{
  aliasCopy = alias;
  self->_changeTypeAlias = 1;
  v7 = aliasCopy;
  if (!aliasCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4087 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    aliasCopy = 0;
  }

  self->_replacementAlias = [aliasCopy unsignedIntValue];
}

- (void)replaceFactorNamespaceName:(id)name
{
  nameCopy = name;
  self->_changeTypeFactorNamespaceName = 1;
  v7 = nameCopy;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4110 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    nameCopy = 0;
  }

  self->_replacementFactorNamespaceName = [nameCopy unsignedIntValue];
}

- (void)replaceFactorId:(id)id
{
  idCopy = id;
  self->_changeTypeFactorId = 1;
  v7 = idCopy;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4133 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    idCopy = 0;
  }

  self->_replacementFactorId = [idCopy unsignedIntValue];
}

@end