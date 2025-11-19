@interface TRIFBMobileAssetReferenceChanges
- (void)replaceAssetName:(id)a3;
- (void)replaceSpecifier:(id)a3;
- (void)replaceType:(id)a3;
- (void)replaceVersion:(id)a3;
@end

@implementation TRIFBMobileAssetReferenceChanges

- (void)replaceType:(id)a3
{
  v5 = a3;
  self->_changeTypeType = 1;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:2479 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  self->_replacementType = [v5 unsignedIntValue];
}

- (void)replaceSpecifier:(id)a3
{
  v5 = a3;
  self->_changeTypeSpecifier = 1;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:2498 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  self->_replacementSpecifier = [v5 unsignedIntValue];
}

- (void)replaceVersion:(id)a3
{
  v5 = a3;
  self->_changeTypeVersion = 1;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:2517 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  self->_replacementVersion = [v5 unsignedIntValue];
}

- (void)replaceAssetName:(id)a3
{
  v5 = a3;
  self->_changeTypeAssetName = 1;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:2599 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  self->_replacementAssetName = [v5 unsignedIntValue];
}

@end