@interface WFCoreDataCollection
- (BOOL)isFolder;
- (NSArray)deserializedLastRemoteCollectionOrdering;
- (NSArray)deserializedLastRemoteCollectionOrderingSubset;
- (NSArray)deserializedLastRemoteShortcutOrdering;
- (id)descriptor;
- (void)setDeserializedLastRemoteCollectionOrdering:(id)a3;
- (void)setDeserializedLastRemoteCollectionOrderingSubset:(id)a3;
- (void)setDeserializedLastRemoteShortcutOrdering:(id)a3;
@end

@implementation WFCoreDataCollection

- (void)setDeserializedLastRemoteCollectionOrderingSubset:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v11 = 0;
    v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:a3 format:200 options:0 error:&v11];
    v5 = v11;
    if (v4)
    {
      v6 = self;
      v7 = v4;
    }

    else
    {
      v9 = getWFDatabaseLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v13 = "[WFCoreDataCollection(RecordStorage) setDeserializedLastRemoteCollectionOrderingSubset:]";
        v14 = 2114;
        v15 = v5;
        _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_FAULT, "%s Failed to serialize last remote collection ordering subset into plist data: %{public}@", buf, 0x16u);
      }

      v6 = self;
      v7 = 0;
    }

    [(WFCoreDataCollection *)v6 setLastRemoteCollectionOrderingSubsetData:v7];

    v10 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];

    [(WFCoreDataCollection *)self setLastRemoteCollectionOrderingSubsetData:0];
  }
}

- (NSArray)deserializedLastRemoteCollectionOrderingSubset
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(WFCoreDataCollection *)self lastRemoteCollectionOrderingSubsetData];

  if (v3)
  {
    v4 = MEMORY[0x1E696AE40];
    v5 = [(WFCoreDataCollection *)self lastRemoteCollectionOrderingSubsetData];
    v10 = 0;
    v3 = [v4 propertyListWithData:v5 options:0 format:0 error:&v10];
    v6 = v10;

    if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {

      v7 = getWFDatabaseLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v12 = "[WFCoreDataCollection(RecordStorage) deserializedLastRemoteCollectionOrderingSubset]";
        v13 = 2114;
        v14 = v6;
        _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_FAULT, "%s Failed to deserialize last remote collection ordering subset from plist data: %{public}@", buf, 0x16u);
      }

      v3 = 0;
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)setDeserializedLastRemoteCollectionOrdering:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v11 = 0;
    v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:a3 format:200 options:0 error:&v11];
    v5 = v11;
    if (v4)
    {
      v6 = self;
      v7 = v4;
    }

    else
    {
      v9 = getWFDatabaseLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v13 = "[WFCoreDataCollection(RecordStorage) setDeserializedLastRemoteCollectionOrdering:]";
        v14 = 2114;
        v15 = v5;
        _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_FAULT, "%s Failed to serialize last remote collection ordering into plist data: %{public}@", buf, 0x16u);
      }

      v6 = self;
      v7 = 0;
    }

    [(WFCoreDataCollection *)v6 setLastRemoteCollectionOrderingData:v7];

    v10 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];

    [(WFCoreDataCollection *)self setLastRemoteCollectionOrderingData:0];
  }
}

- (NSArray)deserializedLastRemoteCollectionOrdering
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(WFCoreDataCollection *)self lastRemoteCollectionOrderingData];

  if (v3)
  {
    v4 = MEMORY[0x1E696AE40];
    v5 = [(WFCoreDataCollection *)self lastRemoteCollectionOrderingData];
    v10 = 0;
    v3 = [v4 propertyListWithData:v5 options:0 format:0 error:&v10];
    v6 = v10;

    if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {

      v7 = getWFDatabaseLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v12 = "[WFCoreDataCollection(RecordStorage) deserializedLastRemoteCollectionOrdering]";
        v13 = 2114;
        v14 = v6;
        _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_FAULT, "%s Failed to deserialize last remote collection ordering from plist data: %{public}@", buf, 0x16u);
      }

      v3 = 0;
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)setDeserializedLastRemoteShortcutOrdering:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v11 = 0;
    v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:a3 format:200 options:0 error:&v11];
    v5 = v11;
    if (v4)
    {
      v6 = self;
      v7 = v4;
    }

    else
    {
      v9 = getWFDatabaseLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v13 = "[WFCoreDataCollection(RecordStorage) setDeserializedLastRemoteShortcutOrdering:]";
        v14 = 2114;
        v15 = v5;
        _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_FAULT, "%s Failed to serialize last remote shortcut ordering into plist data: %{public}@", buf, 0x16u);
      }

      v6 = self;
      v7 = 0;
    }

    [(WFCoreDataCollection *)v6 setLastRemoteShortcutOrderingData:v7];

    v10 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];

    [(WFCoreDataCollection *)self setLastRemoteShortcutOrderingData:0];
  }
}

- (NSArray)deserializedLastRemoteShortcutOrdering
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(WFCoreDataCollection *)self lastRemoteShortcutOrderingData];

  if (v3)
  {
    v4 = MEMORY[0x1E696AE40];
    v5 = [(WFCoreDataCollection *)self lastRemoteShortcutOrderingData];
    v10 = 0;
    v3 = [v4 propertyListWithData:v5 options:0 format:0 error:&v10];
    v6 = v10;

    if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {

      v7 = getWFDatabaseLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v12 = "[WFCoreDataCollection(RecordStorage) deserializedLastRemoteShortcutOrdering]";
        v13 = 2114;
        v14 = v6;
        _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_FAULT, "%s Failed to deserialize last remote shortcut ordering from plist data: %{public}@", buf, 0x16u);
      }

      v3 = 0;
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BOOL)isFolder
{
  v3 = [(WFCoreDataCollection *)self identifier];
  if (v3)
  {
    v4 = WFGetBuiltInCollectionIdentifiers(1);
    v5 = [(WFCoreDataCollection *)self identifier];
    v6 = [v4 containsObject:v5];

    v7 = v6 ^ 1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)descriptor
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(WFCoreDataCollection *)self identifier];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69E0A68]);
    v5 = [(WFCoreDataCollection *)self identifier];
    v6 = [v4 initWithIdentifier:v5 objectType:2];
  }

  else
  {
    v7 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      v10 = 136315138;
      v11 = "[WFCoreDataCollection(RecordStorage) descriptor]";
      _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_FAULT, "%s Trying to create a descriptor for a collection with nil identifier", &v10, 0xCu);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

@end