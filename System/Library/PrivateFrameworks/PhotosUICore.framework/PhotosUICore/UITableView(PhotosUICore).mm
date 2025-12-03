@interface UITableView(PhotosUICore)
- (void)px_performUpdatesForChangeDetails:()PhotosUICore dataSourceUpdate:;
@end

@implementation UITableView(PhotosUICore)

- (void)px_performUpdatesForChangeDetails:()PhotosUICore dataSourceUpdate:
{
  v6 = a3;
  v7 = a4;
  if ([v6 hasIncrementalChanges])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __80__UITableView_PhotosUICore__px_performUpdatesForChangeDetails_dataSourceUpdate___block_invoke;
    v8[3] = &unk_1E774A0E0;
    v11 = v7;
    v9 = v6;
    selfCopy = self;
    [self performBatchUpdates:v8 completion:0];
  }

  else
  {
    v7[2](v7);
    [self reloadData];
  }
}

@end