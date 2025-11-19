@interface UAFAutoAssetSet
+ (id)autoAssetEntryToAsset:(id)a3 withAssetName:(id)a4 experimentationEnabled:(BOOL)a5 experimentId:(id)a6;
+ (id)autoAssetSetStatus:(id)a3;
+ (id)getClientName;
+ (id)getConcurrentQueue;
+ (id)getLockReason:(id)a3;
+ (id)getMapReason:(id)a3;
- (BOOL)lockAutoAssets:(id)a3 error:(id *)a4;
- (UAFAutoAssetSet)initWithAssetSetName:(id)a3 autoAssets:(id)a4 uuid:(id)a5 experiment:(id)a6 atomicInstance:(id)a7 error:(id *)a8;
- (id)assetWithName:(id)a3 autoAssets:(id)a4 experiment:(id)a5;
- (id)getMAAutoAssetDownloadErrorsSync;
- (id)loadAutoAssets:(id)a3 experiment:(id)a4 experimentActivated:(BOOL *)a5;
- (void)dealloc;
- (void)invalidateWithQueue:(id)a3 completion:(id)a4;
- (void)mapAsset:(id)a3 queue:(id)a4 completion:(id)a5;
@end

@implementation UAFAutoAssetSet

- (void)dealloc
{
  [(UAFAutoAssetSet *)self invalidateWithQueue:0 completion:0];
  v3.receiver = self;
  v3.super_class = UAFAutoAssetSet;
  [(UAFAutoAssetSet *)&v3 dealloc];
}

+ (id)getConcurrentQueue
{
  if (_MergedGlobals_5 != -1)
  {
    dispatch_once(&_MergedGlobals_5, &__block_literal_global_6);
  }

  v3 = qword_1ED7D10F8;

  return v3;
}

void __37__UAFAutoAssetSet_getConcurrentQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("UAFAutoAssetSet.Concurrent", v2);
  v1 = qword_1ED7D10F8;
  qword_1ED7D10F8 = v0;
}

+ (id)getClientName
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];

  if (!v3)
  {
    v4 = [MEMORY[0x1E696AAE8] mainBundle];
    v3 = [v4 executablePath];
  }

  return v3;
}

+ (id)getLockReason:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [v4 assetSetIdentifier];
  v6 = [v4 autoAssetSetClientName];

  v7 = [v3 stringWithFormat:@"UAFAssetSet lock of %@ for %@", v5, v6];

  return v7;
}

+ (id)getMapReason:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [v4 assetSetIdentifier];
  v6 = [v4 autoAssetSetClientName];

  v7 = [v3 stringWithFormat:@"UAFAssetSet map of %@ for %@", v5, v6];

  return v7;
}

+ (id)autoAssetEntryToAsset:(id)a3 withAssetName:(id)a4 experimentationEnabled:(BOOL)a5 experimentId:(id)a6
{
  v58 = a5;
  v66 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v60 = a4;
  v59 = a6;
  v9 = objc_opt_new();
  v10 = [v8 assetID];
  [v9 setObject:v10 forKeyedSubscript:@"com.apple.UnifiedAssetFramework.AssetId"];

  v11 = [v8 fullAssetSelector];
  v12 = [v11 assetType];
  [v9 setObject:v12 forKeyedSubscript:@"com.apple.UnifiedAssetFramework.AssetType"];

  v13 = [v8 fullAssetSelector];
  v14 = [v13 assetSpecifier];
  [v9 setObject:v14 forKeyedSubscript:@"com.apple.UnifiedAssetFramework.AssetSpecifier"];

  [v9 setObject:@"MA" forKeyedSubscript:@"com.apple.UnifiedAssetFramework.Source"];
  v15 = [v8 assetAttributes];
  v16 = [v15 objectForKey:@"PrerequisiteAssetBuilds"];

  if ([v16 count])
  {
    v17 = [v16 objectAtIndexedSubscript:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v19 = [v16 objectAtIndexedSubscript:0];
      [v9 setObject:v19 forKeyedSubscript:@"com.apple.UnifiedAssetFramework.PrerequisiteBuilds"];
    }
  }

  v57 = v16;
  v20 = [v8 assetAttributes];
  v21 = [v20 objectForKey:@"_DownloadSize"];
  v22 = [v21 longLongValue];

  v23 = [MEMORY[0x1E696AD98] numberWithLongLong:v22];
  v24 = [v23 stringValue];
  [v9 setObject:v24 forKeyedSubscript:@"com.apple.UnifiedAssetFramework.ReportedDownloadSize"];

  v25 = [v8 assetAttributes];
  v26 = [v25 objectForKey:@"_UnarchivedSize"];
  v27 = [v26 longLongValue];

  v28 = [MEMORY[0x1E696AD98] numberWithLongLong:v27];
  v29 = [v28 stringValue];
  [v9 setObject:v29 forKeyedSubscript:@"com.apple.UnifiedAssetFramework.UnarchivedSize"];

  v30 = [v8 localContentURL];
  v31 = [v8 localContentURL];
  if (v31)
  {
    v32 = v31;
    v33 = [v8 localContentURL];
    v34 = [v33 scheme];

    if (!v34)
    {
      v35 = MEMORY[0x1E695DFF8];
      v36 = [v8 localContentURL];
      v37 = [v36 absoluteString];
      v38 = [v35 fileURLWithPath:v37 isDirectory:1];

      v30 = v38;
    }
  }

  v56 = v30;
  context = objc_autoreleasePoolPush();
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v39 = [v8 assetAttributes];
  v40 = [v39 countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v62;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v62 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v61 + 1) + 8 * i);
        v45 = [v8 assetAttributes];
        v46 = [v45 objectForKeyedSubscript:v44];
        objc_opt_class();
        v47 = objc_opt_isKindOfClass();

        if (v47)
        {
          v48 = [v8 assetAttributes];
          v49 = [v48 objectForKeyedSubscript:v44];
          [v9 setObject:v49 forKeyedSubscript:v44];
        }
      }

      v41 = [v39 countByEnumeratingWithState:&v61 objects:v65 count:16];
    }

    while (v41);
  }

  objc_autoreleasePoolPop(context);
  if (v58)
  {
    v50 = @"YES";
  }

  else
  {
    v50 = @"NO";
  }

  [v9 setObject:v50 forKeyedSubscript:@"ExperimentationEnabled"];
  if (v59)
  {
    v51 = v59;
  }

  else
  {
    v51 = &stru_1F3B6B510;
  }

  [v9 setObject:v51 forKeyedSubscript:@"ExperimentId"];
  v52 = [[UAFAsset alloc] initWithName:v60 location:v56 metadata:v9];

  v53 = *MEMORY[0x1E69E9840];

  return v52;
}

