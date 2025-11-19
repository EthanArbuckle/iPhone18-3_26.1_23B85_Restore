@interface PXRenamePersonAction
- (PXRenamePersonAction)initWithPerson:(id)a3 name:(id)a4;
- (void)_performChangeForUndo:(BOOL)a3 completion:(id)a4;
@end

@implementation PXRenamePersonAction

- (void)_performChangeForUndo:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(PXRenamePersonAction *)self person];
  if (v4)
  {
    v8 = [(PXRenamePersonAction *)self originalName];
    v9 = [(PXRenamePersonAction *)self originalUri];
    if (v9)
    {
      v10 = v9;
      v11 = [(PXRenamePersonAction *)self originalUri];
      v12 = [v11 length];

      if (v12)
      {
        v13 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
        v26[0] = v13;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];

        v15 = +[PXPeopleUtilities sharedContactStore];
        v16 = [(PXRenamePersonAction *)self originalUri];
        v25 = 0;
        v17 = [v15 unifiedContactWithIdentifier:v16 keysToFetch:v14 error:&v25];

        v18 = [[PXPeopleNameSelection alloc] initWithContact:v17];
        goto LABEL_7;
      }
    }
  }

  else
  {
    v8 = [(PXRenamePersonAction *)self name];
  }

  v18 = [[PXPeopleNameSelection alloc] initWithName:v8];
LABEL_7:
  v19 = [PXPeopleBootstrapContext contextWithPerson:v7 type:1];
  [v19 setNameSelection:v18];
  [v19 setWantsMergeCandidateSuggestions:0];
  [v19 setWantsPostNaming:0];
  if ([v7 type] == -1)
  {
    [v19 setWantsToBeAddedToPeopleAlbum:1];
  }

  v20 = MEMORY[0x1E696AEC0];
  v21 = [MEMORY[0x1E696AE30] processInfo];
  v22 = [v21 processName];
  v23 = [@"/Library/Caches/com.apple.xbs/Sources/Photos_UICore/workspaces/photosshared/PhotosUICore/PhotosUICore/ActionsCore/PXRenamePersonAction.m" lastPathComponent];
  v24 = [v20 stringWithFormat:@"%@:%@:%s:%d", v22, v23, "-[PXRenamePersonAction _performChangeForUndo:completion:]", 95];
  [v19 setCallerInfo:v24];

  [PXPeopleBootstrap performBootstrapWithSourcePerson:v7 context:v19 synchronous:0 completion:v6];
}

- (PXRenamePersonAction)initWithPerson:(id)a3 name:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 photoLibrary];
  v20.receiver = self;
  v20.super_class = PXRenamePersonAction;
  v10 = [(PXPhotosAction *)&v20 initWithPhotoLibrary:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_person, a3);
    v11 = [v7 name];
    v12 = [v11 copy];
    originalName = v10->_originalName;
    v10->_originalName = v12;

    v14 = [v7 personUri];
    v15 = [v14 copy];
    originalUri = v10->_originalUri;
    v10->_originalUri = v15;

    v17 = [v8 copy];
    name = v10->_name;
    v10->_name = v17;
  }

  return v10;
}

@end