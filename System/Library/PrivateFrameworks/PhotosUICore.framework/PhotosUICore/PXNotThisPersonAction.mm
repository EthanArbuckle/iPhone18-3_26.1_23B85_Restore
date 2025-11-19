@interface PXNotThisPersonAction
- (PXFastEnumeration)faces;
- (PXNotThisPersonAction)initWithPerson:(id)a3 assets:(id)a4;
- (PXNotThisPersonAction)initWithPerson:(id)a3 faces:(id)a4;
- (id)_assetsForLogging;
- (id)_facesForLogging;
- (id)actionNameLocalizationKey;
- (void)performAction:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXNotThisPersonAction

- (id)_assetsForLogging
{
  v2 = [(PXNotThisPersonAction *)self assets];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v3 = v2;

    if (v3)
    {
      v4 = [v3 fetchedObjects];
      goto LABEL_7;
    }
  }

  else
  {
  }

  v4 = v2;
  v3 = 0;
LABEL_7:

  return v4;
}

- (id)_facesForLogging
{
  v2 = [(PXNotThisPersonAction *)self faces];
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v3 = v2;

    if (v3)
    {
      v4 = [v3 fetchedObjects];
      goto LABEL_7;
    }
  }

  else
  {
  }

  v4 = v2;
  v3 = 0;
LABEL_7:

  return v4;
}

- (void)performUndo:(id)a3
{
  v4 = a3;
  v5 = [(PXNotThisPersonAction *)self person];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __37__PXNotThisPersonAction_performUndo___block_invoke;
  v12[3] = &unk_1E774C620;
  v12[4] = self;
  v13 = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__PXNotThisPersonAction_performUndo___block_invoke_2;
  v8[3] = &unk_1E774ACE8;
  v9 = v13;
  v10 = self;
  v11 = v4;
  v6 = v4;
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

- (void)performAction:(id)a3
{
  v4 = a3;
  v5 = [(PXNotThisPersonAction *)self person];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __39__PXNotThisPersonAction_performAction___block_invoke;
  v12[3] = &unk_1E774C620;
  v12[4] = self;
  v13 = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__PXNotThisPersonAction_performAction___block_invoke_2;
  v8[3] = &unk_1E774ACE8;
  v9 = v13;
  v10 = self;
  v11 = v4;
  v6 = v4;
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
  v3 = [(PXNotThisPersonAction *)self faces];
  v4 = [v3 count];

  v5 = [(PXNotThisPersonAction *)self person];
  if (v4 == 1)
  {
    v6 = @"PXPersonRejectFaceActionName";
  }

  else
  {
    v6 = @"PXPersonRejectFacesActionName";
  }

  v7 = [PXPeopleUtilities locKeyForPersonOrPet:v5 withVisibility:0 key:v6];

  return v7;
}

- (PXFastEnumeration)faces
{
  faces = self->_faces;
  if (!faces)
  {
    v4 = [(PXNotThisPersonAction *)self person];
    v5 = [(PXNotThisPersonAction *)self assets];
    v6 = [PXPeopleUtilities facesForPerson:v4 inAssets:v5];
    v7 = self->_faces;
    self->_faces = v6;

    faces = self->_faces;
  }

  return faces;
}

- (PXNotThisPersonAction)initWithPerson:(id)a3 assets:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 photoLibrary];
  v14.receiver = self;
  v14.super_class = PXNotThisPersonAction;
  v10 = [(PXPhotosAction *)&v14 initWithPhotoLibrary:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_person, a3);
    v11 = [v8 copy];
    assets = v10->_assets;
    v10->_assets = v11;
  }

  return v10;
}

- (PXNotThisPersonAction)initWithPerson:(id)a3 faces:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 photoLibrary];
  v14.receiver = self;
  v14.super_class = PXNotThisPersonAction;
  v10 = [(PXPhotosAction *)&v14 initWithPhotoLibrary:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_person, a3);
    v11 = [v8 copy];
    faces = v10->_faces;
    v10->_faces = v11;
  }

  return v10;
}

@end