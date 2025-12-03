@interface PXPhotoKitAssetCollectionRemovePersonFromHomeActionPerformer
+ (BOOL)canPerformOn:(id)on;
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)systemImageNameForAssetCollectionReference:(id)reference withInputs:(id)inputs;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionRemovePersonFromHomeActionPerformer

+ (id)systemImageNameForAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  v5 = PXFirstPersonFromAssetCollectionActionPerformerInput(inputs);
  v6 = [self systemImageNameForPerson:v5];

  return v6;
}

+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs
{
  referenceCopy = reference;
  inputsCopy = inputs;
  v11 = inputsCopy;
  if (case - 1 >= 2)
  {
    if (!case)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionRemovePersonFromHomeActionPerformer.m" lineNumber:57 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    v13 = 0;
  }

  else
  {
    v12 = PXFirstPersonFromAssetCollectionActionPerformerInput(inputsCopy);
    v13 = [self localizedTitleForPerson:v12];
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

+ (BOOL)canPerformOn:(id)on
{
  firstObject = [on firstObject];
  v4 = [PXPeopleUtilities isPersonHiddenFromPeopleHome:firstObject];

  return !v4;
}

- (void)performUserInteractionTask
{
  objc_initWeak(&location, self);
  people = [(PXPhotoKitAssetCollectionActionPerformer *)self people];
  presentationEnvironment = [(PXActionPerformer *)self presentationEnvironment];
  undoManager = [(PXActionPerformer *)self undoManager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __90__PXPhotoKitAssetCollectionRemovePersonFromHomeActionPerformer_performUserInteractionTask__block_invoke;
  v6[3] = &unk_1E7749D00;
  objc_copyWeak(&v7, &location);
  [PXPeopleRemovalUtilities presentAlertFor:people totalNumberOfPeople:0 presentationEnvironment:presentationEnvironment undoManager:undoManager sourceItem:0 completion:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __90__PXPhotoKitAssetCollectionRemovePersonFromHomeActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained completeUserInteractionTaskWithSuccess:a2 error:v5];
}

@end