- (UAFAutoAssetSet)initWithAssetSetName:(id)a3 autoAssets:(id)a4 uuid:(id)a5 experiment:(id)a6 atomicInstance:(id)a7 error:(id *)a8
{
  v56 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v47.receiver = self;
  v47.super_class = UAFAutoAssetSet;
  v20 = [(UAFAutoAssetSet *)&v47 init];
  v21 = v20;
  if (v20)
  {
    v43 = v18;
    v44 = v15;
    v22 = v17;
    if (a8)
    {
      *a8 = 0;
    }

    objc_storeStrong(&v20->_uuid, a5);
    objc_storeStrong(&v21->_assetSetName, a3);
    v23 = objc_autoreleasePoolPush();
    v24 = objc_alloc(MEMORY[0x1E69B1918]);
    assetSetName = v21->_assetSetName;
    v26 = +[UAFAutoAssetSet getConcurrentQueue];
    v46 = 0;
    v27 = [v24 initLockerUsingClientDomain:@"com.apple.UnifiedAssetFramework" forAssetSetIdentifier:assetSetName usingDesiredPolicyCategory:0 completingFromQueue:v26 error:&v46];
    v28 = v46;

    objc_autoreleasePoolPop(v23);
    objc_storeStrong(&v21->_autoAssetSet, v27);
    if (a8)
    {
      v29 = v28;
      *a8 = v28;
    }

    if (!v21->_autoAssetSet || v28)
    {
      v36 = UAFGetLogCategory(&UAFLogContextClient);
      v15 = v44;
      v17 = v22;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        uuid = v21->_uuid;
        v42 = v21->_assetSetName;
        *buf = 136315906;
        v49 = "[UAFAutoAssetSet initWithAssetSetName:autoAssets:uuid:experiment:atomicInstance:error:]";
        v50 = 2114;
        v51 = uuid;
        v52 = 2114;
        v53 = v42;
        v54 = 2114;
        v55 = v28;
        _os_log_error_impl(&dword_1BCF2C000, v36, OS_LOG_TYPE_ERROR, "%s %{public}@: Could not initialize auto asset set %{public}@ : %{public}@", buf, 0x2Au);
      }

      autoAssetSet = v21->_autoAssetSet;
      v21->_autoAssetSet = 0;

      v35 = 0;
      v18 = v43;
    }

    else
    {
      v45 = 0;
      v30 = [(UAFAutoAssetSet *)v21 lockAutoAssets:v19 error:&v45];
      v31 = v45;
      v28 = v31;
      v17 = v22;
      if (v30)
      {
        v18 = v43;
        if (v16)
        {
          v32 = [(UAFAutoAssetSet *)v21 loadAutoAssets:v16 experiment:v43 experimentActivated:&v21->_experimentActivated];
          assets = v21->_assets;
          v21->_assets = v32;

          autoAssetSetStatus = v21->_autoAssetSetStatus;
          v21->_autoAssetSetStatus = 0;
        }

        v35 = v21;
      }

      else
      {
        v18 = v43;
        if (a8)
        {
          v38 = v31;
          v35 = 0;
          *a8 = v28;
        }

        else
        {
          v35 = 0;
        }
      }

      v15 = v44;
    }
  }

  else
  {
    v35 = 0;
  }

  v39 = *MEMORY[0x1E69E9840];
  return v35;
}

