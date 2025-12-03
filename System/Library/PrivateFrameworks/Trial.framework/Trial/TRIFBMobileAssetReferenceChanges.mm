@interface TRIFBMobileAssetReferenceChanges
- (void)replaceAssetName:(id)name;
- (void)replaceSpecifier:(id)specifier;
- (void)replaceType:(id)type;
- (void)replaceVersion:(id)version;
@end

@implementation TRIFBMobileAssetReferenceChanges

- (void)replaceType:(id)type
{
  typeCopy = type;
  self->_changeTypeType = 1;
  v7 = typeCopy;
  if (!typeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:2479 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    typeCopy = 0;
  }

  self->_replacementType = [typeCopy unsignedIntValue];
}

- (void)replaceSpecifier:(id)specifier
{
  specifierCopy = specifier;
  self->_changeTypeSpecifier = 1;
  v7 = specifierCopy;
  if (!specifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:2498 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    specifierCopy = 0;
  }

  self->_replacementSpecifier = [specifierCopy unsignedIntValue];
}

- (void)replaceVersion:(id)version
{
  versionCopy = version;
  self->_changeTypeVersion = 1;
  v7 = versionCopy;
  if (!versionCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:2517 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    versionCopy = 0;
  }

  self->_replacementVersion = [versionCopy unsignedIntValue];
}

- (void)replaceAssetName:(id)name
{
  nameCopy = name;
  self->_changeTypeAssetName = 1;
  v7 = nameCopy;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:2599 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    nameCopy = 0;
  }

  self->_replacementAssetName = [nameCopy unsignedIntValue];
}

@end