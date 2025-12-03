@interface PXRenamePersonAction
- (PXRenamePersonAction)initWithPerson:(id)person name:(id)name;
- (void)_performChangeForUndo:(BOOL)undo completion:(id)completion;
@end

@implementation PXRenamePersonAction

- (void)_performChangeForUndo:(BOOL)undo completion:(id)completion
{
  undoCopy = undo;
  v26[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  person = [(PXRenamePersonAction *)self person];
  if (undoCopy)
  {
    originalName = [(PXRenamePersonAction *)self originalName];
    originalUri = [(PXRenamePersonAction *)self originalUri];
    if (originalUri)
    {
      v10 = originalUri;
      originalUri2 = [(PXRenamePersonAction *)self originalUri];
      v12 = [originalUri2 length];

      if (v12)
      {
        v13 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
        v26[0] = v13;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];

        v15 = +[PXPeopleUtilities sharedContactStore];
        originalUri3 = [(PXRenamePersonAction *)self originalUri];
        v25 = 0;
        v17 = [v15 unifiedContactWithIdentifier:originalUri3 keysToFetch:v14 error:&v25];

        v18 = [[PXPeopleNameSelection alloc] initWithContact:v17];
        goto LABEL_7;
      }
    }
  }

  else
  {
    originalName = [(PXRenamePersonAction *)self name];
  }

  v18 = [[PXPeopleNameSelection alloc] initWithName:originalName];
LABEL_7:
  v19 = [PXPeopleBootstrapContext contextWithPerson:person type:1];
  [v19 setNameSelection:v18];
  [v19 setWantsMergeCandidateSuggestions:0];
  [v19 setWantsPostNaming:0];
  if ([person type] == -1)
  {
    [v19 setWantsToBeAddedToPeopleAlbum:1];
  }

  v20 = MEMORY[0x1E696AEC0];
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];
  lastPathComponent = [@"/Library/Caches/com.apple.xbs/Sources/Photos_UICore/workspaces/photosshared/PhotosUICore/PhotosUICore/ActionsCore/PXRenamePersonAction.m" lastPathComponent];
  v24 = [v20 stringWithFormat:@"%@:%@:%s:%d", processName, lastPathComponent, "-[PXRenamePersonAction _performChangeForUndo:completion:]", 95];
  [v19 setCallerInfo:v24];

  [PXPeopleBootstrap performBootstrapWithSourcePerson:person context:v19 synchronous:0 completion:completionCopy];
}

- (PXRenamePersonAction)initWithPerson:(id)person name:(id)name
{
  personCopy = person;
  nameCopy = name;
  photoLibrary = [personCopy photoLibrary];
  v20.receiver = self;
  v20.super_class = PXRenamePersonAction;
  v10 = [(PXPhotosAction *)&v20 initWithPhotoLibrary:photoLibrary];

  if (v10)
  {
    objc_storeStrong(&v10->_person, person);
    name = [personCopy name];
    v12 = [name copy];
    originalName = v10->_originalName;
    v10->_originalName = v12;

    personUri = [personCopy personUri];
    v15 = [personUri copy];
    originalUri = v10->_originalUri;
    v10->_originalUri = v15;

    v17 = [nameCopy copy];
    name = v10->_name;
    v10->_name = v17;
  }

  return v10;
}

@end