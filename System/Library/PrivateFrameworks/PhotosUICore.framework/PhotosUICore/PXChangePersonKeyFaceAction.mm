@interface PXChangePersonKeyFaceAction
- (PHFace)keyFace;
- (PXChangePersonKeyFaceAction)initWithPerson:(id)person asset:(id)asset;
- (PXChangePersonKeyFaceAction)initWithPerson:(id)person keyFace:(id)face;
- (void)_fetchKeyFaceForUndoIfNeeded;
- (void)_invalidateCache;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXChangePersonKeyFaceAction

- (void)performUndo:(id)undo
{
  undoCopy = undo;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__PXChangePersonKeyFaceAction_performUndo___block_invoke;
  v8[3] = &unk_1E774C648;
  v8[4] = self;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__PXChangePersonKeyFaceAction_performUndo___block_invoke_2;
  v6[3] = &unk_1E774BD88;
  v6[4] = self;
  v7 = undoCopy;
  v5 = undoCopy;
  [(PXPhotosAction *)self performChanges:v8 completionHandler:v6];
}

void __43__PXChangePersonKeyFaceAction_performUndo___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E6978990];
  v3 = [*(a1 + 32) person];
  v4 = [v2 changeRequestForPerson:v3];

  [v4 setKeyFace:*(*(a1 + 32) + 104)];
}

uint64_t __43__PXChangePersonKeyFaceAction_performUndo___block_invoke_2(uint64_t a1, int a2)
{
  result = (*(*(a1 + 40) + 16))();
  if (a2)
  {
    v5 = *(a1 + 32);

    return [v5 _invalidateCache];
  }

  return result;
}

- (void)performAction:(id)action
{
  actionCopy = action;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__PXChangePersonKeyFaceAction_performAction___block_invoke;
  v8[3] = &unk_1E774C648;
  v8[4] = self;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__PXChangePersonKeyFaceAction_performAction___block_invoke_2;
  v6[3] = &unk_1E774BD88;
  v6[4] = self;
  v7 = actionCopy;
  v5 = actionCopy;
  [(PXPhotosAction *)self performChanges:v8 completionHandler:v6];
}

void __45__PXChangePersonKeyFaceAction_performAction___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _fetchKeyFaceForUndoIfNeeded];
  v2 = MEMORY[0x1E6978990];
  v3 = [*(a1 + 32) person];
  v5 = [v2 changeRequestForPerson:v3];

  v4 = [*(a1 + 32) keyFace];
  [v5 setKeyFace:v4];
}

uint64_t __45__PXChangePersonKeyFaceAction_performAction___block_invoke_2(uint64_t a1, int a2)
{
  result = (*(*(a1 + 40) + 16))();
  if (a2)
  {
    v5 = *(a1 + 32);

    return [v5 _invalidateCache];
  }

  return result;
}

- (void)_fetchKeyFaceForUndoIfNeeded
{
  if (!self->_keyFaceForUndo)
  {
    person = [(PXChangePersonKeyFaceAction *)self person];
    v3 = [PXPeopleUtilities keyFaceForPerson:person];
    keyFaceForUndo = self->_keyFaceForUndo;
    self->_keyFaceForUndo = v3;
  }
}

- (void)_invalidateCache
{
  v4 = +[PXPeopleFaceCropManager sharedManager];
  person = [(PXChangePersonKeyFaceAction *)self person];
  [v4 invalidateCacheForPerson:person];
}

- (PHFace)keyFace
{
  v10[1] = *MEMORY[0x1E69E9840];
  keyFace = self->_keyFace;
  if (!keyFace)
  {
    if (self->_asset)
    {
      person = [(PXChangePersonKeyFaceAction *)self person];
      v10[0] = self->_asset;
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
      v6 = [PXPeopleUtilities facesForPerson:person inAssets:v5];
      firstObject = [v6 firstObject];
      v8 = self->_keyFace;
      self->_keyFace = firstObject;

      keyFace = self->_keyFace;
    }

    else
    {
      keyFace = 0;
    }
  }

  return keyFace;
}

- (PXChangePersonKeyFaceAction)initWithPerson:(id)person asset:(id)asset
{
  personCopy = person;
  assetCopy = asset;
  photoLibrary = [personCopy photoLibrary];
  v12.receiver = self;
  v12.super_class = PXChangePersonKeyFaceAction;
  v10 = [(PXPhotosAction *)&v12 initWithPhotoLibrary:photoLibrary];

  if (v10)
  {
    objc_storeStrong(&v10->_person, person);
    objc_storeStrong(&v10->_asset, asset);
  }

  return v10;
}

- (PXChangePersonKeyFaceAction)initWithPerson:(id)person keyFace:(id)face
{
  personCopy = person;
  faceCopy = face;
  photoLibrary = [personCopy photoLibrary];
  v12.receiver = self;
  v12.super_class = PXChangePersonKeyFaceAction;
  v10 = [(PXPhotosAction *)&v12 initWithPhotoLibrary:photoLibrary];

  if (v10)
  {
    objc_storeStrong(&v10->_person, person);
    objc_storeStrong(&v10->_keyFace, face);
  }

  return v10;
}

@end