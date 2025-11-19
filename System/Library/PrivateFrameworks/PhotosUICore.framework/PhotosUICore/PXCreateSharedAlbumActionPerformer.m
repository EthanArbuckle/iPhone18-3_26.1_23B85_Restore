@interface PXCreateSharedAlbumActionPerformer
- (PXCreateSharedAlbumActionPerformer)initWithPhotoLibrary:(id)a3 presentationEnvironment:(id)a4;
- (void)performLemonadeUserInteractionTask;
- (void)performUserInteractionTask;
- (void)photoStreamComposeService:(id)a3 didPostComment:(id)a4;
- (void)photoStreamComposeServiceDidCancel:(id)a3;
@end

@implementation PXCreateSharedAlbumActionPerformer

- (void)performLemonadeUserInteractionTask
{
  v2 = self;
  PXCreateSharedAlbumActionPerformer.performLemonadeUserInteractionTask()();
}

- (void)photoStreamComposeServiceDidCancel:(id)a3
{
  v7 = a3;
  v5 = [(PXActionPerformer *)self presentationEnvironment];
  if (!v5)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXCreateSharedAlbumActionPerformer.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"presentationEnvironment"}];
  }

  [v5 dismissViewController:v7 animated:1 completionHandler:0];
}

- (void)photoStreamComposeService:(id)a3 didPostComment:(id)a4
{
  v8 = a3;
  v6 = [(PXActionPerformer *)self presentationEnvironment];
  if (!v6)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PXCreateSharedAlbumActionPerformer.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"presentationEnvironment"}];
  }

  [v6 dismissViewController:v8 animated:1 completionHandler:0];
}

- (void)performUserInteractionTask
{
  v4 = [(PXCreateSharedAlbumActionPerformer *)self photoLibrary];
  v5 = [(PXActionPerformer *)self presentationEnvironment];
  if (!v5)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXCreateSharedAlbumActionPerformer.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"presentationEnvironment"}];
  }

  v6 = MEMORY[0x1E69BE6A8];
  v7 = [v4 photoLibrary];
  v19 = 0;
  v8 = [v6 canCreateStreamInPhotoLibrary:v7 error:&v19];
  v9 = v19;

  if (v8)
  {
    [(PXCreateSharedAlbumActionPerformer *)self performLemonadeUserInteractionTask];
  }

  else
  {
    v10 = [v9 localizedDescription];
    v11 = [v9 localizedFailureReason];
    v12 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v10 message:v11 preferredStyle:1];
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
    [v5 presentViewController:v12 animated:1 completionHandler:0];
  }
}

- (PXCreateSharedAlbumActionPerformer)initWithPhotoLibrary:(id)a3 presentationEnvironment:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXCreateSharedAlbumActionPerformer.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  [v14 handleFailureInMethod:a2 object:self file:@"PXCreateSharedAlbumActionPerformer.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"presentationEnvironment"}];

LABEL_3:
  v15.receiver = self;
  v15.super_class = PXCreateSharedAlbumActionPerformer;
  v10 = [(PXActionPerformer *)&v15 initWithActionType:@"PXActionCreateEmptySharedAlbum"];
  v11 = v10;
  if (v10)
  {
    [(PXCreateSharedAlbumActionPerformer *)v10 setPhotoLibrary:v7];
    [(PXActionPerformer *)v11 setPresentationEnvironment:v9];
  }

  return v11;
}

@end