- (BOOL)lockAutoAssets:(id)a3 error:(id *)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  v7 = UAFGetLogCategory(&UAFLogContextClient);
  v8 = os_signpost_id_generate(v7);

  v9 = UAFGetLogCategory(&UAFLogContextClient);
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    uuid = self->_uuid;
    *buf = 138543362;
    v39 = uuid;
    _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "Lock AutoAssets", "%{public}@", buf, 0xCu);
  }

  v12 = objc_autoreleasePoolPush();
  autoAssetSet = self->_autoAssetSet;
  v14 = [UAFAutoAssetSet getLockReason:autoAssetSet];
  v37 = 0;
  v15 = [(MAAutoAssetSet *)autoAssetSet lockAtomicSync:v14 forAtomicInstance:v6 error:&v37];
  v16 = v37;

  objc_autoreleasePoolPop(v12);
  objc_storeStrong(&self->_autoAssetSetStatus, v15);
  v17 = UAFGetLogCategory(&UAFLogContextClient);
  v18 = v17;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    v19 = self->_uuid;
    *buf = 138543362;
    v39 = v19;
    _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v18, OS_SIGNPOST_INTERVAL_END, v8, "Lock AutoAssets", "%{public}@", buf, 0xCu);
  }

  autoAssetSetStatus = self->_autoAssetSetStatus;
  if (autoAssetSetStatus && ([(MAAutoAssetSetStatus *)autoAssetSetStatus latestDownloadedAtomicInstance], v21 = objc_claimAutoreleasedReturnValue(), v21, v21) && !v16)
  {
    v22 = [(MAAutoAssetSetStatus *)self->_autoAssetSetStatus latestDownloadedAtomicInstance];
    atomicInstance = self->_atomicInstance;
    self->_atomicInstance = v22;

    v24 = [(MAAutoAssetSetStatus *)self->_autoAssetSetStatus downloadedCatalogCachedAssetSetID];
    catalogAssetSetID = self->_catalogAssetSetID;
    self->_catalogAssetSetID = v24;

    v26 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = self->_uuid;
      assetSetName = self->_assetSetName;
      v29 = self->_atomicInstance;
      *buf = 136315906;
      v39 = "[UAFAutoAssetSet lockAutoAssets:error:]";
      v40 = 2114;
      v41 = v27;
      v42 = 2114;
      v43 = assetSetName;
      v44 = 2114;
      v45 = v29;
      _os_log_impl(&dword_1BCF2C000, v26, OS_LOG_TYPE_DEFAULT, "%s %{public}@: Locked asset set %{public}@ atomic instance %{public}@", buf, 0x2Au);
    }

    v30 = 1;
  }

  else
  {
    v31 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v35 = self->_uuid;
      v36 = self->_assetSetName;
      *buf = 136316162;
      v39 = "[UAFAutoAssetSet lockAutoAssets:error:]";
      v40 = 2114;
      v41 = v35;
      v42 = 2114;
      v43 = v36;
      v44 = 2114;
      v45 = v6;
      v46 = 2114;
      v47 = v16;
      _os_log_error_impl(&dword_1BCF2C000, v31, OS_LOG_TYPE_ERROR, "%s %{public}@: Could not lock asset set %{public}@ with atomic instance %{public}@: %{public}@", buf, 0x34u);
    }

    if (a4)
    {
      v32 = v16;
      v30 = 0;
      *a4 = v16;
    }

    else
    {
      v30 = 0;
    }
  }

  v33 = *MEMORY[0x1E69E9840];
  return v30;
}

- (id)loadAutoAssets:(id)a3 experiment:(id)a4 experimentActivated:(BOOL *)a5
{
  v137 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v91 = a4;
  v87 = v8;
  v88 = self;
  if (!v8)
  {
    v52 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      uuid = self->_uuid;
      assetSetName = self->_assetSetName;
      *buf = 136315650;
      *&buf[4] = "[UAFAutoAssetSet loadAutoAssets:experiment:experimentActivated:]";
      *&buf[12] = 2114;
      *&buf[14] = uuid;
      *&buf[22] = 2114;
      v134 = assetSetName;
      _os_log_error_impl(&dword_1BCF2C000, v52, OS_LOG_TYPE_ERROR, "%s %{public}@: Could not load asset set %{public}@ as autoAssets is unexpectedly nil", buf, 0x20u);
    }

    if (self->_autoAssetSetStatus)
    {
      goto LABEL_50;
    }

    goto LABEL_47;
  }

  if (!self->_autoAssetSetStatus)
  {
LABEL_47:
    v53 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v80 = self->_uuid;
      v81 = self->_assetSetName;
      *buf = 136315650;
      *&buf[4] = "[UAFAutoAssetSet loadAutoAssets:experiment:experimentActivated:]";
      *&buf[12] = 2114;
      *&buf[14] = v80;
      *&buf[22] = 2114;
      v134 = v81;
      _os_log_error_impl(&dword_1BCF2C000, v53, OS_LOG_TYPE_ERROR, "%s %{public}@: Could not load asset set %{public}@ as _autoAssetSetStatus is unexpectedly nil", buf, 0x20u);
    }

