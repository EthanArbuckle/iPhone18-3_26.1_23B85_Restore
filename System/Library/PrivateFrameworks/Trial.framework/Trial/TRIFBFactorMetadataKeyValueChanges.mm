@interface TRIFBFactorMetadataKeyValueChanges
- (void)replaceKey:(id)a3;
- (void)replaceVal:(id)a3;
@end

@implementation TRIFBFactorMetadataKeyValueChanges

- (void)replaceKey:(id)a3
{
  v5 = a3;
  self->_changeTypeKey = 1;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3005 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  self->_replacementKey = [v5 unsignedIntValue];
}

- (void)replaceVal:(id)a3
{
  v5 = a3;
  self->_changeTypeVal = 1;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3024 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  self->_replacementVal = [v5 unsignedIntValue];
}

@end