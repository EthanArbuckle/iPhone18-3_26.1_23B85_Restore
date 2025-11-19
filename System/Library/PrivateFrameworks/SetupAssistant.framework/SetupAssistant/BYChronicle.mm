@interface BYChronicle
- (BYChronicle)init;
- (id)_dictionaryRepresentationForBackedUpFeatures:(BOOL)a3;
- (id)entryForFeature:(unint64_t)a3;
- (void)addEntry:(id)a3 forFeature:(unint64_t)a4;
- (void)recordFeatureShown:(unint64_t)a3;
- (void)removeRecordForFeature:(unint64_t)a3;
- (void)setProductVersion:(id)a3 forFeature:(unint64_t)a4;
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

- (void)recordFeatureShown:(unint64_t)a3
{
  obj = [(BYChronicle *)self featureEntries];
  objc_sync_enter(obj);
  v5 = objc_alloc_init(BYChronicleEntry);
  [(BYChronicle *)self addEntry:v5 forFeature:a3];

  objc_sync_exit(obj);
}

- (void)setProductVersion:(id)a3 forFeature:(unint64_t)a4
{
  v6 = a3;
  v7 = [[BYChronicleEntry alloc] initWithProductVersion:v6];

  [(BYChronicle *)self addEntry:v7 forFeature:a4];
}

- (void)removeRecordForFeature:(unint64_t)a3
{
  obj = [(BYChronicle *)self featureEntries];
  objc_sync_enter(obj);
  v5 = [(BYChronicle *)self featureEntries];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [v5 removeObjectForKey:v6];

  objc_sync_exit(obj);
}

- (void)addEntry:(id)a3 forFeature:(unint64_t)a4
{
  v9 = a3;
  v6 = [(BYChronicle *)self featureEntries];
  objc_sync_enter(v6);
  v7 = [(BYChronicle *)self featureEntries];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  [v7 setObject:v9 forKeyedSubscript:v8];

  objc_sync_exit(v6);
}

- (id)entryForFeature:(unint64_t)a3
{
  v5 = [(BYChronicle *)self featureEntries];
  objc_sync_enter(v5);
  v6 = [(BYChronicle *)self featureEntries];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v8 = [v6 objectForKeyedSubscript:v7];

  objc_sync_exit(v5);

  return v8;
}

- (id)_dictionaryRepresentationForBackedUpFeatures:(BOOL)a3
{
  v3 = a3;
  v28 = *MEMORY[0x1E69E9840];
  v5 = [(BYChronicle *)self featureEntries];
  objc_sync_enter(v5);
  v6 = [(BYChronicle *)self featureEntries];
  v7 = [v6 copy];

  objc_sync_exit(v5);
  v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v20 = v7;
  v9 = [v7 allKeys];
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v10)
  {
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        if (-[BYChronicle _isBackedUpFeature:](self, "_isBackedUpFeature:", [v13 unsignedIntValue]) == v3)
        {
          v14 = [v20 objectForKeyedSubscript:v13];
          v25[0] = @"type";
          v25[1] = @"data";
          v26[0] = v13;
          v15 = [v14 dictionaryRepresentation];
          v26[1] = v15;
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
          [v8 addObject:v16];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
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