LABEL_50:
    v54 = 0;
    goto LABEL_78;
  }

  v89 = a5;
  v9 = UAFGetLogCategory(&UAFLogContextClient);
  spid = os_signpost_id_generate(v9);

  v10 = UAFGetLogCategory(&UAFLogContextClient);
  v11 = v10;
  v84 = spid - 1;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v12 = self->_uuid;
    *buf = 138543362;
    *&buf[4] = v12;
    _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v11, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Load AutoAssets", "%{public}@", buf, 0xCu);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v134 = __Block_byref_object_copy__3;
  v135 = __Block_byref_object_dispose__3;
  v136 = 0;
  context = objc_autoreleasePoolPush();
  v92 = objc_opt_new();
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v122 objects:v132 count:16];
  if (v14)
  {
    v15 = *v123;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v123 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v122 + 1) + 8 * i);
        v18 = [v13 objectForKeyedSubscript:v17];
        v19 = [v18 objectForKeyedSubscript:@"AssetSpecifier"];
        v20 = [v92 objectForKeyedSubscript:v19];
        v21 = v20 == 0;

        if (v21)
        {
          v22 = [MEMORY[0x1E695DF70] arrayWithObject:v17];
          v23 = [v13 objectForKeyedSubscript:v17];
          v24 = [v23 objectForKeyedSubscript:@"AssetSpecifier"];
          [v92 setObject:v22 forKeyedSubscript:v24];
        }

        else
        {
          v22 = [v13 objectForKeyedSubscript:v17];
          v23 = [v22 objectForKeyedSubscript:@"AssetSpecifier"];
          v24 = [v92 objectForKeyedSubscript:v23];
          [v24 addObject:v17];
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v122 objects:v132 count:16];
    }

    while (v14);
  }

  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v25 = [(MAAutoAssetSetStatus *)v88->_autoAssetSetStatus latestDowloadedAtomicInstanceEntries];
  v26 = [v25 countByEnumeratingWithState:&v118 objects:v131 count:16];
  if (v26)
  {
    v27 = *v119;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v119 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v118 + 1) + 8 * j);
        v30 = [v29 fullAssetSelector];
        v31 = [v30 assetSpecifier];
        v32 = [v92 objectForKeyedSubscript:v31];

        v115[0] = MEMORY[0x1E69E9820];
        v115[1] = 3221225472;
        v115[2] = __65__UAFAutoAssetSet_loadAutoAssets_experiment_experimentActivated___block_invoke;
        v115[3] = &unk_1E7FFDB28;
        v117 = buf;
        v115[4] = v29;
        v116 = v91;
        [v32 enumerateObjectsUsingBlock:v115];
      }

      v26 = [v25 countByEnumeratingWithState:&v118 objects:v131 count:16];
    }

    while (v26);
  }

  if (!v91 || ([v91 assetSpecifiers], (v33 = objc_claimAutoreleasedReturnValue()) == 0) || (objc_msgSend(v91, "experimentId"), v34 = objc_claimAutoreleasedReturnValue(), v35 = v34 == 0, v34, v33, v35))
  {
    v55 = UAFGetLogCategory(&UAFLogContextClient);
    v56 = v55;
    if (v84 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v55))
    {
      v57 = v88->_uuid;
      *v129 = 138543362;
      v130 = v57;
      _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v56, OS_SIGNPOST_INTERVAL_END, spid, "Load AutoAssets", "%{public}@", v129, 0xCu);
    }

    v54 = *(*&buf[8] + 40);
    v58 = 0;
    goto LABEL_75;
  }

  v36 = objc_opt_new();
  v37 = objc_opt_new();
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v38 = [(MAAutoAssetSetStatus *)v88->_autoAssetSetStatus latestDowloadedAtomicInstanceEntries];
  v39 = [v38 countByEnumeratingWithState:&v111 objects:v128 count:16];
  if (v39)
  {
    v40 = *v112;
    do
    {
      for (k = 0; k != v39; ++k)
      {
        if (*v112 != v40)
        {
          objc_enumerationMutation(v38);
        }

        v42 = *(*(&v111 + 1) + 8 * k);
        v43 = [v42 fullAssetSelector];
        v44 = [v43 assetSpecifier];
        [v37 addObject:v44];

        v45 = [v91 assetSpecifiers];
        v46 = [v42 fullAssetSelector];
        v47 = [v46 assetSpecifier];
        v48 = [v45 objectForKeyedSubscript:v47];

        if (v48)
        {
          [v36 addObject:v48];
        }
      }

      v39 = [v38 countByEnumeratingWithState:&v111 objects:v128 count:16];
    }

    while (v39);
  }

  *v89 = 1;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  obj = v36;
  v49 = [obj countByEnumeratingWithState:&v107 objects:v127 count:16];
  if (v49)
  {
    v50 = *v108;
    while (2)
    {
      for (m = 0; m != v49; ++m)
      {
        if (*v108 != v50)
        {
          objc_enumerationMutation(obj);
        }

        if (([v37 containsObject:*(*(&v107 + 1) + 8 * m)] & 1) == 0)
        {
          *v89 = 0;
          goto LABEL_56;
        }
      }

      v49 = [obj countByEnumeratingWithState:&v107 objects:v127 count:16];
      if (v49)
      {
        continue;
      }

      break;
    }
  }

