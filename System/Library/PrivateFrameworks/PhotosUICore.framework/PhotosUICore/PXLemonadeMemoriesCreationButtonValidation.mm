@interface PXLemonadeMemoriesCreationButtonValidation
- (PXLemonadeMemoriesCreationButtonValidation)init;
- (PXLemonadeMemoriesCreationButtonValidation)initWithPhotoLibrary:(id)a3;
- (id)observeMemoryCreationButtonAvailabilityWithUpdateHandler:(id)a3;
- (void)fetchMemoryCreationButtonAvailabilityWithCompletionHandler:(id)a3;
- (void)invalidateObservationForObservationRequestIdentifier:(id)a3;
@end

@implementation PXLemonadeMemoriesCreationButtonValidation

- (void)fetchMemoryCreationButtonAvailabilityWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(PXLemonadeMemoriesCreationButtonValidation *)self validation];
  [v5 fetchMemoryCreationButtonAvailabilityWithCompletionHandler:v4];
}

- (void)invalidateObservationForObservationRequestIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PXLemonadeMemoriesCreationButtonValidation *)self validation];
  [v5 invalidateObservationFor:v4];
}

- (id)observeMemoryCreationButtonAvailabilityWithUpdateHandler:(id)a3
{
  v4 = a3;
  v5 = [(PXLemonadeMemoriesCreationButtonValidation *)self validation];
  v6 = [v5 observeMemoryCreationButtonAvailabilityWithUpdateHandler:v4];

  return v6;
}

- (PXLemonadeMemoriesCreationButtonValidation)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXLemonadeMemoriesCreationButtonValidation.m" lineNumber:32 description:{@"%s is not available as initializer", "-[PXLemonadeMemoriesCreationButtonValidation init]"}];

  abort();
}

- (PXLemonadeMemoriesCreationButtonValidation)initWithPhotoLibrary:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PXLemonadeMemoriesCreationButtonValidation;
  v5 = [(PXLemonadeMemoriesCreationButtonValidation *)&v8 init];
  if (v5)
  {
    v6 = [[_TtC12PhotosUICore40LemonadeMemoriesCreationButtonValidation alloc] initWithPhotoLibrary:v4];
    [(PXLemonadeMemoriesCreationButtonValidation *)v5 setValidation:v6];
  }

  return v5;
}

@end