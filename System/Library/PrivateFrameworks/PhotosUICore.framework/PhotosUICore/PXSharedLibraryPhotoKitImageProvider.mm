@interface PXSharedLibraryPhotoKitImageProvider
- (PXSharedLibraryPhotoKitImageProvider)init;
- (PXSharedLibraryPhotoKitImageProvider)initWithParticipant:(id)participant;
- (PXSharedLibraryPhotoKitImageProvider)initWithPerson:(id)person;
- (int64_t)requestImageWithTargetSize:(CGSize)size displayScale:(double)scale isRTL:(BOOL)l completionHandler:(id)handler;
- (void)_handleResultForRequestWithIdentifier:(int64_t)identifier image:(id)image isDegraded:(id)degraded error:(id)error completionHandler:(id)handler;
- (void)cancelRequestWithIdentifier:(int64_t)identifier;
@end

@implementation PXSharedLibraryPhotoKitImageProvider

- (void)_handleResultForRequestWithIdentifier:(int64_t)identifier image:(id)image isDegraded:(id)degraded error:(id)error completionHandler:(id)handler
{
  imageCopy = image;
  degradedCopy = degraded;
  errorCopy = error;
  handlerCopy = handler;
  if (self->_identifier == identifier)
  {
    v15 = imageCopy;
    if (imageCopy && !errorCopy)
    {
      v16 = 0;
      goto LABEL_8;
    }

    v17 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharedLibraryImageProviderErrorDomain" code:-1001 underlyingError:errorCopy debugDescription:@"Request failed"];
  }

  else
  {

    v17 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharedLibraryImageProviderErrorDomain" code:-1000 debugDescription:@"Request was cancelled"];
  }

  v16 = v17;
  v15 = 0;
LABEL_8:
  v19 = v15;
  handlerCopy[2](handlerCopy);
}

- (void)cancelRequestWithIdentifier:(int64_t)identifier
{
  if (!identifier)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryPhotoKitImageProvider.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"identifier != PXSharedLibraryImageProviderRequestIdentifierInvalid"}];
  }

  if (self->_identifier == identifier)
  {
    self->_identifier = identifier + 1;
  }
}

- (int64_t)requestImageWithTargetSize:(CGSize)size displayScale:(double)scale isRTL:(BOOL)l completionHandler:(id)handler
{
  v8 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  PXSizeIsEmpty();
}

void __104__PXSharedLibraryPhotoKitImageProvider_requestImageWithTargetSize_displayScale_isRTL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleResultForRequestWithIdentifier:*(a1 + 48) image:v9 isDegraded:v8 error:v7 completionHandler:*(a1 + 32)];
}

void __104__PXSharedLibraryPhotoKitImageProvider_requestImageWithTargetSize_displayScale_isRTL_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v8 = objc_alloc(MEMORY[0x1E696ABC0]);
    v10 = *MEMORY[0x1E696A588];
    v11[0] = @"Image was nil from image request for participant.";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    v7 = [v8 initWithDomain:@"PXSharedLibraryErrorDomain" code:-1000 userInfo:v9];
  }

  (*(*(a1 + 32) + 16))();
}

void __104__PXSharedLibraryPhotoKitImageProvider_requestImageWithTargetSize_displayScale_isRTL_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] px_errorWithDomain:@"PXSharedLibraryErrorDomain" code:-1000 debugDescription:@"Monogram was nil from image request for participant."];
  }

  (*(*(a1 + 32) + 16))();
}

- (PXSharedLibraryPhotoKitImageProvider)initWithParticipant:(id)participant
{
  participantCopy = participant;
  if (!participantCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryPhotoKitImageProvider.m" lineNumber:45 description:{@"Invalid parameter not satisfying: %@", @"participant"}];
  }

  v11.receiver = self;
  v11.super_class = PXSharedLibraryPhotoKitImageProvider;
  v7 = [(PXSharedLibraryPhotoKitImageProvider *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v7->_identifier = 0;
    objc_storeStrong(&v7->_participant, participant);
  }

  return v8;
}

- (PXSharedLibraryPhotoKitImageProvider)initWithPerson:(id)person
{
  personCopy = person;
  if (!personCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryPhotoKitImageProvider.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"person"}];
  }

  v11.receiver = self;
  v11.super_class = PXSharedLibraryPhotoKitImageProvider;
  v7 = [(PXSharedLibraryPhotoKitImageProvider *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v7->_identifier = 0;
    objc_storeStrong(&v7->_person, person);
  }

  return v8;
}

- (PXSharedLibraryPhotoKitImageProvider)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSharedLibraryPhotoKitImageProvider.m" lineNumber:30 description:{@"%s is not available as initializer", "-[PXSharedLibraryPhotoKitImageProvider init]"}];

  abort();
}

@end