LABEL_56:

  if (![obj count])
  {
    *v89 = 0;
LABEL_70:
    v73 = UAFGetLogCategory(&UAFLogContextClient);
    v74 = v73;
    if (v84 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v73))
    {
      v75 = v88->_uuid;
      *v129 = 138543362;
      v130 = v75;
      _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v74, OS_SIGNPOST_INTERVAL_END, spid, "Load AutoAssets", "%{public}@", v129, 0xCu);
    }

    v54 = *(*&buf[8] + 40);
    v58 = 0;
    goto LABEL_74;
  }

  if (!*v89)
  {
    goto LABEL_70;
  }

  v59 = objc_opt_new();
  v60 = [v91 assetSpecifiers];
  v104[0] = MEMORY[0x1E69E9820];
  v104[1] = 3221225472;
  v104[2] = __65__UAFAutoAssetSet_loadAutoAssets_experiment_experimentActivated___block_invoke_310;
  v104[3] = &unk_1E7FFDB50;
  v90 = v59;
  v105 = v90;
  v82 = v92;
  v106 = v82;
  [v60 enumerateKeysAndObjectsUsingBlock:v104];

  v61 = objc_opt_new();
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v62 = [(MAAutoAssetSetStatus *)v88->_autoAssetSetStatus latestDowloadedAtomicInstanceEntries];
  v63 = [v62 countByEnumeratingWithState:&v100 objects:v126 count:16];
  if (v63)
  {
    v64 = *v101;
    do
    {
      for (n = 0; n != v63; ++n)
      {
        if (*v101 != v64)
        {
          objc_enumerationMutation(v62);
        }

        v66 = *(*(&v100 + 1) + 8 * n);
        v67 = [v66 fullAssetSelector];
        v68 = [v67 assetSpecifier];
        v69 = [v90 objectForKeyedSubscript:v68];

        v96[0] = MEMORY[0x1E69E9820];
        v96[1] = 3221225472;
        v96[2] = __65__UAFAutoAssetSet_loadAutoAssets_experiment_experimentActivated___block_invoke_2;
        v96[3] = &unk_1E7FFDB78;
        v97 = v61;
        v98 = v66;
        v99 = v91;
        [v69 enumerateObjectsUsingBlock:v96];
      }

      v63 = [v62 countByEnumeratingWithState:&v100 objects:v126 count:16];
    }

    while (v63);
  }

  v93[0] = MEMORY[0x1E69E9820];
  v93[1] = 3221225472;
  v93[2] = __65__UAFAutoAssetSet_loadAutoAssets_experiment_experimentActivated___block_invoke_3;
  v93[3] = &unk_1E7FFDBC8;
  v54 = v61;
  v94 = v54;
  v95 = buf;
  [v82 enumerateKeysAndObjectsUsingBlock:v93];
  v70 = UAFGetLogCategory(&UAFLogContextClient);
  v71 = v70;
  if (v84 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v70))
  {
    v72 = v88->_uuid;
    *v129 = 138543362;
    v130 = v72;
    _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v71, OS_SIGNPOST_INTERVAL_END, spid, "Load AutoAssets", "%{public}@", v129, 0xCu);
  }

  v58 = 1;
LABEL_74:

LABEL_75:
  objc_autoreleasePoolPop(context);
  if (v58)
  {
    v54 = *(*&buf[8] + 40);
  }

  _Block_object_dispose(buf, 8);

LABEL_78:
  v76 = *MEMORY[0x1E69E9840];

  return v54;
}

void __65__UAFAutoAssetSet_loadAutoAssets_experiment_experimentActivated___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (!*(*(a1[6] + 8) + 40))
  {
    v4 = objc_opt_new();
    v5 = *(a1[6] + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v3 = v8;
  }

  v7 = [UAFAutoAssetSet autoAssetEntryToAsset:a1[4] withAssetName:v3 experimentationEnabled:a1[5] != 0 experimentId:0];
  [*(*(a1[6] + 8) + 40) setObject:v7 forKeyedSubscript:v8];
}

void __65__UAFAutoAssetSet_loadAutoAssets_experiment_experimentActivated___block_invoke_310(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

void __65__UAFAutoAssetSet_loadAutoAssets_experiment_experimentActivated___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = a2;
  v7 = [v4 experimentId];
  v6 = [UAFAutoAssetSet autoAssetEntryToAsset:v3 withAssetName:v5 experimentationEnabled:1 experimentId:v7];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void __65__UAFAutoAssetSet_loadAutoAssets_experiment_experimentActivated___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__UAFAutoAssetSet_loadAutoAssets_experiment_experimentActivated___block_invoke_4;
  v7[3] = &unk_1E7FFDBA0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = v5;
  v9 = v6;
  [a3 enumerateObjectsUsingBlock:v7];
}

void __65__UAFAutoAssetSet_loadAutoAssets_experiment_experimentActivated___block_invoke_4(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];

  if (v3)
  {
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v4 = objc_opt_new();
      v5 = *(*(a1 + 40) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;
    }

    v7 = [*(a1 + 32) objectForKeyedSubscript:v8];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v7 forKeyedSubscript:v8];
  }
}

- (void)invalidateWithQueue:(id)a3 completion:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  context = objc_autoreleasePoolPush();
  v8 = v6;
  v9 = v8;
  if (!v8)
  {
    v9 = +[UAFAutoAssetSet getConcurrentQueue];
  }

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __50__UAFAutoAssetSet_invalidateWithQueue_completion___block_invoke;
  v32[3] = &unk_1E7FFDBF0;
  v26 = v7;
  v34 = v26;
  v10 = v9;
  v33 = v10;
  v11 = MEMORY[0x1BFB33950](v32);
  v12 = self->_uuid;
  v13 = self;
  objc_sync_enter(v13);
  v14 = [(UAFAutoAssetSet *)v13 atomicInstance];
  [(UAFAutoAssetSet *)v13 setAtomicInstance:0];
  objc_sync_exit(v13);

  if (v14)
  {
    v15 = UAFGetLogCategory(&UAFLogContextClient);
    spid = os_signpost_id_generate(v15);

    v16 = UAFGetLogCategory(&UAFLogContextClient);
    v17 = v16;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      uuid = self->_uuid;
      *buf = 138543362;
      v36 = uuid;
      _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v17, OS_SIGNPOST_INTERVAL_BEGIN, spid, "Unlock AutoAssets", "%{public}@", buf, 0xCu);
    }

    autoAssetSet = v13->_autoAssetSet;
    v20 = [UAFAutoAssetSet getLockReason:autoAssetSet];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __50__UAFAutoAssetSet_invalidateWithQueue_completion___block_invoke_314;
    v28[3] = &unk_1E7FFDC18;
    v29 = v12;
    v30 = v14;
    v31 = v11;
    [(MAAutoAssetSet *)autoAssetSet endAtomicLock:v20 ofAtomicInstance:v30 completion:v28];

    v21 = UAFGetLogCategory(&UAFLogContextClient);
    v22 = v21;
    if (spid - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v21))
    {
      v23 = self->_uuid;
      *buf = 138543362;
      v36 = v23;
      _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v22, OS_SIGNPOST_INTERVAL_END, spid, "Unlock AutoAssets", "%{public}@", buf, 0xCu);
    }
  }

  else
  {
    v11[2](v11, 0);
  }

  objc_autoreleasePoolPop(context);
  v24 = *MEMORY[0x1E69E9840];
}

