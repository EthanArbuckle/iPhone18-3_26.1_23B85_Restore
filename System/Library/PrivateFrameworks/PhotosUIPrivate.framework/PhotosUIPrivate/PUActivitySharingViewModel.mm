@interface PUActivitySharingViewModel
- (PUActivitySharingViewModel)init;
- (PUActivitySharingViewModel)initWithActivitySharingConfiguration:(id)configuration;
- (void)performChanges:(id)changes;
@end

@implementation PUActivitySharingViewModel

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PUActivitySharingViewModel;
  [(PUActivitySharingViewModel *)&v3 performChanges:changes];
}

- (PUActivitySharingViewModel)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUActivitySharingViewModel.m" lineNumber:36 description:{@"%s is not available as initializer", "-[PUActivitySharingViewModel init]"}];

  abort();
}

- (PUActivitySharingViewModel)initWithActivitySharingConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v19.receiver = self;
  v19.super_class = PUActivitySharingViewModel;
  v5 = [(PUActivitySharingViewModel *)&v19 init];
  if (v5)
  {
    collectionListFetchResult = [configurationCopy collectionListFetchResult];
    collectionListFetchResult = v5->_collectionListFetchResult;
    v5->_collectionListFetchResult = collectionListFetchResult;

    selectionManager = [configurationCopy selectionManager];
    selectionManager = v5->_selectionManager;
    v5->_selectionManager = selectionManager;

    photosDataSource = [configurationCopy photosDataSource];
    photosDataSource = v5->_photosDataSource;
    v5->_photosDataSource = photosDataSource;

    keyAsset = [configurationCopy keyAsset];
    keyAsset = v5->_keyAsset;
    v5->_keyAsset = keyAsset;

    person = [configurationCopy person];
    person = v5->_person;
    v5->_person = person;

    socialGroup = [configurationCopy socialGroup];
    socialGroup = v5->_socialGroup;
    v5->_socialGroup = socialGroup;

    v5->_sourceOrigin = [configurationCopy sourceOrigin];
  }

  return v5;
}

@end