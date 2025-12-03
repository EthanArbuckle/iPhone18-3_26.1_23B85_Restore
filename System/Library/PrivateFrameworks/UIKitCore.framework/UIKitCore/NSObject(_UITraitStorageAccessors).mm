@interface NSObject(_UITraitStorageAccessors)
- (void)_applyTraitStorageRecordsForTraitCollection:()_UITraitStorageAccessors;
@end

@implementation NSObject(_UITraitStorageAccessors)

- (void)_applyTraitStorageRecordsForTraitCollection:()_UITraitStorageAccessors
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  _traitStorageList = [self _traitStorageList];
  traitStorages = [_traitStorageList traitStorages];

  v7 = [traitStorages countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(traitStorages);
        }

        [*(*(&v11 + 1) + 8 * v10++) applyRecordsMatchingTraitCollection:v4];
      }

      while (v8 != v10);
      v8 = [traitStorages countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end