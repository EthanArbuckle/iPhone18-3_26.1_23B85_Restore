@interface PLManagedAssetID
- (PLManagedAssetID)initWithManagedAsset:(id)asset;
- (PLManagedAssetID)initWithUUID:(id)d filename:(id)filename directory:(id)directory libraryID:(id)iD bundleScope:(unsigned __int16)scope;
@end

@implementation PLManagedAssetID

- (PLManagedAssetID)initWithUUID:(id)d filename:(id)filename directory:(id)directory libraryID:(id)iD bundleScope:(unsigned __int16)scope
{
  dCopy = d;
  filenameCopy = filename;
  directoryCopy = directory;
  iDCopy = iD;
  v24.receiver = self;
  v24.super_class = PLManagedAssetID;
  v17 = [(PLManagedAssetID *)&v24 init];
  if (v17)
  {
    if (dCopy)
    {
      if (filenameCopy)
      {
        goto LABEL_4;
      }
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v17 file:@"PLManagedAssetID.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"uuid"}];

      if (filenameCopy)
      {
LABEL_4:
        if (directoryCopy)
        {
          goto LABEL_5;
        }

        goto LABEL_10;
      }
    }

    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:v17 file:@"PLManagedAssetID.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"filename"}];

    if (directoryCopy)
    {
LABEL_5:
      if (iDCopy)
      {
LABEL_6:
        objc_storeStrong(&v17->_uuid, d);
        objc_storeStrong(&v17->_filename, filename);
        objc_storeStrong(&v17->_directory, directory);
        objc_storeStrong(&v17->_libraryID, iD);
        v17->_bundleScope = scope;
        goto LABEL_7;
      }

LABEL_11:
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:v17 file:@"PLManagedAssetID.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"libraryID"}];

      goto LABEL_6;
    }

LABEL_10:
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:v17 file:@"PLManagedAssetID.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"directory"}];

    if (iDCopy)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_7:

  return v17;
}

- (PLManagedAssetID)initWithManagedAsset:(id)asset
{
  assetCopy = asset;
  v20.receiver = self;
  v20.super_class = PLManagedAssetID;
  v6 = [(PLManagedAssetID *)&v20 init];
  if (v6)
  {
    if (!assetCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v6 file:@"PLManagedAssetID.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
    }

    uuid = [assetCopy uuid];
    uuid = v6->_uuid;
    v6->_uuid = uuid;

    filename = [assetCopy filename];
    filename = v6->_filename;
    v6->_filename = filename;

    directory = [assetCopy directory];
    directory = v6->_directory;
    v6->_directory = directory;

    v6->_bundleScope = [assetCopy bundleScope];
    photoLibrary = [assetCopy photoLibrary];

    if (photoLibrary)
    {
      photoLibrary2 = [assetCopy photoLibrary];
      libraryID = [photoLibrary2 libraryID];
    }

    else
    {
      managedObjectContext = [assetCopy managedObjectContext];
      photoLibrary2 = [managedObjectContext pathManager];

      if (!photoLibrary2)
      {
        photoLibrary2 = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
      }

      libraryID = PLLibraryIDFromPathManager();
    }

    libraryID = v6->_libraryID;
    v6->_libraryID = libraryID;
  }

  return v6;
}

@end