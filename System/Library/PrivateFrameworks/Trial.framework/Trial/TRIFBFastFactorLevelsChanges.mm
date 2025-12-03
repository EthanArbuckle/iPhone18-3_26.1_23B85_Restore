@interface TRIFBFastFactorLevelsChanges
- (void)replaceLevels:(id)levels;
- (void)replaceNamespaceName:(id)name;
- (void)replaceNcvs:(id)ncvs;
- (void)replaceSourceWithDefaults:(id)defaults;
- (void)replaceSourceWithFactorPackId:(id)id;
- (void)replaceSourceWithTreatmentId:(id)id;
@end

@implementation TRIFBFastFactorLevelsChanges

- (void)replaceLevels:(id)levels
{
  levelsCopy = levels;
  self->_changeTypeLevels = 1;
  v7 = levelsCopy;
  if (!levelsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4902 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    levelsCopy = 0;
  }

  self->_replacementLevels = [levelsCopy unsignedIntValue];
}

- (void)replaceSourceWithTreatmentId:(id)id
{
  idCopy = id;
  v7 = idCopy;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4924 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    idCopy = 0;
  }

  *&self->_replacementSourceType = 257;
  self->_replacementSource = [idCopy unsignedIntValue];
}

- (void)replaceSourceWithFactorPackId:(id)id
{
  idCopy = id;
  v7 = idCopy;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4931 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    idCopy = 0;
  }

  *&self->_replacementSourceType = 258;
  self->_replacementSource = [idCopy unsignedIntValue];
}

- (void)replaceSourceWithDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v7 = defaultsCopy;
  if (!defaultsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4938 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    defaultsCopy = 0;
  }

  *&self->_replacementSourceType = 259;
  self->_replacementSource = [defaultsCopy unsignedIntValue];
}

- (void)replaceNamespaceName:(id)name
{
  nameCopy = name;
  self->_changeTypeNamespaceName = 1;
  v7 = nameCopy;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4958 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    nameCopy = 0;
  }

  self->_replacementNamespaceName = [nameCopy unsignedIntValue];
}

- (void)replaceNcvs:(id)ncvs
{
  ncvsCopy = ncvs;
  self->_changeTypeNcvs = 1;
  v7 = ncvsCopy;
  if (!ncvsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:4977 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    ncvsCopy = 0;
  }

  self->_replacementNcvs = [ncvsCopy unsignedIntValue];
}

@end