void __50__UAFAutoAssetSet_invalidateWithQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __50__UAFAutoAssetSet_invalidateWithQueue_completion___block_invoke_2;
    v6[3] = &unk_1E7FFD940;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __50__UAFAutoAssetSet_invalidateWithQueue_completion___block_invoke_314(void *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = UAFGetLogCategory(&UAFLogContextClient);
  v8 = v7;
  if (a3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[4];
      v10 = a1[5];
      v14 = 136315906;
      v15 = "[UAFAutoAssetSet invalidateWithQueue:completion:]_block_invoke";
      v16 = 2114;
      v17 = v9;
      v18 = 2114;
      v19 = v5;
      v20 = 2114;
      v21 = v10;
      _os_log_error_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_ERROR, "%s %{public}@ Failed to unlock asset set %{public}@ instance %{public}@", &v14, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = a1[4];
    v12 = a1[5];
    v14 = 136315906;
    v15 = "[UAFAutoAssetSet invalidateWithQueue:completion:]_block_invoke";
    v16 = 2114;
    v17 = v11;
    v18 = 2114;
    v19 = v5;
    v20 = 2114;
    v21 = v12;
    _os_log_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_DEFAULT, "%s %{public}@ Unlocked asset set %{public}@ atomic instance %{public}@", &v14, 0x2Au);
  }

  (*(a1[6] + 16))();
  v13 = *MEMORY[0x1E69E9840];
}

- (id)assetWithName:(id)a3 autoAssets:(id)a4 experiment:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (self->_autoAssetSetStatus)
  {
    LOBYTE(v16) = 0;
    v9 = [(UAFAutoAssetSet *)self loadAutoAssets:a4 experiment:a5 experimentActivated:&v16];
    v10 = [v9 objectForKeyedSubscript:v8];
  }

  else
  {
    v11 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      uuid = self->_uuid;
      assetSetName = self->_assetSetName;
      v16 = 136315650;
      v17 = "[UAFAutoAssetSet assetWithName:autoAssets:experiment:]";
      v18 = 2114;
      v19 = uuid;
      v20 = 2114;
      v21 = assetSetName;
      _os_log_error_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_ERROR, "%s %{public}@: Could not load asset set %{public}@ as _autoAssetSetStatus is unexpectedly nil", &v16, 0x20u);
    }

    v10 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)autoAssetSetStatus:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc(MEMORY[0x1E69B1918]);
  v6 = +[UAFAutoAssetSet getClientName];
  v7 = +[UAFAutoAssetSet getConcurrentQueue];
  v16 = 0;
  v8 = [v5 initUsingClientDomain:@"com.apple.UnifiedAssetFramework" forClientName:v6 forAssetSetIdentifier:v3 comprisedOfEntries:0 completingFromQueue:v7 error:&v16];
  v9 = v16;

  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v15 = 0;
    v12 = [v8 currentSetStatusSync:&v15];
    v9 = v15;
    if (!v9)
    {
      goto LABEL_12;
    }

    v11 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v18 = "+[UAFAutoAssetSet autoAssetSetStatus:]";
      v19 = 2114;
      v20 = v3;
      v21 = 2114;
      v22 = v9;
      _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_DEFAULT, "%s Could not get status of auto asset set %{public}@ : %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v11 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v18 = "+[UAFAutoAssetSet autoAssetSetStatus:]";
      v19 = 2114;
      v20 = v3;
      v21 = 2114;
      v22 = v9;
      _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_DEFAULT, "%s Could not initialize auto asset set %{public}@ : %{public}@", buf, 0x20u);
    }

    v12 = 0;
  }

