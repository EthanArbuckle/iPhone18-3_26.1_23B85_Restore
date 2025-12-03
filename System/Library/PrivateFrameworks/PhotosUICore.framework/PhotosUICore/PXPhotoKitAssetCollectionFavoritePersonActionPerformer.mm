@interface PXPhotoKitAssetCollectionFavoritePersonActionPerformer
+ (BOOL)canPerformOn:(id)on;
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)systemImageNameForAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)systemImageNameForPerson:(id)person;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionFavoritePersonActionPerformer

+ (id)systemImageNameForAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  people = [inputs people];
  firstObject = [people firstObject];

  v7 = [self systemImageNameForPerson:firstObject];

  return v7;
}

+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs
{
  referenceCopy = reference;
  inputsCopy = inputs;
  people = [inputsCopy people];
  firstObject = [people firstObject];

  if (case - 1 >= 2)
  {
    if (!case)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionFavoritePersonActionPerformer.m" lineNumber:65 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v13 = 0;
  }

  else
  {
    v13 = [self localizedTitleForPerson:firstObject];
  }

  return v13;
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  inputsCopy = inputs;
  if (objc_opt_respondsToSelector())
  {
    people = [inputsCopy people];
  }

  else
  {
    people = 0;
  }

  if ([people count] == 1)
  {
    v7 = [self canPerformOn:people];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)systemImageNameForPerson:(id)person
{
  if ([person type] == 1)
  {
    v3 = @"heart.slash";
  }

  else
  {
    v3 = @"heart";
  }

  return v3;
}

+ (BOOL)canPerformOn:(id)on
{
  firstObject = [on firstObject];
  v4 = [PXPeopleUtilities isPersonHiddenFromPeopleHome:firstObject];

  return !v4;
}

- (void)performUserInteractionTask
{
  v16[1] = *MEMORY[0x1E69E9840];
  people = [(PXPhotoKitAssetCollectionActionPerformer *)self people];
  firstObject = [people firstObject];

  if (firstObject)
  {
    localIdentifier = [firstObject localIdentifier];
    photoLibrary = [firstObject photoLibrary];
    v7 = [PXPeopleUtilities personWithLocalIdentifier:localIdentifier photoLibrary:photoLibrary];

    objc_initWeak(&location, self);
    v8 = [v7 type] != 1;
    v9 = [PXChangePeopleTypeAction alloc];
    v16[0] = v7;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v11 = [(PXChangePeopleTypeAction *)v9 initWithPeople:v10 type:v8];

    undoManager = [(PXActionPerformer *)self undoManager];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __84__PXPhotoKitAssetCollectionFavoritePersonActionPerformer_performUserInteractionTask__block_invoke;
    v13[3] = &unk_1E7749D00;
    objc_copyWeak(&v14, &location);
    [(PXAction *)v11 executeWithUndoManager:undoManager completionHandler:v13];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __84__PXPhotoKitAssetCollectionFavoritePersonActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained completeUserInteractionTaskWithSuccess:a2 error:v5];
}

@end