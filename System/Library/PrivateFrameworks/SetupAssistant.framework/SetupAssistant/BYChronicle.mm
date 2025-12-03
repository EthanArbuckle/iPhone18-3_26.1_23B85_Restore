@interface BYChronicle
- (BYChronicle)init;
- (id)_dictionaryRepresentationForBackedUpFeatures:(BOOL)features;
- (id)entryForFeature:(unint64_t)feature;
- (void)addEntry:(id)entry forFeature:(unint64_t)feature;
- (void)recordFeatureShown:(unint64_t)shown;
- (void)removeRecordForFeature:(unint64_t)feature;
- (void)setProductVersion:(id)version forFeature:(unint64_t)feature;
@end

@implementation BYChronicle

- (BYChronicle)init
{
  v6.receiver = self;
  v6.super_class = BYChronicle;
  v2 = [(BYChronicle *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    featureEntries = v2->_featureEntries;
    v2->_featureEntries = v3;
  }

  return v2;
}

- (void)recordFeatureShown:(unint64_t)shown
{
  obj = [(BYChronicle *)self featureEntries];
  objc_sync_enter(obj);
  v5 = objc_alloc_init(BYChronicleEntry);
  [(BYChronicle *)self addEntry:v5 forFeature:shown];

  objc_sync_exit(obj);
}

- (void)setProductVersion:(id)version forFeature:(unint64_t)feature
{
  versionCopy = version;
  v7 = [[BYChronicleEntry alloc] initWithProductVersion:versionCopy];

  [(BYChronicle *)self addEntry:v7 forFeature:feature];
}

- (void)removeRecordForFeature:(unint64_t)feature
{
  obj = [(BYChronicle *)self featureEntries];
  objc_sync_enter(obj);
  featureEntries = [(BYChronicle *)self featureEntries];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:feature];
  [featureEntries removeObjectForKey:v6];

  objc_sync_exit(obj);
}

- (void)addEntry:(id)entry forFeature:(unint64_t)feature
{
  entryCopy = entry;
  featureEntries = [(BYChronicle *)self featureEntries];
  objc_sync_enter(featureEntries);
  featureEntries2 = [(BYChronicle *)self featureEntries];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:feature];
  [featureEntries2 setObject:entryCopy forKeyedSubscript:v8];

  objc_sync_exit(featureEntries);
}

- (id)entryForFeature:(unint64_t)feature
{
  featureEntries = [(BYChronicle *)self featureEntries];
  objc_sync_enter(featureEntries);
  featureEntries2 = [(BYChronicle *)self featureEntries];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:feature];
  v8 = [featureEntries2 objectForKeyedSubscript:v7];

  objc_sync_exit(featureEntries);

  return v8;
}

- (id)_dictionaryRepresentationForBackedUpFeatures:(BOOL)features
{
  featuresCopy = features;
  v28 = *MEMORY[0x1E69E9840];
  featureEntries = [(BYChronicle *)self featureEntries];
  objc_sync_enter(featureEntries);
  featureEntries2 = [(BYChronicle *)self featureEntries];
  v7 = [featureEntries2 copy];

  objc_sync_exit(featureEntries);
  v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v20 = v7;
  allKeys = [v7 allKeys];
  v10 = [allKeys countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v10)
  {
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        if (-[BYChronicle _isBackedUpFeature:](self, "_isBackedUpFeature:", [v13 unsignedIntValue]) == featuresCopy)
        {
          v14 = [v20 objectForKeyedSubscript:v13];
          v25[0] = @"type";
          v25[1] = @"data";
          v26[0] = v13;
          dictionaryRepresentation = [v14 dictionaryRepresentation];
          v26[1] = dictionaryRepresentation;
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
          [v8 addObject:v16];
        }
      }

      v10 = [allKeys countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v10);
  }

  [v19 setObject:v8 forKeyedSubscript:@"features"];
  v17 = *MEMORY[0x1E69E9840];

  return v19;
}

- (void)_parseChronicleFeaturesFromPreferences:(uint64_t)a1 includeCache:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_1B862F000, a2, OS_LOG_TYPE_ERROR, "Unable to read chronicle data; found %@, expected NSDictionary!", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end