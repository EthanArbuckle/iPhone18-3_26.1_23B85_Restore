@interface PLKeyFaceManager
+ (id)sharedInstance;
- (void)markPersonAsNeedingKeyFace:(id)face photoLibrary:(id)library;
@end

@implementation PLKeyFaceManager

- (void)markPersonAsNeedingKeyFace:(id)face photoLibrary:(id)library
{
  v24[1] = *MEMORY[0x1E69E9840];
  faceCopy = face;
  libraryCopy = library;
  if (PLIsAssetsd())
  {
    photoAnalysisClient = [libraryCopy photoAnalysisClient];
    if (photoAnalysisClient)
    {
      if (faceCopy)
      {
        v10 = NSClassFromString(&cfstr_Phperson.isa);
        if (!v10)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"PLKeyFaceManager.m" lineNumber:39 description:@"markPersonAsNeedingKeyFace: cannot load PHPerson class."];
        }

        v11 = [(objc_class *)v10 localIdentifierWithUUID:faceCopy];
        v24[0] = v11;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __60__PLKeyFaceManager_markPersonAsNeedingKeyFace_photoLibrary___block_invoke;
        v18[3] = &unk_1E7573F60;
        v13 = faceCopy;
        v19 = v13;
        v14 = [photoAnalysisClient updateKeyFacesOfPersonsWithLocalIdentifiers:v12 forceUpdate:1 completion:v18];

        v15 = PLBackendGetLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v21 = v13;
          v22 = 2048;
          v23 = v14;
          _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "Started operation to update key face for person: %@, operationId: %zd", buf, 0x16u);
        }

        goto LABEL_16;
      }

      v11 = PLBackendGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v16 = "markPersonAsNeedingKeyFace: personUUID cannot be nil.";
        goto LABEL_15;
      }
    }

    else
    {
      v11 = PLBackendGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v16 = "markPersonAsNeedingKeyFace: no photoanalysisserviceclient.";
LABEL_15:
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, v16, buf, 2u);
      }
    }

LABEL_16:

    goto LABEL_17;
  }

  photoAnalysisClient = PLBackendGetLog();
  if (os_log_type_enabled(photoAnalysisClient, OS_LOG_TYPE_FAULT))
  {
    *buf = 138412290;
    v21 = faceCopy;
    _os_log_impl(&dword_19BF1F000, photoAnalysisClient, OS_LOG_TYPE_FAULT, "Non-assetsd process cannot update key face for person %@, key face may not be set", buf, 0xCu);
  }

LABEL_17:
}

void __60__PLKeyFaceManager_markPersonAsNeedingKeyFace_photoLibrary___block_invoke(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = PLBackendGetLog();
  v9 = v8;
  if (a2)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v16 = 138412546;
      v17 = v10;
      v18 = 2048;
      v19 = a3;
      v11 = "Successfully updated key face for person: %@, operationId: %zd";
      v12 = v9;
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 22;
LABEL_6:
      _os_log_impl(&dword_19BF1F000, v12, v13, v11, &v16, v14);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v15 = *(a1 + 32);
    v16 = 138412802;
    v17 = v15;
    v18 = 2048;
    v19 = a3;
    v20 = 2112;
    v21 = v7;
    v11 = "Failed to update key face for person: %@, operationId: %zd, error: %@";
    v12 = v9;
    v13 = OS_LOG_TYPE_ERROR;
    v14 = 32;
    goto LABEL_6;
  }
}

+ (id)sharedInstance
{
  pl_dispatch_once();
  v2 = sharedInstance_pl_once_object_15;

  return v2;
}

void __34__PLKeyFaceManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(PLKeyFaceManager);
  v1 = sharedInstance_pl_once_object_15;
  sharedInstance_pl_once_object_15 = v0;
}

@end