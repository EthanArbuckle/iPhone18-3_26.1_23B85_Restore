@interface WFCoreDataCollection
- (BOOL)isFolder;
- (NSArray)deserializedLastRemoteCollectionOrdering;
- (NSArray)deserializedLastRemoteCollectionOrderingSubset;
- (NSArray)deserializedLastRemoteShortcutOrdering;
- (id)descriptor;
- (void)setDeserializedLastRemoteCollectionOrdering:(id)ordering;
- (void)setDeserializedLastRemoteCollectionOrderingSubset:(id)subset;
- (void)setDeserializedLastRemoteShortcutOrdering:(id)ordering;
@end

@implementation WFCoreDataCollection

- (void)setDeserializedLastRemoteCollectionOrderingSubset:(id)subset
{
  v16 = *MEMORY[0x1E69E9840];
  if (subset)
  {
    v11 = 0;
    v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:subset format:200 options:0 error:&v11];
    v5 = v11;
    if (v4)
    {
      selfCopy2 = self;
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

      selfCopy2 = self;
      v7 = 0;
    }

    [(WFCoreDataCollection *)selfCopy2 setLastRemoteCollectionOrderingSubsetData:v7];

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
  lastRemoteCollectionOrderingSubsetData = [(WFCoreDataCollection *)self lastRemoteCollectionOrderingSubsetData];

  if (lastRemoteCollectionOrderingSubsetData)
  {
    v4 = MEMORY[0x1E696AE40];
    lastRemoteCollectionOrderingSubsetData2 = [(WFCoreDataCollection *)self lastRemoteCollectionOrderingSubsetData];
    v10 = 0;
    lastRemoteCollectionOrderingSubsetData = [v4 propertyListWithData:lastRemoteCollectionOrderingSubsetData2 options:0 format:0 error:&v10];
    v6 = v10;

    if (!lastRemoteCollectionOrderingSubsetData || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
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

      lastRemoteCollectionOrderingSubsetData = 0;
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return lastRemoteCollectionOrderingSubsetData;
}

- (void)setDeserializedLastRemoteCollectionOrdering:(id)ordering
{
  v16 = *MEMORY[0x1E69E9840];
  if (ordering)
  {
    v11 = 0;
    v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:ordering format:200 options:0 error:&v11];
    v5 = v11;
    if (v4)
    {
      selfCopy2 = self;
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

      selfCopy2 = self;
      v7 = 0;
    }

    [(WFCoreDataCollection *)selfCopy2 setLastRemoteCollectionOrderingData:v7];

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
  lastRemoteCollectionOrderingData = [(WFCoreDataCollection *)self lastRemoteCollectionOrderingData];

  if (lastRemoteCollectionOrderingData)
  {
    v4 = MEMORY[0x1E696AE40];
    lastRemoteCollectionOrderingData2 = [(WFCoreDataCollection *)self lastRemoteCollectionOrderingData];
    v10 = 0;
    lastRemoteCollectionOrderingData = [v4 propertyListWithData:lastRemoteCollectionOrderingData2 options:0 format:0 error:&v10];
    v6 = v10;

    if (!lastRemoteCollectionOrderingData || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
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

      lastRemoteCollectionOrderingData = 0;
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return lastRemoteCollectionOrderingData;
}

- (void)setDeserializedLastRemoteShortcutOrdering:(id)ordering
{
  v16 = *MEMORY[0x1E69E9840];
  if (ordering)
  {
    v11 = 0;
    v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:ordering format:200 options:0 error:&v11];
    v5 = v11;
    if (v4)
    {
      selfCopy2 = self;
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

      selfCopy2 = self;
      v7 = 0;
    }

    [(WFCoreDataCollection *)selfCopy2 setLastRemoteShortcutOrderingData:v7];

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
  lastRemoteShortcutOrderingData = [(WFCoreDataCollection *)self lastRemoteShortcutOrderingData];

  if (lastRemoteShortcutOrderingData)
  {
    v4 = MEMORY[0x1E696AE40];
    lastRemoteShortcutOrderingData2 = [(WFCoreDataCollection *)self lastRemoteShortcutOrderingData];
    v10 = 0;
    lastRemoteShortcutOrderingData = [v4 propertyListWithData:lastRemoteShortcutOrderingData2 options:0 format:0 error:&v10];
    v6 = v10;

    if (!lastRemoteShortcutOrderingData || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
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

      lastRemoteShortcutOrderingData = 0;
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return lastRemoteShortcutOrderingData;
}

- (BOOL)isFolder
{
  identifier = [(WFCoreDataCollection *)self identifier];
  if (identifier)
  {
    v4 = WFGetBuiltInCollectionIdentifiers(1);
    identifier2 = [(WFCoreDataCollection *)self identifier];
    v6 = [v4 containsObject:identifier2];

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
  identifier = [(WFCoreDataCollection *)self identifier];

  if (identifier)
  {
    v4 = objc_alloc(MEMORY[0x1E69E0A68]);
    identifier2 = [(WFCoreDataCollection *)self identifier];
    v6 = [v4 initWithIdentifier:identifier2 objectType:2];
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