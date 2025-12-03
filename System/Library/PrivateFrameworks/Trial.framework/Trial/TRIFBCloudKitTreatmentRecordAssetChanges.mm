@interface TRIFBCloudKitTreatmentRecordAssetChanges
- (void)replaceTreatmentId:(id)id;
@end

@implementation TRIFBCloudKitTreatmentRecordAssetChanges

- (void)replaceTreatmentId:(id)id
{
  idCopy = id;
  self->_changeTypeTreatmentId = 1;
  v7 = idCopy;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:780 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    idCopy = 0;
  }

  self->_replacementTreatmentId = [idCopy unsignedIntValue];
}

@end