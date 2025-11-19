@interface TRIFBCloudKitTreatmentRecordAssetChanges
- (void)replaceTreatmentId:(id)a3;
@end

@implementation TRIFBCloudKitTreatmentRecordAssetChanges

- (void)replaceTreatmentId:(id)a3
{
  v5 = a3;
  self->_changeTypeTreatmentId = 1;
  v7 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFBFastFactorLevels_generated.mm" lineNumber:780 description:{@"Invalid parameter not satisfying: %@", @"ofs"}];

    v5 = 0;
  }

  self->_replacementTreatmentId = [v5 unsignedIntValue];
}

@end