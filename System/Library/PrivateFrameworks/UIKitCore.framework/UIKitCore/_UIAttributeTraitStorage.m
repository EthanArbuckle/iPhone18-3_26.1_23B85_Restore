@interface _UIAttributeTraitStorage
- (_UIAttributeTraitStorage)initWithObject:(id)a3 keyPath:(id)a4;
- (void)addRecordWithTraitCollection:(id)a3 value:(id)a4;
- (void)applyRecordsMatchingTraitCollection:(id)a3;
@end

@implementation _UIAttributeTraitStorage

- (_UIAttributeTraitStorage)initWithObject:(id)a3 keyPath:(id)a4
{
  v5.receiver = self;
  v5.super_class = _UIAttributeTraitStorage;
  return [(_UITraitStorage *)&v5 initWithObject:a3 keyPath:a4];
}

- (void)addRecordWithTraitCollection:(id)a3 value:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a3;
  v9 = [(UITraitCollection *)v8 _traitCollectionWithNonDefaultValuesForTraitsThatCannotRepresentUnspecified];
  if (v9)
  {
    _UIIsPrivateMainBundle();
    if (dyld_program_sdk_at_least())
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [v9 _traitsDescription];
      [v11 handleFailureInMethod:a2 object:self file:@"_UITraitStorage.m" lineNumber:310 description:{@"Invalid trait collection for trait storage, as it contains non-default values for the following traits that cannot represent unspecified values: %@", v12}];

      goto LABEL_2;
    }

    if (os_variant_has_internal_diagnostics())
    {
      v14 = __UIFaultDebugAssertLog();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_9;
      }

      v15 = [v9 _traitsDescription];
      *buf = 138412290;
      v17 = v15;
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
      v15 = [v9 _traitsDescription];
      *buf = 138412290;
      v17 = v15;
      _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "Invalid trait collection for trait storage, as it contains non-default values for the following traits that cannot represent unspecified values: %@ This will become an assert in a future version.", buf, 0xCu);
    }

LABEL_9:
  }

LABEL_2:
  v10 = [[_UIAttributeTraitStorageRecord alloc] initWithTraitCollection:v8 value:v7];

  [(_UITraitStorage *)self addRecord:v10];
}

- (void)applyRecordsMatchingTraitCollection:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [(_UITraitStorage *)self records];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 traitCollection];
        v12 = v11;
        if (!v4 || v11)
        {
          v13 = [(UITraitCollection *)v4 _containsTraitsInCollectionConsideringTraitsThatCanRepresentUnspecifiedOnly:v11];

          if (!v13)
          {
            continue;
          }
        }

        v14 = [v10 value];
        if ([v14 _uikit_variesByTraitCollections])
        {
          while (1)
          {
            v15 = [v14 _uikit_valueForTraitCollection:v4];
            v16 = v15;
            if (v15 == v14)
            {
              break;
            }

            v14 = v16;
            if (([v16 _uikit_variesByTraitCollections] & 1) == 0)
            {
              goto LABEL_18;
            }
          }
        }

        v16 = v14;
LABEL_18:
        v17 = [(_UITraitStorage *)self object];
        v18 = [(_UITraitStorage *)self keyPath];
        [v17 _uikit_applyValueFromTraitStorage:v16 forKeyPath:v18];

        goto LABEL_19;
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
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