@interface PXLemonadeMemoriesCreationButtonValidation
- (PXLemonadeMemoriesCreationButtonValidation)init;
- (PXLemonadeMemoriesCreationButtonValidation)initWithPhotoLibrary:(id)library;
- (id)observeMemoryCreationButtonAvailabilityWithUpdateHandler:(id)handler;
- (void)fetchMemoryCreationButtonAvailabilityWithCompletionHandler:(id)handler;
- (void)invalidateObservationForObservationRequestIdentifier:(id)identifier;
@end

@implementation PXLemonadeMemoriesCreationButtonValidation

- (void)fetchMemoryCreationButtonAvailabilityWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  validation = [(PXLemonadeMemoriesCreationButtonValidation *)self validation];
  [validation fetchMemoryCreationButtonAvailabilityWithCompletionHandler:handlerCopy];
}

- (void)invalidateObservationForObservationRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  validation = [(PXLemonadeMemoriesCreationButtonValidation *)self validation];
  [validation invalidateObservationFor:identifierCopy];
}

- (id)observeMemoryCreationButtonAvailabilityWithUpdateHandler:(id)handler
{
  handlerCopy = handler;
  validation = [(PXLemonadeMemoriesCreationButtonValidation *)self validation];
  v6 = [validation observeMemoryCreationButtonAvailabilityWithUpdateHandler:handlerCopy];

  return v6;
}

- (PXLemonadeMemoriesCreationButtonValidation)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXLemonadeMemoriesCreationButtonValidation.m" lineNumber:32 description:{@"%s is not available as initializer", "-[PXLemonadeMemoriesCreationButtonValidation init]"}];

  abort();
}

- (PXLemonadeMemoriesCreationButtonValidation)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v8.receiver = self;
  v8.super_class = PXLemonadeMemoriesCreationButtonValidation;
  v5 = [(PXLemonadeMemoriesCreationButtonValidation *)&v8 init];
  if (v5)
  {
    v6 = [[_TtC12PhotosUICore40LemonadeMemoriesCreationButtonValidation alloc] initWithPhotoLibrary:libraryCopy];
    [(PXLemonadeMemoriesCreationButtonValidation *)v5 setValidation:v6];
  }

  return v5;
}

@end