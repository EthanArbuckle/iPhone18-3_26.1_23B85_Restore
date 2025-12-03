@interface PUActivitySharingConfiguration
- (PUActivitySharingConfiguration)initWithCollectionsFetchResult:(id)result selectionManager:(id)manager;
@end

@implementation PUActivitySharingConfiguration

- (PUActivitySharingConfiguration)initWithCollectionsFetchResult:(id)result selectionManager:(id)manager
{
  resultCopy = result;
  managerCopy = manager;
  v10 = managerCopy;
  if (resultCopy)
  {
    if (managerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUActivitySharingConfiguration.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"collectionListFetchResult"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUActivitySharingConfiguration.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"selectionManager"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = PUActivitySharingConfiguration;
  v11 = [(PUActivitySharingConfiguration *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_collectionListFetchResult, result);
    objc_storeStrong(&v12->_selectionManager, manager);
  }

  return v12;
}

@end