@interface PXNotThisPersonAction
- (PXFastEnumeration)faces;
- (PXNotThisPersonAction)initWithPerson:(id)person assets:(id)assets;
- (PXNotThisPersonAction)initWithPerson:(id)person faces:(id)faces;
- (id)_assetsForLogging;
- (id)_facesForLogging;
- (id)actionNameLocalizationKey;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXNotThisPersonAction

- (id)_assetsForLogging
{
  assets = [(PXNotThisPersonAction *)self assets];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v3 = assets;

    if (v3)
    {
      fetchedObjects = [v3 fetchedObjects];
      goto LABEL_7;
    }
  }

  else
  {
  }

  fetchedObjects = assets;
  v3 = 0;
LABEL_7:

  return fetchedObjects;
}

- (id)_facesForLogging
{
  faces = [(PXNotThisPersonAction *)self faces];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v3 = faces;

    if (v3)
    {
      fetchedObjects = [v3 fetchedObjects];
      goto LABEL_7;
    }
  }

  else
  {
  }

  fetchedObjects = faces;
  v3 = 0;
LABEL_7:

  return fetchedObjects;
}

- (void)performUndo:(id)undo
{
  undoCopy = undo;
  person = [(PXNotThisPersonAction *)self person];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __37__PXNotThisPersonAction_performUndo___block_invoke;
  v12[3] = &unk_1E774C620;
  v12[4] = self;
  v13 = person;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__PXNotThisPersonAction_performUndo___block_invoke_2;
  v8[3] = &unk_1E774ACE8;
  v9 = v13;
  selfCopy = self;
  v11 = undoCopy;
  v6 = undoCopy;
  v7 = v13;
  [(PXPhotosAction *)self performChanges:v12 completionHandler:v8];
}

void __37__PXNotThisPersonAction_performUndo___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) faces];
  v2 = [MEMORY[0x1E6978990] changeRequestForPerson:*(a1 + 40)];
  if ([*(a1 + 32) didSetPersonAsVerified])
  {
    [v2 setVerified:0];
  }

  [v2 removeRejectedFaces:v3];
  [v2 addFaces:v3];
}

void __37__PXNotThisPersonAction_performUndo___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = @"NO";
      if (a2)
      {
        v7 = @"YES";
      }

      v8 = v7;
      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = v8;
      v12 = [v9 _facesForLogging];
      v13 = [*(a1 + 40) _assetsForLogging];

      v14 = 138413314;
      v15 = v8;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "Not this person performUndo succeeded: %@ with error: %@. Person %@, faces: %@, assets: %@", &v14, 0x34u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)performAction:(id)action
{
  actionCopy = action;
  person = [(PXNotThisPersonAction *)self person];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __39__PXNotThisPersonAction_performAction___block_invoke;
  v12[3] = &unk_1E774C620;
  v12[4] = self;
  v13 = person;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__PXNotThisPersonAction_performAction___block_invoke_2;
  v8[3] = &unk_1E774ACE8;
  v9 = v13;
  selfCopy = self;
  v11 = actionCopy;
  v6 = actionCopy;
  v7 = v13;
  [(PXPhotosAction *)self performChanges:v12 completionHandler:v8];
}

void __39__PXNotThisPersonAction_performAction___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) faces];
  v2 = [MEMORY[0x1E6978990] changeRequestForPerson:*(a1 + 40)];
  if (([*(a1 + 40) isVerified] & 1) == 0)
  {
    [v2 setVerified:1];
    [*(a1 + 32) setDidSetPersonAsVerified:1];
  }

  [v2 removeFaces:v3];
  [v2 addRejectedFaces:v3 forCluster:0];
}

void __39__PXNotThisPersonAction_performAction___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = @"NO";
      if (a2)
      {
        v7 = @"YES";
      }

      v8 = v7;
      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = v8;
      v12 = [v9 _facesForLogging];
      v13 = [*(a1 + 40) _assetsForLogging];

      v14 = 138413314;
      v15 = v8;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v12;
      v22 = 2112;
      v23 = v13;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "Not this person performAction succeeded: %@ with error: %@. Person %@, faces: %@, assets: %@", &v14, 0x34u);
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (id)actionNameLocalizationKey
{
  faces = [(PXNotThisPersonAction *)self faces];
  v4 = [faces count];

  person = [(PXNotThisPersonAction *)self person];
  if (v4 == 1)
  {
    v6 = @"PXPersonRejectFaceActionName";
  }

  else
  {
    v6 = @"PXPersonRejectFacesActionName";
  }

  v7 = [PXPeopleUtilities locKeyForPersonOrPet:person withVisibility:0 key:v6];

  return v7;
}

- (PXFastEnumeration)faces
{
  faces = self->_faces;
  if (!faces)
  {
    person = [(PXNotThisPersonAction *)self person];
    assets = [(PXNotThisPersonAction *)self assets];
    v6 = [PXPeopleUtilities facesForPerson:person inAssets:assets];
    v7 = self->_faces;
    self->_faces = v6;

    faces = self->_faces;
  }

  return faces;
}

- (PXNotThisPersonAction)initWithPerson:(id)person assets:(id)assets
{
  personCopy = person;
  assetsCopy = assets;
  photoLibrary = [personCopy photoLibrary];
  v14.receiver = self;
  v14.super_class = PXNotThisPersonAction;
  v10 = [(PXPhotosAction *)&v14 initWithPhotoLibrary:photoLibrary];

  if (v10)
  {
    objc_storeStrong(&v10->_person, person);
    v11 = [assetsCopy copy];
    assets = v10->_assets;
    v10->_assets = v11;
  }

  return v10;
}

- (PXNotThisPersonAction)initWithPerson:(id)person faces:(id)faces
{
  personCopy = person;
  facesCopy = faces;
  photoLibrary = [personCopy photoLibrary];
  v14.receiver = self;
  v14.super_class = PXNotThisPersonAction;
  v10 = [(PXPhotosAction *)&v14 initWithPhotoLibrary:photoLibrary];

  if (v10)
  {
    objc_storeStrong(&v10->_person, person);
    v11 = [facesCopy copy];
    faces = v10->_faces;
    v10->_faces = v11;
  }

  return v10;
}

@end