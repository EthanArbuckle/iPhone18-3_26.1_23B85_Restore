@interface PUActivitySharingViewModel
- (PUActivitySharingViewModel)init;
- (PUActivitySharingViewModel)initWithActivitySharingConfiguration:(id)a3;
- (void)performChanges:(id)a3;
@end

@implementation PUActivitySharingViewModel

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PUActivitySharingViewModel;
  [(PUActivitySharingViewModel *)&v3 performChanges:a3];
}

- (PUActivitySharingViewModel)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUActivitySharingViewModel.m" lineNumber:36 description:{@"%s is not available as initializer", "-[PUActivitySharingViewModel init]"}];

  abort();
}

- (PUActivitySharingViewModel)initWithActivitySharingConfiguration:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PUActivitySharingViewModel;
  v5 = [(PUActivitySharingViewModel *)&v19 init];
  if (v5)
  {
    v6 = [v4 collectionListFetchResult];
    collectionListFetchResult = v5->_collectionListFetchResult;
    v5->_collectionListFetchResult = v6;

    v8 = [v4 selectionManager];
    selectionManager = v5->_selectionManager;
    v5->_selectionManager = v8;

    v10 = [v4 photosDataSource];
    photosDataSource = v5->_photosDataSource;
    v5->_photosDataSource = v10;

    v12 = [v4 keyAsset];
    keyAsset = v5->_keyAsset;
    v5->_keyAsset = v12;

    v14 = [v4 person];
    person = v5->_person;
    v5->_person = v14;

    v16 = [v4 socialGroup];
    socialGroup = v5->_socialGroup;
    v5->_socialGroup = v16;

    v5->_sourceOrigin = [v4 sourceOrigin];
  }

  return v5;
}

@end