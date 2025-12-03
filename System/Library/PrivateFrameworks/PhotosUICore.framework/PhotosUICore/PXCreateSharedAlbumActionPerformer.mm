@interface PXCreateSharedAlbumActionPerformer
- (PXCreateSharedAlbumActionPerformer)initWithPhotoLibrary:(id)library presentationEnvironment:(id)environment;
- (void)performLemonadeUserInteractionTask;
- (void)performUserInteractionTask;
- (void)photoStreamComposeService:(id)service didPostComment:(id)comment;
- (void)photoStreamComposeServiceDidCancel:(id)cancel;
@end

@implementation PXCreateSharedAlbumActionPerformer

- (void)performLemonadeUserInteractionTask
{
  selfCopy = self;
  PXCreateSharedAlbumActionPerformer.performLemonadeUserInteractionTask()();
}

- (void)photoStreamComposeServiceDidCancel:(id)cancel
{
  cancelCopy = cancel;
  presentationEnvironment = [(PXActionPerformer *)self presentationEnvironment];
  if (!presentationEnvironment)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCreateSharedAlbumActionPerformer.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"presentationEnvironment"}];
  }

  [presentationEnvironment dismissViewController:cancelCopy animated:1 completionHandler:0];
}

- (void)photoStreamComposeService:(id)service didPostComment:(id)comment
{
  serviceCopy = service;
  presentationEnvironment = [(PXActionPerformer *)self presentationEnvironment];
  if (!presentationEnvironment)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCreateSharedAlbumActionPerformer.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"presentationEnvironment"}];
  }

  [presentationEnvironment dismissViewController:serviceCopy animated:1 completionHandler:0];
}

- (void)performUserInteractionTask
{
  photoLibrary = [(PXCreateSharedAlbumActionPerformer *)self photoLibrary];
  presentationEnvironment = [(PXActionPerformer *)self presentationEnvironment];
  if (!presentationEnvironment)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCreateSharedAlbumActionPerformer.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"presentationEnvironment"}];
  }

  v6 = MEMORY[0x1E69BE6A8];
  v4PhotoLibrary = [photoLibrary photoLibrary];
  v19 = 0;
  v8 = [v6 canCreateStreamInPhotoLibrary:v4PhotoLibrary error:&v19];
  v9 = v19;

  if (v8)
  {
    [(PXCreateSharedAlbumActionPerformer *)self performLemonadeUserInteractionTask];
  }

  else
  {
    localizedDescription = [v9 localizedDescription];
    localizedFailureReason = [v9 localizedFailureReason];
    v12 = [MEMORY[0x1E69DC650] alertControllerWithTitle:localizedDescription message:localizedFailureReason preferredStyle:1];
    v13 = MEMORY[0x1E69DC648];
    v14 = PXLocalizedStringFromTable(@"PXOK", @"PhotosUICore");
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __64__PXCreateSharedAlbumActionPerformer_performUserInteractionTask__block_invoke;
    v17[3] = &unk_1E774A2C8;
    v17[4] = self;
    v18 = v9;
    v15 = [v13 actionWithTitle:v14 style:1 handler:v17];

    [v12 addAction:v15];
    [presentationEnvironment presentViewController:v12 animated:1 completionHandler:0];
  }
}

- (PXCreateSharedAlbumActionPerformer)initWithPhotoLibrary:(id)library presentationEnvironment:(id)environment
{
  libraryCopy = library;
  environmentCopy = environment;
  v9 = environmentCopy;
  if (libraryCopy)
  {
    if (environmentCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXCreateSharedAlbumActionPerformer.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXCreateSharedAlbumActionPerformer.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"presentationEnvironment"}];

LABEL_3:
  v15.receiver = self;
  v15.super_class = PXCreateSharedAlbumActionPerformer;
  v10 = [(PXActionPerformer *)&v15 initWithActionType:@"PXActionCreateEmptySharedAlbum"];
  v11 = v10;
  if (v10)
  {
    [(PXCreateSharedAlbumActionPerformer *)v10 setPhotoLibrary:libraryCopy];
    [(PXActionPerformer *)v11 setPresentationEnvironment:v9];
  }

  return v11;
}

@end