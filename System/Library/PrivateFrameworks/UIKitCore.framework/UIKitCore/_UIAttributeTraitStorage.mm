@interface _UIAttributeTraitStorage
- (_UIAttributeTraitStorage)initWithObject:(id)object keyPath:(id)path;
- (void)addRecordWithTraitCollection:(id)collection value:(id)value;
- (void)applyRecordsMatchingTraitCollection:(id)collection;
@end

@implementation _UIAttributeTraitStorage

- (_UIAttributeTraitStorage)initWithObject:(id)object keyPath:(id)path
{
  v5.receiver = self;
  v5.super_class = _UIAttributeTraitStorage;
  return [(_UITraitStorage *)&v5 initWithObject:object keyPath:path];
}

- (void)addRecordWithTraitCollection:(id)collection value:(id)value
{
  v18 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  collectionCopy = collection;
  _traitCollectionWithNonDefaultValuesForTraitsThatCannotRepresentUnspecified = [(UITraitCollection *)collectionCopy _traitCollectionWithNonDefaultValuesForTraitsThatCannotRepresentUnspecified];
  if (_traitCollectionWithNonDefaultValuesForTraitsThatCannotRepresentUnspecified)
  {
    _UIIsPrivateMainBundle();
    if (dyld_program_sdk_at_least())
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      _traitsDescription = [_traitCollectionWithNonDefaultValuesForTraitsThatCannotRepresentUnspecified _traitsDescription];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UITraitStorage.m" lineNumber:310 description:{@"Invalid trait collection for trait storage, as it contains non-default values for the following traits that cannot represent unspecified values: %@", _traitsDescription}];

      goto LABEL_2;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v14 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_9;
      }

      _traitsDescription2 = [_traitCollectionWithNonDefaultValuesForTraitsThatCannotRepresentUnspecified _traitsDescription];
      *buf = 138412290;
      v17 = _traitsDescription2;
      _os_log_fault_impl(&dword_188A29000, v14, OS_LOG_TYPE_FAULT, "Invalid trait collection for trait storage, as it contains non-default values for the following traits that cannot represent unspecified values: %@ This will become an assert in a future version.", buf, 0xCu);
    }

    else
    {
      v13 = *(__UILogGetCategoryCachedImpl("Assert", &addRecordWithTraitCollection_value____s_category) + 8);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_2;
      }

      v14 = v13;
      _traitsDescription2 = [_traitCollectionWithNonDefaultValuesForTraitsThatCannotRepresentUnspecified _traitsDescription];
      *buf = 138412290;
      v17 = _traitsDescription2;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Invalid trait collection for trait storage, as it contains non-default values for the following traits that cannot represent unspecified values: %@ This will become an assert in a future version.", buf, 0xCu);
    }

LABEL_9:
  }

LABEL_2:
  v10 = [[_UIAttributeTraitStorageRecord alloc] initWithTraitCollection:collectionCopy value:valueCopy];

  [(_UITraitStorage *)self addRecord:v10];
}

- (void)applyRecordsMatchingTraitCollection:(id)collection
{
  v24 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  records = [(_UITraitStorage *)self records];
  v6 = [records countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(records);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        traitCollection = [v10 traitCollection];
        v12 = traitCollection;
        if (!collectionCopy || traitCollection)
        {
          v13 = [(UITraitCollection *)collectionCopy _containsTraitsInCollectionConsideringTraitsThatCanRepresentUnspecifiedOnly:traitCollection];

          if (!v13)
          {
            continue;
          }
        }

        value = [v10 value];
        if ([value _uikit_variesByTraitCollections])
        {
          while (1)
          {
            v15 = [value _uikit_valueForTraitCollection:collectionCopy];
            v16 = v15;
            if (v15 == value)
            {
              break;
            }

            value = v16;
            if (([v16 _uikit_variesByTraitCollections] & 1) == 0)
            {
              goto LABEL_18;
            }
          }
        }

        v16 = value;
LABEL_18:
        object = [(_UITraitStorage *)self object];
        keyPath = [(_UITraitStorage *)self keyPath];
        [object _uikit_applyValueFromTraitStorage:v16 forKeyPath:keyPath];

        goto LABEL_19;
      }

      v7 = [records countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:
}

@end