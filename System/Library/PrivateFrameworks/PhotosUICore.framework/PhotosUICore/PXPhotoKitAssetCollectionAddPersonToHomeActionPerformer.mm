@interface PXPhotoKitAssetCollectionAddPersonToHomeActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionAddPersonToHomeActionPerformer

+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs
{
  referenceCopy = reference;
  inputsCopy = inputs;
  if (case - 1 >= 2)
  {
    if (!case)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionAddPersonToHomeActionPerformer.m" lineNumber:43 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v12 = 0;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      people = [inputsCopy people];
    }

    else
    {
      people = 0;
    }

    firstObject = [people firstObject];
    if (!firstObject)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionAddPersonToHomeActionPerformer.m" lineNumber:39 description:@"Person is nil"];
    }

    v12 = [PXPeopleUtilities stringForAddingPerson:firstObject];
  }

  return v12;
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
    firstObject = [people firstObject];
    v7 = [PXPeopleUtilities isPersonHiddenFromPeopleHome:firstObject];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)performUserInteractionTask
{
  v15[1] = *MEMORY[0x1E69E9840];
  people = [(PXPhotoKitAssetCollectionActionPerformer *)self people];
  firstObject = [people firstObject];

  if (firstObject)
  {
    localIdentifier = [firstObject localIdentifier];
    photoLibrary = [firstObject photoLibrary];
    v7 = [PXPeopleUtilities personWithLocalIdentifier:localIdentifier photoLibrary:photoLibrary];

    objc_initWeak(&location, self);
    v8 = [PXChangePeopleTypeAction alloc];
    v15[0] = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v10 = [(PXChangePeopleTypeAction *)v8 initWithPeople:v9 type:0];

    undoManager = [(PXActionPerformer *)self undoManager];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __85__PXPhotoKitAssetCollectionAddPersonToHomeActionPerformer_performUserInteractionTask__block_invoke;
    v12[3] = &unk_1E7749D00;
    objc_copyWeak(&v13, &location);
    [(PXAction *)v10 executeWithUndoManager:undoManager completionHandler:v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __85__PXPhotoKitAssetCollectionAddPersonToHomeActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained completeUserInteractionTaskWithSuccess:a2 error:v5];
}

@end