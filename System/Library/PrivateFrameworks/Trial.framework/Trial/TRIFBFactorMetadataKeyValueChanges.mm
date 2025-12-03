@interface TRIFBFactorMetadataKeyValueChanges
- (void)replaceKey:(id)key;
- (void)replaceVal:(id)val;
@end

@implementation TRIFBFactorMetadataKeyValueChanges

- (void)replaceKey:(id)key
{
  keyCopy = key;
  self->_changeTypeKey = 1;
  v7 = keyCopy;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3005 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    keyCopy = 0;
  }

  self->_replacementKey = [keyCopy unsignedIntValue];
}

- (void)replaceVal:(id)val
{
  valCopy = val;
  self->_changeTypeVal = 1;
  v7 = valCopy;
  if (!valCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:3024 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    valCopy = 0;
  }

  self->_replacementVal = [valCopy unsignedIntValue];
}

@end