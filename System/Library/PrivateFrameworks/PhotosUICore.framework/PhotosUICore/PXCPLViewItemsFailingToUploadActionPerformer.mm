@interface PXCPLViewItemsFailingToUploadActionPerformer
- (void)performUserInteractionTask;
@end

@implementation PXCPLViewItemsFailingToUploadActionPerformer

- (void)performUserInteractionTask
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = PLUserStatusUIGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v7) = 138543362;
    *(&v7 + 4) = @"FailedToUploadItemsAlbum";
    _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "Will navigate to: %{public}@", &v7, 0xCu);
  }

  v5 = [MEMORY[0x1E69DC668] sharedApplication];
  *&v7 = MEMORY[0x1E69E9820];
  *(&v7 + 1) = 3221225472;
  v8 = ___NavigateToCollection_block_invoke;
  v9 = &unk_1E774B730;
  v10 = @"FailedToUploadItemsAlbum";
  v11 = v3;
  v6 = v3;
  [v5 px_navigateToCollectionSubtype:216 completionHandler:&v7];
}

@end