LABEL_12:
  objc_autoreleasePoolPop(v4);

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)getMAAutoAssetDownloadErrorsSync
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AB50]);
  if (self->_autoAssetSet)
  {
    v4 = objc_autoreleasePoolPush();
    autoAssetSet = self->_autoAssetSet;
    v21 = 0;
    v6 = [(MAAutoAssetSet *)autoAssetSet currentSetStatusSync:&v21];
    v7 = v21;
    objc_autoreleasePoolPop(v4);
    if (v7)
    {
      v8 = UAFGetLogCategory(&UAFLogContextClient);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
LABEL_12:

LABEL_13:
        goto LABEL_14;
      }

      uuid = self->_uuid;
      v10 = [(MAAutoAssetSet *)self->_autoAssetSet summary];
      *buf = 136315906;
      v23 = "[UAFAutoAssetSet getMAAutoAssetDownloadErrorsSync]";
      v24 = 2114;
      v25 = uuid;
      v26 = 2114;
      v27 = v10;
      v28 = 2114;
      v29 = v7;
      _os_log_error_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_ERROR, "%s %{public}@: Could not get the current status of auto asset  %{public}@ : %{public}@", buf, 0x2Au);
    }

    else
    {
      v13 = [v6 availableForUseError];

      if (v13)
      {
        v14 = MEMORY[0x1E696AD98];
        v15 = [v6 availableForUseError];
        v16 = [v14 numberWithLong:{objc_msgSend(v15, "code")}];
        [v3 addObject:v16];
      }

      v17 = [v6 newerVersionError];

      if (!v17)
      {
        goto LABEL_13;
      }

      v18 = MEMORY[0x1E696AD98];
      v8 = [v6 newerVersionError];
      v10 = [v18 numberWithLong:{-[NSObject code](v8, "code")}];
      [v3 addObject:v10];
    }

    goto LABEL_12;
  }

  v7 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v11 = self->_uuid;
    assetSetName = self->_assetSetName;
    *buf = 136315650;
    v23 = "[UAFAutoAssetSet getMAAutoAssetDownloadErrorsSync]";
    v24 = 2114;
    v25 = v11;
    v26 = 2114;
    v27 = assetSetName;
    _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s %{public}@: Did not have auto asset set object for set %{public}@ when attempting to gather errors", buf, 0x20u);
  }

LABEL_14:

  v19 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)mapAsset:(id)a3 queue:(id)a4 completion:(id)a5
{
  v88[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v9;
  v12 = v11;
  if (!v11)
  {
    v12 = +[UAFAutoAssetSet getConcurrentQueue];
  }

  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __45__UAFAutoAssetSet_mapAsset_queue_completion___block_invoke;
  v70[3] = &unk_1E7FFDBF0;
  v13 = v10;
  v72 = v13;
  v14 = v12;
  v71 = v14;
  v15 = MEMORY[0x1BFB33950](v70);
  if (self->_atomicInstance)
  {
    v16 = [(UAFAutoAssetSet *)self assets];
    v17 = [v16 objectForKeyedSubscript:v8];

    if (v17)
    {
      v18 = [v17 metadata];
      v19 = [v18 objectForKeyedSubscript:@"com.apple.UnifiedAssetFramework.AssetType"];

      if (v19)
      {
        v20 = [v17 metadata];
        v21 = [v20 objectForKeyedSubscript:@"com.apple.UnifiedAssetFramework.AssetSpecifier"];

        if (v21)
        {
          v64 = v13;
          v65 = v8;
          v22 = objc_alloc(MEMORY[0x1E69B1918]);
          v23 = +[UAFAutoAssetSet getClientName];
          assetSetName = self->_assetSetName;
          v69 = 0;
          v25 = [v22 initUsingClientDomain:@"com.apple.UnifiedAssetFramework" forClientName:v23 forAssetSetIdentifier:assetSetName comprisedOfEntries:0 completingFromQueue:v14 error:&v69];
          v66 = v69;

          v63 = v25;
          if (v25)
          {
            v26 = [objc_alloc(MEMORY[0x1E69B1910]) initForAssetType:v19 withAssetSpecifier:v21];
            v27 = UAFGetLogCategory(&UAFLogContextClient);
            v28 = v27;
            v62 = v14;
            if (v26)
            {
              v61 = v26;
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                uuid = self->_uuid;
                v30 = [v26 summary];
                atomicInstance = self->_atomicInstance;
                *buf = 136315906;
                v80 = "[UAFAutoAssetSet mapAsset:queue:completion:]";
                v81 = 2114;
                v82 = uuid;
                v83 = 2114;
                v84 = v30;
                v85 = 2114;
                v86 = atomicInstance;
                _os_log_impl(&dword_1BCF2C000, v28, OS_LOG_TYPE_DEFAULT, "%s %{public}@: Mapping %{public}@ from atomic instance %{public}@", buf, 0x2Au);
              }

              v32 = v63;
              v33 = [UAFAutoAssetSet getMapReason:v63];
              v34 = self->_atomicInstance;
              v67[0] = MEMORY[0x1E69E9820];
              v67[1] = 3221225472;
              v67[2] = __45__UAFAutoAssetSet_mapAsset_queue_completion___block_invoke_334;
              v67[3] = &unk_1E7FFDC40;
              v67[4] = self;
              v68 = v64;
              v35 = v34;
              v13 = v64;
              v36 = v61;
              [v63 mapLockedAtomicEntry:v33 forAtomicInstance:v35 mappingSelector:v61 completion:v67];

              v8 = v65;
              v37 = v66;
            }

            else
            {
              v36 = 0;
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                v60 = self->_uuid;
                *buf = 136315906;
                v80 = "[UAFAutoAssetSet mapAsset:queue:completion:]";
                v81 = 2114;
                v82 = v60;
                v83 = 2114;
                v84 = v19;
                v85 = 2114;
                v86 = v21;
                _os_log_error_impl(&dword_1BCF2C000, v28, OS_LOG_TYPE_ERROR, "%s %{public}@: Could not create selector for asset type: %{public}@ specifier: %{public}@", buf, 0x2Au);
              }

              v37 = v66;
              (v15)[2](v15, v66);
              v13 = v64;
              v8 = v65;
              v32 = v63;
            }

            v14 = v62;
          }

          else
          {
            v49 = UAFGetLogCategory(&UAFLogContextClient);
            v13 = v64;
            if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
            {
              v58 = self->_uuid;
              v59 = self->_assetSetName;
              *buf = 136315906;
              v80 = "[UAFAutoAssetSet mapAsset:queue:completion:]";
              v81 = 2114;
              v82 = v58;
              v83 = 2114;
              v84 = v59;
              v85 = 2114;
              v86 = v66;
              _os_log_error_impl(&dword_1BCF2C000, v49, OS_LOG_TYPE_ERROR, "%s %{public}@: Error initializing MAAutoAssetSet for %{public}@: %{public}@", buf, 0x2Au);
            }

            v37 = v66;
            (v15)[2](v15, v66);
            v8 = v65;
            v32 = 0;
          }
        }

        else
        {
          v46 = UAFGetLogCategory(&UAFLogContextClient);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            v56 = self->_uuid;
            v57 = self->_assetSetName;
            *buf = 136315906;
            v80 = "[UAFAutoAssetSet mapAsset:queue:completion:]";
            v81 = 2114;
            v82 = v56;
            v83 = 2114;
            v84 = v8;
            v85 = 2114;
            v86 = v57;
            _os_log_error_impl(&dword_1BCF2C000, v46, OS_LOG_TYPE_ERROR, "%s %{public}@: Asset %{public}@ in asset set %{public}@ has no asset specifier", buf, 0x2Au);
          }

          v47 = MEMORY[0x1E696ABC0];
          v73 = *MEMORY[0x1E696A578];
          v74 = @"No asset specifier found";
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
          v48 = [v47 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:5001 userInfo:v21];
          (v15)[2](v15, v48);
        }

        goto LABEL_33;
      }

      v45 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v54 = self->_uuid;
        v55 = self->_assetSetName;
        *buf = 136315906;
        v80 = "[UAFAutoAssetSet mapAsset:queue:completion:]";
        v81 = 2114;
        v82 = v54;
        v83 = 2114;
        v84 = v8;
        v85 = 2114;
        v86 = v55;
        _os_log_error_impl(&dword_1BCF2C000, v45, OS_LOG_TYPE_ERROR, "%s %{public}@: Asset %{public}@ in asset set %{public}@ has no asset type", buf, 0x2Au);
      }

      v41 = MEMORY[0x1E696ABC0];
      v75 = *MEMORY[0x1E696A578];
      v76 = @"No asset type found";
      v42 = MEMORY[0x1E695DF20];
      v43 = &v76;
      v44 = &v75;
    }

    else
    {
      v40 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v52 = self->_uuid;
        v53 = self->_assetSetName;
        *buf = 136315906;
        v80 = "[UAFAutoAssetSet mapAsset:queue:completion:]";
        v81 = 2114;
        v82 = v52;
        v83 = 2114;
        v84 = v8;
        v85 = 2114;
        v86 = v53;
        _os_log_error_impl(&dword_1BCF2C000, v40, OS_LOG_TYPE_ERROR, "%s %{public}@: Asset %{public}@ not found in asset set %{public}@", buf, 0x2Au);
      }

      v41 = MEMORY[0x1E696ABC0];
      v77 = *MEMORY[0x1E696A578];
      v78 = @"No asset found";
      v42 = MEMORY[0x1E695DF20];
      v43 = &v78;
      v44 = &v77;
    }

    v19 = [v42 dictionaryWithObjects:v43 forKeys:v44 count:1];
    v21 = [v41 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:5001 userInfo:v19];
    (v15)[2](v15, v21);
