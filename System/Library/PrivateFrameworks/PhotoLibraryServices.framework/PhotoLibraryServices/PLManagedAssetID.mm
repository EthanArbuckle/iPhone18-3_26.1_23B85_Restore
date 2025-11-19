@interface PLManagedAssetID
- (PLManagedAssetID)initWithManagedAsset:(id)a3;
- (PLManagedAssetID)initWithUUID:(id)a3 filename:(id)a4 directory:(id)a5 libraryID:(id)a6 bundleScope:(unsigned __int16)a7;
@end

@implementation PLManagedAssetID

- (PLManagedAssetID)initWithUUID:(id)a3 filename:(id)a4 directory:(id)a5 libraryID:(id)a6 bundleScope:(unsigned __int16)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v24.receiver = self;
  v24.super_class = PLManagedAssetID;
  v17 = [(PLManagedAssetID *)&v24 init];
  if (v17)
  {
    if (v13)
    {
      if (v14)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      [v19 handleFailureInMethod:a2 object:v17 file:@"PLManagedAssetID.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"uuid"}];

      if (v14)
      {
LABEL_4:
        if (v15)
        {
          goto LABEL_5;
        }

        goto LABEL_10;
      }
    }

    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:v17 file:@"PLManagedAssetID.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"filename"}];

    if (v15)
    {
LABEL_5:
      if (v16)
      {
LABEL_6:
        objc_storeStrong(&v17->_uuid, a3);
        objc_storeStrong(&v17->_filename, a4);
        objc_storeStrong(&v17->_directory, a5);
        objc_storeStrong(&v17->_libraryID, a6);
        v17->_bundleScope = a7;
        goto LABEL_7;
      }

LABEL_11:
      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      [v22 handleFailureInMethod:a2 object:v17 file:@"PLManagedAssetID.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"libraryID"}];

      goto LABEL_6;
    }

LABEL_10:
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:v17 file:@"PLManagedAssetID.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"directory"}];

    if (v16)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_7:

  return v17;
}

- (PLManagedAssetID)initWithManagedAsset:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = PLManagedAssetID;
  v6 = [(PLManagedAssetID *)&v20 init];
  if (v6)
  {
    if (!v5)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      [v19 handleFailureInMethod:a2 object:v6 file:@"PLManagedAssetID.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
    }

    v7 = [v5 uuid];
    uuid = v6->_uuid;
    v6->_uuid = v7;

    v9 = [v5 filename];
    filename = v6->_filename;
    v6->_filename = v9;

    v11 = [v5 directory];
    directory = v6->_directory;
    v6->_directory = v11;

    v6->_bundleScope = [v5 bundleScope];
    v13 = [v5 photoLibrary];

    if (v13)
    {
      v14 = [v5 photoLibrary];
      v15 = [v14 libraryID];
    }

    else
    {
      v16 = [v5 managedObjectContext];
      v14 = [v16 pathManager];

      if (!v14)
      {
        v14 = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
      }

      v15 = PLLibraryIDFromPathManager();
    }

    libraryID = v6->_libraryID;
    v6->_libraryID = v15;
  }

  return v6;
}

@end