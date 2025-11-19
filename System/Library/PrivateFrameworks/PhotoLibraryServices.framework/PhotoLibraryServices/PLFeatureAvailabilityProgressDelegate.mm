@interface PLFeatureAvailabilityProgressDelegate
- (PLFeatureAvailabilityProgressDelegate)initWithLibraryServicesManager:(id)a3;
- (void)_featureAvailability:(id)a3 updateProgressForFeature:(id)a4;
- (void)featureAvailability:(id)a3 updateProgressForFeature:(id)a4;
@end

@implementation PLFeatureAvailabilityProgressDelegate

- (void)_featureAvailability:(id)a3 updateProgressForFeature:(id)a4
{
  v5 = [a4 unsignedIntegerValue];
  WeakRetained = objc_loadWeakRetained(&self->_lsm);
  v6 = [WeakRetained analysisCoordinator];
  [v6 reportBGSTCheckpointProgressForFeature:v5];
}

- (void)featureAvailability:(id)a3 updateProgressForFeature:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  WeakRetained = objc_loadWeakRetained(&self->_lsm);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__PLFeatureAvailabilityProgressDelegate_featureAvailability_updateProgressForFeature___block_invoke;
  v11[3] = &unk_1E7571E20;
  objc_copyWeak(&v14, &location);
  v9 = v6;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  [WeakRetained enqueueOperationWithName:@"Feature Availability Progress" requiredState:7 executionBlock:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __86__PLFeatureAvailabilityProgressDelegate_featureAvailability_updateProgressForFeature___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _featureAvailability:*(a1 + 32) updateProgressForFeature:*(a1 + 40)];
}

- (PLFeatureAvailabilityProgressDelegate)initWithLibraryServicesManager:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PLFeatureAvailabilityProgressDelegate;
  v5 = [(PLFeatureAvailabilityProgressDelegate *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_lsm, v4);
    v7 = v6;
  }

  return v6;
}

@end