LABEL_33:

    goto LABEL_34;
  }

  v38 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
  {
    v51 = self->_uuid;
    *buf = 136315394;
    v80 = "[UAFAutoAssetSet mapAsset:queue:completion:]";
    v81 = 2114;
    v82 = v51;
    _os_log_error_impl(&dword_1BCF2C000, v38, OS_LOG_TYPE_ERROR, "%s %{public}@: object has no atomic instance.  invalidate previously called?", buf, 0x16u);
  }

  v39 = MEMORY[0x1E696ABC0];
  v87 = *MEMORY[0x1E696A578];
  v88[0] = @"No atomic instance";
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v88 forKeys:&v87 count:1];
  v19 = [v39 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:5001 userInfo:v17];
  (v15)[2](v15, v19);
LABEL_34:

  v50 = *MEMORY[0x1E69E9840];
}

void __45__UAFAutoAssetSet_mapAsset_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __45__UAFAutoAssetSet_mapAsset_queue_completion___block_invoke_2;
    v6[3] = &unk_1E7FFD940;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __45__UAFAutoAssetSet_mapAsset_queue_completion___block_invoke_334(uint64_t a1, void *a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(*(a1 + 32) + 32);
    v12 = [v8 assetSpecifier];
    v14 = 136316162;
    v15 = "[UAFAutoAssetSet mapAsset:queue:completion:]_block_invoke";
    v16 = 2114;
    v17 = v11;
    v18 = 2114;
    v19 = v12;
    v20 = 2114;
    v21 = v7;
    v22 = 2114;
    v23 = v9;
    _os_log_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_DEFAULT, "%s %{public}@: Mapped specifier %{public}@ from atomic instance %{public}@ with error: %{public}@", &v14, 0x34u);
  }

  (*(*(a1 + 40) + 16))();
  v13 = *MEMORY[0x1E69E9840];
}

@end