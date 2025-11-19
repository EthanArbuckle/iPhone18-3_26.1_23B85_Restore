@interface PUActivitySharingConfiguration
- (PUActivitySharingConfiguration)initWithCollectionsFetchResult:(id)a3 selectionManager:(id)a4;
@end

@implementation PUActivitySharingConfiguration

- (PUActivitySharingConfiguration)initWithCollectionsFetchResult:(id)a3 selectionManager:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PUActivitySharingConfiguration.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"collectionListFetchResult"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"PUActivitySharingConfiguration.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"selectionManager"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = PUActivitySharingConfiguration;
  v11 = [(PUActivitySharingConfiguration *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_collectionListFetchResult, a3);
    objc_storeStrong(&v12->_selectionManager, a4);
  }

  return v12;
}

@end