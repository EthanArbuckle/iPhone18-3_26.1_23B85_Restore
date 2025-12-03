@interface UAFAssetSet
+ (id)autoAssetSet:(id)set usages:(id)usages uuid:(id)uuid autoAssets:(id)assets experiment:(id)experiment atomicInstance:(id)instance error:(id *)error;
+ (id)autoAssets:(id)assets usages:(id)usages;
- (UAFAssetSet)initWithAssetSet:(id)set usages:(id)usages configurationDirURLs:(id)ls disableExperimentation:(BOOL)experimentation consistencyToken:(id)token;
- (id)applyAssetTransformations:(id)transformations;
- (id)applyMinVersions:(id)versions;
- (id)applyOSCompatibility:(id)compatibility;
- (id)assetNamed:(id)named;
- (id)assetNamed:(id)named withUsage:(id)usage disableExperimentation:(BOOL)experimentation;
- (id)assetSetIdForSELF:(BOOL)f stagedDuringSU:(BOOL *)u;
- (id)createAssetFromMAAsset:(id)asset assetName:(id)name experimentationEnabled:(BOOL)enabled experimentId:(id)id;
- (id)createAssets;
- (id)getAutoAssetPreinstalled;
- (id)overlayRoots:(id)roots;
- (void)dealloc;
- (void)invalidateWithQueue:(id)queue completion:(id)completion;
- (void)mapAsset:(id)asset queue:(id)queue completion:(id)completion;
@end

@implementation UAFAssetSet

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    uuid = self->_uuid;
    *buf = 136315394;
    v8 = "[UAFAssetSet dealloc]";
    v9 = 2114;
    v10 = uuid;
    _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s %{public}@: Asset set dealloc'd", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = UAFAssetSet;
  [(UAFAssetSet *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (id)createAssets
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = UAFGetLogCategory(&UAFLogContextClient);
  v4 = os_signpost_id_generate(v3);

  v5 = UAFGetLogCategory(&UAFLogContextClient);
  v6 = v5;
  v7 = v4 - 1;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    uuid = self->_uuid;
    v26 = 138543362;
    v27 = uuid;
    _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "createAssets", "%{public}@", &v26, 0xCu);
  }

  v9 = objc_autoreleasePoolPush();
  autoAssetSet = self->_autoAssetSet;
  if (autoAssetSet)
  {
    assets = [(UAFAutoAssetSet *)autoAssetSet assets];
  }

  else
  {
    assets = 0;
  }

  if ([assets count])
  {
    v12 = [(UAFAssetSet *)self applyAssetTransformations:assets];
    v13 = UAFGetLogCategory(&UAFLogContextClient);
    v14 = v13;
    if (v7 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      v15 = self->_uuid;
      v26 = 138543362;
      v27 = v15;
      _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v14, OS_SIGNPOST_INTERVAL_END, v4, "createAssets", "%{public}@", &v26, 0xCu);
    }

    if ([v12 count])
    {
      v16 = v12;
    }

    else
    {
      v16 = 0;
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v17 = objc_opt_new();
    v12 = [(UAFAssetSet *)self applyAssetTransformations:v17];

    objc_autoreleasePoolPop(v9);
    v18 = UAFGetLogCategory(&UAFLogContextClient);
    v19 = v18;
    if (v7 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      v20 = self->_uuid;
      v26 = 138543362;
      v27 = v20;
      _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v19, OS_SIGNPOST_INTERVAL_END, v4, "createAssets", "%{public}@", &v26, 0xCu);
    }

    if ([v12 count])
    {
      v21 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = self->_uuid;
        v23 = [v12 count];
        v26 = 136315650;
        v27 = "[UAFAssetSet createAssets]";
        v28 = 2114;
        v29 = v22;
        v30 = 1024;
        v31 = v23;
        _os_log_impl(&dword_1BCF2C000, v21, OS_LOG_TYPE_DEFAULT, "%s %{public}@: Returning %d transformed asset(s)", &v26, 0x1Cu);
      }

      v12 = v12;
      v16 = v12;
    }

    else
    {
      v16 = 0;
    }
  }

  v24 = *MEMORY[0x1E69E9840];

  return v16;
}

+ (id)autoAssets:(id)assets usages:(id)usages
{
  v19 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  usagesCopy = usages;
  autoAssetType = [assetsCopy autoAssetType];

  if (autoAssetType)
  {
    v8 = [assetsCopy getAutoAssets:usagesCopy];
    v9 = v8;
    if (v8 && [v8 count])
    {
      v9 = v9;
      v10 = v9;
      goto LABEL_10;
    }

    name2 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(name2, OS_LOG_TYPE_DEBUG))
    {
      name = [assetsCopy name];
      v15 = 136315394;
      v16 = "+[UAFAssetSet autoAssets:usages:]";
      v17 = 2114;
      v18 = name;
      _os_log_debug_impl(&dword_1BCF2C000, name2, OS_LOG_TYPE_DEBUG, "%s No Auto assets defined for %{public}@", &v15, 0x16u);
    }
  }

  else
  {
    v9 = UAFGetLogCategory(&UAFLogContextClient);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    name2 = [assetsCopy name];
    v15 = 136315394;
    v16 = "+[UAFAssetSet autoAssets:usages:]";
    v17 = 2114;
    v18 = name2;
    _os_log_debug_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_DEBUG, "%s Auto asset type not specified for %{public}@", &v15, 0x16u);
  }

LABEL_9:
  v10 = 0;
LABEL_10:

  v12 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)autoAssetSet:(id)set usages:(id)usages uuid:(id)uuid autoAssets:(id)assets experiment:(id)experiment atomicInstance:(id)instance error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  setCopy = set;
  uuidCopy = uuid;
  instanceCopy = instance;
  experimentCopy = experiment;
  assetsCopy = assets;
  v18 = UAFGetLogCategory(&UAFLogContextClient);
  v19 = os_signpost_id_generate(v18);

  v20 = UAFGetLogCategory(&UAFLogContextClient);
  v21 = v20;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    name = [setCopy name];
    v31 = 138543618;
    v32 = uuidCopy;
    v33 = 2114;
    v34 = name;
    _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "AutoAsset Assets", "%{public}@:%{public}@", &v31, 0x16u);
  }

  if (error)
  {
    *error = 0;
  }

  v23 = [UAFAutoAssetSet alloc];
  name2 = [setCopy name];
  v25 = [(UAFAutoAssetSet *)v23 initWithAssetSetName:name2 autoAssets:assetsCopy uuid:uuidCopy experiment:experimentCopy atomicInstance:instanceCopy error:error];

  v26 = UAFGetLogCategory(&UAFLogContextClient);
  v27 = v26;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    name3 = [setCopy name];
    v31 = 138543618;
    v32 = uuidCopy;
    v33 = 2114;
    v34 = name3;
    _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v27, OS_SIGNPOST_INTERVAL_END, v19, "AutoAsset Assets", "%{public}@:%{public}@", &v31, 0x16u);
  }

  v29 = *MEMORY[0x1E69E9840];

  return v25;
}

- (UAFAssetSet)initWithAssetSet:(id)set usages:(id)usages configurationDirURLs:(id)ls disableExperimentation:(BOOL)experimentation consistencyToken:(id)token
{
  experimentationCopy = experimentation;
  v134 = *MEMORY[0x1E69E9840];
  setCopy = set;
  usagesCopy = usages;
  lsCopy = ls;
  tokenCopy = token;
  v125.receiver = self;
  v125.super_class = UAFAssetSet;
  v17 = [(UAFAssetSet *)&v125 init];
  if (v17)
  {
    v122 = usagesCopy;
    v123 = lsCopy;
    v18 = UAFGetLogCategory(&UAFLogContextClient);
    v19 = os_signpost_id_generate(v18);

    v20 = UAFGetLogCategory(&UAFLogContextClient);
    v21 = v20;
    spid = v19;
    v22 = v19 - 1;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      uuid = v17->_uuid;
      *buf = 138543362;
      v127 = uuid;
      _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "AssetSet init", "%{public}@", buf, 0xCu);
    }

    objc_storeStrong(&v17->_name, set);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v25 = v17->_uuid;
    v17->_uuid = uUID;

    *&v17->_rootsPresent = 0;
    v26 = UAFGetLogCategory(&UAFLogContextClient);
    v27 = v26;
    lsCopy = v123;
    if (v22 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      v28 = v17->_uuid;
      *buf = 138543362;
      v127 = v28;
      _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v19, "AssetSet Configuration", "%{public}@", buf, 0xCu);
    }

    v29 = +[UAFConfigurationManager defaultManager];
    if (v123)
    {
      v30 = [[UAFConfigurationManager alloc] initWithURLs:v123];

      v29 = v30;
    }

    v31 = [v29 getAssetSet:setCopy];
    cfg = v17->_cfg;
    v17->_cfg = v31;

    if (!v17->_cfg)
    {
      v38 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v127 = "[UAFAssetSet initWithAssetSet:usages:configurationDirURLs:disableExperimentation:consistencyToken:]";
        v128 = 2114;
        v129 = setCopy;
        _os_log_error_impl(&dword_1BCF2C000, v38, OS_LOG_TYPE_ERROR, "%s Could not init asset set %{public}@", buf, 0x16u);
      }

      v39 = UAFGetLogCategory(&UAFLogContextClient);
      v40 = v39;
      if (v22 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
      {
        v41 = v17->_uuid;
        *buf = 138543362;
        v127 = v41;
        _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v40, OS_SIGNPOST_INTERVAL_END, v19, "AssetSet Configuration", "%{public}@", buf, 0xCu);
      }

      v42 = UAFGetLogCategory(&UAFLogContextClient);
      v43 = v42;
      if (v22 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v42))
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    v33 = [v29 minVersions:setCopy];
    minVersions = v17->_minVersions;
    v17->_minVersions = v33;

    v35 = [(UAFAssetSetConfiguration *)v17->_cfg getAutoAssets:v122];
    assetNameToAutoAsset = v17->_assetNameToAutoAsset;
    v17->_assetNameToAutoAsset = v35;

    if (experimentationCopy)
    {
      v17->_experimentationEnabled = 0;
    }

    else
    {
      experimentalAssets = [(UAFAssetSetConfiguration *)v17->_cfg experimentalAssets];
      v17->_experimentationEnabled = experimentalAssets != 0;
    }

    v120 = setCopy;
    v45 = UAFGetLogCategory(&UAFLogContextClient);
    v46 = v45;
    if (v22 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
    {
      v47 = v17->_uuid;
      *buf = 138543362;
      v127 = v47;
      _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v46, OS_SIGNPOST_INTERVAL_END, v19, "AssetSet Configuration", "%{public}@", buf, 0xCu);
    }

    objc_storeStrong(&v17->_usages, usages);
    v48 = UAFGetLogCategory(&UAFLogContextClient);
    v49 = os_signpost_id_generate(v48);

    v50 = UAFGetLogCategory(&UAFLogContextClient);
    v51 = v50;
    v52 = v49 - 1;
    if (v49 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
    {
      v53 = v17->_uuid;
      *buf = 138543362;
      v127 = v53;
      _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v51, OS_SIGNPOST_INTERVAL_BEGIN, v49, "Lock AutoAssets", "%{public}@", buf, 0xCu);
    }

    v54 = tokenCopy != 0;
    if (tokenCopy)
    {
      lsCopy = v123;
      if (experimentationCopy)
      {
        experiment = [tokenCopy experiment];

        if (experiment)
        {
          v56 = UAFGetLogCategory(&UAFLogContextClient);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            v116 = v17->_uuid;
            *buf = 136315650;
            v127 = "[UAFAssetSet initWithAssetSet:usages:configurationDirURLs:disableExperimentation:consistencyToken:]";
            v128 = 2114;
            v129 = v116;
            v130 = 2112;
            v131 = tokenCopy;
            _os_log_error_impl(&dword_1BCF2C000, v56, OS_LOG_TYPE_ERROR, "%s %{public}@: Consistency Token %@ has an experiment in it but disableExperimentation is YES", buf, 0x20u);
          }

          v57 = UAFGetLogCategory(&UAFLogContextClient);
          v58 = v57;
          if (v52 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v57))
          {
            v59 = v17->_uuid;
            *buf = 138543362;
            v127 = v59;
            _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v58, OS_SIGNPOST_INTERVAL_END, v49, "Lock AutoAssets", "%{public}@", buf, 0xCu);
          }

          v60 = UAFGetLogCategory(&UAFLogContextClient);
          v43 = v60;
          if (v22 > 0xFFFFFFFFFFFFFFFDLL)
          {
            v37 = 0;
            setCopy = v120;
            goto LABEL_89;
          }

          setCopy = v120;
          if (!os_signpost_enabled(v60))
          {
LABEL_40:
            v37 = 0;
LABEL_89:

            usagesCopy = v122;
            goto LABEL_90;
          }

LABEL_39:
          v61 = v17->_uuid;
          *buf = 138543362;
          v127 = v61;
          _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v43, OS_SIGNPOST_INTERVAL_END, spid, "AssetSet init", "%{public}@", buf, 0xCu);
          goto LABEL_40;
        }
      }

      experiment2 = [tokenCopy experiment];
      experiment = v17->_experiment;
      v17->_experiment = experiment2;

      atomicInstance = [tokenCopy atomicInstance];
      if (!atomicInstance)
      {
        v54 = 0;
        v65 = 0;
        v118 = 0;
        v119 = 0;
LABEL_53:
        v17->_experimentationEnabled = v17->_experiment != 0;
        if ([(UAFAutoAssetSet *)v17->_autoAssetSet experimentActivated])
        {
          experimentId = [(UAFAssetSetExperiment *)v17->_experiment experimentId];
        }

        else
        {
          experimentId = &stru_1F3B6B510;
        }

        lsCopy = v123;
        experimentId = v17->_experimentId;
        v17->_experimentId = &experimentId->isa;

        v86 = UAFGetLogCategory(&UAFLogContextClient);
        v87 = v86;
        if (v52 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v86))
        {
          v88 = v17->_uuid;
          *buf = 138543362;
          v127 = v88;
          _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v87, OS_SIGNPOST_INTERVAL_END, v49, "Lock AutoAssets", "%{public}@", buf, 0xCu);
        }

        v89 = !v54;
        if (!tokenCopy)
        {
          v89 = 1;
        }

        if ((v89 & 1) != 0 || v17->_autoAssetSet)
        {
          v90 = objc_autoreleasePoolPush();
          v91 = [UAFPreinstalledAssetsCache summary:v17->_cfg];
          if (tokenCopy && ([tokenCopy preinstalledAssetsSummary], v92 = objc_claimAutoreleasedReturnValue(), v92, v92) && (!v91 || (objc_msgSend(tokenCopy, "preinstalledAssetsSummary"), v93 = objc_claimAutoreleasedReturnValue(), v94 = objc_msgSend(v93, "isEqualToSet:", v91), v93, (v94 & 1) == 0)))
          {
            v109 = UAFGetLogCategory(&UAFLogContextClient);
            if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
            {
              v117 = v17->_uuid;
              *buf = 136315906;
              v127 = "[UAFAssetSet initWithAssetSet:usages:configurationDirURLs:disableExperimentation:consistencyToken:]";
              v128 = 2114;
              v129 = v117;
              v130 = 2112;
              v131 = tokenCopy;
              v132 = 2112;
              p_super = v91;
              _os_log_error_impl(&dword_1BCF2C000, v109, OS_LOG_TYPE_ERROR, "%s %{public}@: Consistency Token %@ does not match installed roots %@", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v90);
            v37 = 0;
            v43 = v119;
            setCopy = v120;
            lsCopy = v123;
          }

          else
          {
            if (v65)
            {
              v95 = [UAFAssetSetConsistencyToken alloc];
              name = v17->_name;
              atomicInstance2 = [(UAFAutoAssetSet *)v17->_autoAssetSet atomicInstance];
              v98 = [(UAFAssetSetConsistencyToken *)v95 initWithUUID:0 assetSetName:name atomicInstance:atomicInstance2 experiment:v17->_experiment preinstalledAssetsSummary:v91];
            }

            else
            {
              v98 = tokenCopy;
            }

            objc_autoreleasePoolPop(v90);
            objc_storeStrong(&v17->_consistencyToken, v98);
            createAssets = [(UAFAssetSet *)v17 createAssets];
            assets = v17->_assets;
            v17->_assets = createAssets;

            v101 = v17->_experimentId;
            v43 = v119;
            if (v101 && ![(NSString *)v101 isEqualToString:&stru_1F3B6B510])
            {
              [(UAFAssetSetConsistencyToken *)v17->_consistencyToken setExperimentActivated:1];
            }

            v102 = UAFGetLogCategory(&UAFLogContextClient);
            lsCopy = v123;
            if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
            {
              v103 = v17->_uuid;
              usages = v17->_usages;
              v104 = v17->_name;
              *buf = 136315906;
              v127 = "[UAFAssetSet initWithAssetSet:usages:configurationDirURLs:disableExperimentation:consistencyToken:]";
              v128 = 2114;
              v129 = v103;
              v130 = 2114;
              v131 = v104;
              v132 = 2114;
              p_super = &usages->super;
              _os_log_impl(&dword_1BCF2C000, v102, OS_LOG_TYPE_DEFAULT, "%s %{public}@: Asset set initialized for %{public}@ with usages: %{public}@", buf, 0x2Au);
            }

            v106 = UAFGetLogCategory(&UAFLogContextClient);
            v107 = v106;
            if (v22 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v106))
            {
              v108 = v17->_uuid;
              *buf = 138543362;
              v127 = v108;
              _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v107, OS_SIGNPOST_INTERVAL_END, spid, "AssetSet init", "%{public}@", buf, 0xCu);
            }

            v37 = v17;
            setCopy = v120;
          }
        }

        else
        {
          v110 = UAFGetLogCategory(&UAFLogContextClient);
          v43 = v119;
          setCopy = v120;
          if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v127 = "[UAFAssetSet initWithAssetSet:usages:configurationDirURLs:disableExperimentation:consistencyToken:]";
            v128 = 2114;
            v129 = v120;
            v130 = 2114;
            v131 = tokenCopy;
            v132 = 2114;
            p_super = v119;
            _os_log_error_impl(&dword_1BCF2C000, v110, OS_LOG_TYPE_ERROR, "%s Could not init asset set %{public}@ with consistency token %{public}@: %{public}@", buf, 0x2Au);
          }

          v111 = UAFGetLogCategory(&UAFLogContextClient);
          v112 = v111;
          if (v22 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v111))
          {
            v113 = v17->_uuid;
            *buf = 138543362;
            v127 = v113;
            _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v112, OS_SIGNPOST_INTERVAL_END, spid, "AssetSet init", "%{public}@", buf, 0xCu);
          }

          v37 = 0;
        }

        goto LABEL_89;
      }

LABEL_52:
      v65 = tokenCopy == 0;
      v76 = v17->_cfg;
      v77 = v17->_usages;
      v78 = v17->_uuid;
      v79 = v17->_assetNameToAutoAsset;
      v80 = v17->_experiment;
      v124 = 0;
      v118 = atomicInstance;
      v81 = [UAFAssetSet autoAssetSet:v76 usages:v77 uuid:v78 autoAssets:v79 experiment:v80 atomicInstance:atomicInstance error:&v124];
      v82 = v124;
      v119 = v124;
      autoAssetSet = v17->_autoAssetSet;
      v17->_autoAssetSet = v81;

      objc_storeStrong(&v17->_autoAssetSetError, v82);
      goto LABEL_53;
    }

    experimentalAssets2 = [(UAFAssetSetConfiguration *)v17->_cfg experimentalAssets];

    if (experimentalAssets2)
    {
      if (!experimentationCopy)
      {
        v73 = [UAFAssetSetExperiment alloc];
        experimentalAssets3 = [(UAFAssetSetConfiguration *)v17->_cfg experimentalAssets];
        v74 = [(UAFAssetSetExperiment *)v73 initWithConfiguration:experimentalAssets3 uuid:v17->_uuid];
        v75 = v17->_experiment;
        v17->_experiment = v74;

        goto LABEL_51;
      }

      experimentalAssets3 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(experimentalAssets3, OS_LOG_TYPE_DEFAULT))
      {
        v68 = v17->_uuid;
        v69 = v17->_name;
        *buf = 136315650;
        v127 = "[UAFAssetSet initWithAssetSet:usages:configurationDirURLs:disableExperimentation:consistencyToken:]";
        v128 = 2114;
        v129 = v68;
        v130 = 2114;
        v131 = v69;
        v70 = "%s %{public}@: Experimentation not enabled for asset set %{public}@";
LABEL_49:
        _os_log_impl(&dword_1BCF2C000, experimentalAssets3, OS_LOG_TYPE_DEFAULT, v70, buf, 0x20u);
      }
    }

    else
    {
      experimentalAssets3 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(experimentalAssets3, OS_LOG_TYPE_DEFAULT))
      {
        v71 = v17->_uuid;
        v72 = v17->_name;
        *buf = 136315650;
        v127 = "[UAFAssetSet initWithAssetSet:usages:configurationDirURLs:disableExperimentation:consistencyToken:]";
        v128 = 2114;
        v129 = v71;
        v130 = 2114;
        v131 = v72;
        v70 = "%s %{public}@: No experimental assets for asset set %{public}@";
        goto LABEL_49;
      }
    }

LABEL_51:

    atomicInstance = 0;
    goto LABEL_52;
  }

  v37 = 0;
LABEL_90:

  v114 = *MEMORY[0x1E69E9840];
  return v37;
}

- (id)createAssetFromMAAsset:(id)asset assetName:(id)name experimentationEnabled:(BOOL)enabled experimentId:(id)id
{
  enabledCopy = enabled;
  assetCopy = asset;
  v10 = MEMORY[0x1E695DF90];
  idCopy = id;
  nameCopy = name;
  dictionary = [v10 dictionary];
  assetId = [assetCopy assetId];
  [dictionary setObject:assetId forKeyedSubscript:@"com.apple.UnifiedAssetFramework.AssetId"];

  assetType = [assetCopy assetType];
  [dictionary setObject:assetType forKeyedSubscript:@"com.apple.UnifiedAssetFramework.AssetType"];

  [dictionary setObject:@"0" forKeyedSubscript:@"com.apple.UnifiedAssetFramework.ReportedDownloadSize"];
  attributes = [assetCopy attributes];
  v32 = MEMORY[0x1E69E9820];
  v33 = 3221225472;
  v34 = __84__UAFAssetSet_createAssetFromMAAsset_assetName_experimentationEnabled_experimentId___block_invoke;
  v35 = &unk_1E7FFEAD8;
  v17 = dictionary;
  v36 = v17;
  v18 = assetCopy;
  v37 = v18;
  [attributes enumerateKeysAndObjectsUsingBlock:&v32];

  attributes2 = [v18 attributes];
  v20 = [attributes2 objectForKeyedSubscript:@"isRoot"];
  if (!v20)
  {

LABEL_5:
    if ([v18 wasPreinstalled])
    {
      [v17 setObject:@"YES" forKeyedSubscript:@"preinstalled"];
      v25 = kUAFAssetMetadataSourceFactoryValue;
    }

    else
    {
      v25 = kUAFAssetMetadataSourceUnknownValue;
    }

    goto LABEL_8;
  }

  v21 = v20;
  attributes3 = [v18 attributes];
  v23 = [attributes3 objectForKeyedSubscript:@"isRoot"];
  v24 = [v23 isEqualToString:@"1"];

  if ((v24 & 1) == 0)
  {
    goto LABEL_5;
  }

  v25 = kUAFAssetMetadataSourceRootValue;
LABEL_8:
  [v17 setObject:*v25 forKeyedSubscript:@"com.apple.UnifiedAssetFramework.Source"];
  if (enabledCopy)
  {
    v26 = @"YES";
  }

  else
  {
    v26 = @"NO";
  }

  [v17 setObject:v26 forKeyedSubscript:@"ExperimentationEnabled"];
  if (idCopy)
  {
    v27 = idCopy;
  }

  else
  {
    v27 = &stru_1F3B6B510;
  }

  [v17 setObject:v27 forKeyedSubscript:@"ExperimentId"];

  v28 = [UAFAsset alloc];
  getLocalFileUrl = [v18 getLocalFileUrl];
  v30 = [(UAFAsset *)v28 initWithName:nameCopy location:getLocalFileUrl metadata:v17];

  return v30;
}

void __84__UAFAssetSet_createAssetFromMAAsset_assetName_experimentationEnabled_experimentId___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [*(a1 + 40) attributes];
    v8 = [v7 objectForKeyedSubscript:v9];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v9];
  }
}

- (id)assetNamed:(id)named
{
  v31 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  assets = self->_assets;
  if (assets)
  {
    v6 = [(NSDictionary *)assets objectForKeyedSubscript:namedCopy];
    v7 = v6;
    if (!v6)
    {
      v11 = @"none";
      goto LABEL_12;
    }

    metadata = [v6 metadata];
    v9 = [metadata objectForKeyedSubscript:@"com.apple.UnifiedAssetFramework.Source"];

    if (v9)
    {
      metadata2 = [v7 metadata];
      v11 = [metadata2 objectForKeyedSubscript:@"com.apple.UnifiedAssetFramework.Source"];
    }

    else
    {
      v11 = @"none";
    }

    location = [v7 location];
    if (!location || (v16 = location, v17 = [v7 isPresentOnDevice], v16, (v17 & 1) != 0))
    {
LABEL_12:
      v12 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        uuid = self->_uuid;
        v23 = 136315906;
        v24 = "[UAFAssetSet assetNamed:]";
        v25 = 2114;
        v26 = uuid;
        v27 = 2114;
        p_isa = &namedCopy->isa;
        v29 = 2114;
        v30 = v11;
        _os_log_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_DEFAULT, "%s %{public}@: Returning %{public}@ from source %{public}@", &v23, 0x2Au);
      }

      goto LABEL_17;
    }

    v19 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22 = self->_uuid;
      v23 = 136315906;
      v24 = "[UAFAssetSet assetNamed:]";
      v25 = 2114;
      v26 = v22;
      v27 = 2114;
      p_isa = &namedCopy->isa;
      v29 = 2114;
      v30 = v7;
      _os_log_error_impl(&dword_1BCF2C000, v19, OS_LOG_TYPE_ERROR, "%s %{public}@: Asset %{public}@ is not valid, returning nil instead of: %{public}@", &v23, 0x2Au);
    }

    v12 = v7;
    v7 = 0;
  }

  else
  {
    v12 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = self->_uuid;
      name = self->_name;
      v23 = 136315906;
      v24 = "[UAFAssetSet assetNamed:]";
      v25 = 2114;
      v26 = v13;
      v27 = 2114;
      p_isa = name;
      v29 = 2114;
      v30 = namedCopy;
      _os_log_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_DEFAULT, "%s %{public}@: No assets in asset set %{public}@ while querying %{public}@", &v23, 0x2Au);
    }

    v7 = 0;
    v11 = @"none";
  }

LABEL_17:

  v20 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)assetNamed:(id)named withUsage:(id)usage disableExperimentation:(BOOL)experimentation
{
  experimentationCopy = experimentation;
  v49 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  usageCopy = usage;
  v10 = objc_autoreleasePoolPush();
  if (experimentationCopy)
  {
    experimentationEnabled = 0;
    experimentId = 0;
  }

  else
  {
    experimentationEnabled = self->_experimentationEnabled;
    experimentId = self->_experimentId;
  }

  v13 = experimentId;
  if (!+[UAFPreinstalledAssetsCache isEnabled])
  {
    v15 = 0;
    goto LABEL_12;
  }

  v14 = [(UAFAssetSetConfiguration *)self->_cfg getAutoAssets:usageCopy];
  v15 = [v14 objectForKeyedSubscript:namedCopy];
  if (!v15 || ([(UAFAssetSet *)self createAssetFromPreinstalledWithAutoAssetInfo:v15 assetName:namedCopy experimentationEnabled:experimentationEnabled experimentId:v13], (v16 = objc_claimAutoreleasedReturnValue()) == 0))
  {

LABEL_12:
    v14 = [UAFAssetSet autoAssets:self->_cfg usages:usageCopy];
    if (!v14)
    {
      v20 = 0;
      goto LABEL_27;
    }

    v21 = self->_experiment;
    v22 = v21;
    if (experimentationCopy)
    {

      v22 = 0;
    }

    cachingAutoAssetSet = self->_cachingAutoAssetSet;
    if (cachingAutoAssetSet)
    {
      v24 = 0;
    }

    else
    {
      v37 = v13;
      v38 = v10;
      v39 = namedCopy;
      cfg = self->_cfg;
      uuid = self->_uuid;
      experiment = self->_experiment;
      atomicInstance = [(UAFAssetSetConsistencyToken *)self->_consistencyToken atomicInstance];
      v40 = 0;
      v29 = [UAFAssetSet autoAssetSet:cfg usages:usageCopy uuid:uuid autoAssets:0 experiment:experiment atomicInstance:atomicInstance error:&v40];
      v24 = v40;
      v30 = self->_cachingAutoAssetSet;
      self->_cachingAutoAssetSet = v29;

      cachingAutoAssetSet = self->_cachingAutoAssetSet;
      if (!cachingAutoAssetSet)
      {
        v32 = UAFGetLogCategory(&UAFLogContextClient);
        namedCopy = v39;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v35 = self->_uuid;
          name = [(UAFAssetSetConfiguration *)self->_cfg name];
          *buf = 136315906;
          v42 = "[UAFAssetSet assetNamed:withUsage:disableExperimentation:]";
          v43 = 2114;
          v44 = v35;
          v45 = 2114;
          v46 = name;
          v47 = 2114;
          v48 = v24;
          _os_log_error_impl(&dword_1BCF2C000, v32, OS_LOG_TYPE_ERROR, "%s %{public}@: Auto assets for Asset %{public}@ cannot be locked:%{public}@", buf, 0x2Au);
        }

        v20 = 0;
        v13 = v37;
        v10 = v38;
        goto LABEL_26;
      }

      v10 = v38;
      namedCopy = v39;
      v13 = v37;
    }

    v31 = [(UAFAutoAssetSet *)cachingAutoAssetSet assetWithName:namedCopy autoAssets:v14 experiment:v22];
    if (v31)
    {
      v20 = v31;
    }

    else
    {
      v20 = 0;
    }

LABEL_26:

    goto LABEL_27;
  }

  v17 = v16;
  v18 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = self->_uuid;
    *buf = 136315650;
    v42 = "[UAFAssetSet assetNamed:withUsage:disableExperimentation:]";
    v43 = 2114;
    v44 = v19;
    v45 = 2114;
    v46 = namedCopy;
    _os_log_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_DEFAULT, "%s %{public}@: Returning %{public}@ from MA Root", buf, 0x20u);
  }

  v20 = v17;
LABEL_27:

  objc_autoreleasePoolPop(v10);
  v33 = *MEMORY[0x1E69E9840];

  return v20;
}

- (id)assetSetIdForSELF:(BOOL)f stagedDuringSU:(BOOL *)u
{
  v25 = *MEMORY[0x1E69E9840];
  if (self->_factoryAssetsPresent)
  {
    catalogAssetSetID = @"Factory";
    goto LABEL_19;
  }

  fCopy = f;
  autoAssetType = [(UAFAssetSetConfiguration *)self->_cfg autoAssetType];

  if (!autoAssetType)
  {
LABEL_12:
    catalogAssetSetID = 0;
    goto LABEL_19;
  }

  if (!fCopy)
  {
    autoAssetSet = self->_autoAssetSet;
    if (autoAssetSet)
    {
      catalogAssetSetID = [(UAFAutoAssetSet *)autoAssetSet catalogAssetSetID];
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  v9 = [UAFAutoAssetSet autoAssetSetStatus:self->_name];
  downloadedCatalogCachedAssetSetID = [v9 downloadedCatalogCachedAssetSetID];
  catalogAssetSetID = downloadedCatalogCachedAssetSetID;
  if (!downloadedCatalogCachedAssetSetID)
  {
    v12 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uuid = self->_uuid;
      name = self->_name;
      v19 = 136315650;
      v20 = "[UAFAssetSet assetSetIdForSELF:stagedDuringSU:]";
      v21 = 2114;
      v22 = uuid;
      v23 = 2114;
      v24 = name;
      _os_log_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_DEFAULT, "%s %{public}@: MA AutoAssetSet's downloadedCatalogCachedAssetSetID is nil for asset set - %{public}@", &v19, 0x20u);
    }

    goto LABEL_15;
  }

  if ([(__CFString *)downloadedCatalogCachedAssetSetID isEqualToString:self->_name])
  {
    v11 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v19 = 136315138;
      v20 = "[UAFAssetSet assetSetIdForSELF:stagedDuringSU:]";
      _os_log_fault_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_FAULT, "%s MA AutoAssetSet's assetSetID is same as assetSetName", &v19, 0xCu);
    }

    v12 = UAFGetLogCategory(&UAFLogContextClient);
    UAFFaultCapture(v12, kUAFABCMissingAssetSetIDFailure, self->_name, 0);
LABEL_15:
  }

  if (u)
  {
    *u = [v9 latestDownloadedAtomicInstanceFromPreSUStaging];
  }

LABEL_19:
  if (self->_rootsPresent)
  {
    v16 = [(__CFString *)catalogAssetSetID stringByAppendingString:@"+roots", u];

    catalogAssetSetID = v16;
  }

  v17 = *MEMORY[0x1E69E9840];

  return catalogAssetSetID;
}

- (id)applyOSCompatibility:(id)compatibility
{
  v80 = *MEMORY[0x1E69E9840];
  compatibilityCopy = compatibility;
  metadataAsset = [(UAFAssetSetConfiguration *)self->_cfg metadataAsset];
  if (!metadataAsset)
  {
    goto LABEL_10;
  }

  v6 = metadataAsset;
  metadataAsset2 = [(UAFAssetSetConfiguration *)self->_cfg metadataAsset];
  v8 = [compatibilityCopy objectForKeyedSubscript:metadataAsset2];
  if (!v8)
  {

    goto LABEL_10;
  }

  v9 = v8;
  metadataAsset3 = [(UAFAssetSetConfiguration *)self->_cfg metadataAsset];
  [compatibilityCopy objectForKeyedSubscript:metadataAsset3];
  v11 = v61 = self;
  location = [v11 location];

  selfCopy3 = self;
  if (!location)
  {
LABEL_10:
    v22 = compatibilityCopy;
    goto LABEL_36;
  }

  metadataAsset4 = [(UAFAssetSetConfiguration *)self->_cfg metadataAsset];
  v15 = [compatibilityCopy objectForKeyedSubscript:metadataAsset4];
  location2 = [v15 location];
  v66 = 0;
  v17 = [UAFAssetSetMetadata fromAssetDir:location2 error:&v66];
  v18 = v66;

  if (v17)
  {
    if (![v17 OSSupported:self->_cfg])
    {
      thirdPartyCompatibilityVersion = [v17 thirdPartyCompatibilityVersion];
      v59 = v18;
      if (thirdPartyCompatibilityVersion)
      {
        v20 = thirdPartyCompatibilityVersion;
        minOSVersion = [v17 minOSVersion];
        if (minOSVersion)
        {
        }

        else
        {
          maxOSVersion = [v17 maxOSVersion];

          if (!maxOSVersion)
          {
            v25 = UAFGetLogCategory(&UAFLogContextClient);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              uuid = self->_uuid;
              name = [(UAFAssetSetConfiguration *)self->_cfg name];
              thirdPartyCompatibilityVersion2 = [v17 thirdPartyCompatibilityVersion];
              v51 = [UAFAssetSetMetadata OSThirdPartyCompatibilityVersion:self->_cfg];
              *buf = 136316162;
              v69 = "[UAFAssetSet applyOSCompatibility:]";
              v70 = 2114;
              v71 = uuid;
              selfCopy3 = self;
              v72 = 2114;
              v73 = name;
              v74 = 2114;
              v75 = thirdPartyCompatibilityVersion2;
              v76 = 2114;
              v77 = v51;
              _os_log_impl(&dword_1BCF2C000, v25, OS_LOG_TYPE_DEFAULT, "%s %{public}@: Asset set %{public}@ with third party compatibility version %{public}@ incompatible with current compatibility version %{public}@", buf, 0x34u);
            }

            goto LABEL_18;
          }
        }
      }

      v25 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = self->_uuid;
        name2 = [(UAFAssetSetConfiguration *)self->_cfg name];
        minOSVersion2 = [v17 minOSVersion];
        maxOSVersion2 = [v17 maxOSVersion];
        v30 = +[UAFAssetSetMetadata OSVersion];
        *buf = 136316418;
        v69 = "[UAFAssetSet applyOSCompatibility:]";
        v70 = 2114;
        v71 = v26;
        v72 = 2114;
        v73 = name2;
        v74 = 2114;
        v75 = minOSVersion2;
        v76 = 2114;
        v77 = maxOSVersion2;
        v78 = 2114;
        v79 = v30;
        _os_log_impl(&dword_1BCF2C000, v25, OS_LOG_TYPE_DEFAULT, "%s %{public}@: Asset set %{public}@ with minOSVersion %{public}@ and maxOSVersion %{public}@ incompatible with current OS Version %{public}@", buf, 0x3Eu);

        selfCopy3 = self;
      }

LABEL_18:
      v60 = v17;

      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      assets = [(UAFAssetSetConfiguration *)selfCopy3->_cfg assets];
      v32 = [assets countByEnumeratingWithState:&v62 objects:v67 count:16];
      if (v32)
      {
        v33 = v32;
        v22 = 0;
        v34 = *v63;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v63 != v34)
            {
              objc_enumerationMutation(assets);
            }

            v36 = *(*(&v62 + 1) + 8 * i);
            if ([v36 ignoreOSCompatibility])
            {
              name3 = [v36 name];
              v38 = [compatibilityCopy objectForKeyedSubscript:name3];

              if (v38)
              {
                if (!v22)
                {
                  v22 = objc_opt_new();
                }

                name4 = [v36 name];
                v40 = [compatibilityCopy objectForKeyedSubscript:name4];
                name5 = [v36 name];
                [v22 setObject:v40 forKeyedSubscript:name5];

                v42 = UAFGetLogCategory(&UAFLogContextClient);
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                {
                  v43 = v61->_uuid;
                  name6 = [v36 name];
                  name7 = [(UAFAssetSetConfiguration *)v61->_cfg name];
                  *buf = 136315906;
                  v69 = "[UAFAssetSet applyOSCompatibility:]";
                  v70 = 2114;
                  v71 = v43;
                  v72 = 2114;
                  v73 = name6;
                  v74 = 2114;
                  v75 = name7;
                  _os_log_impl(&dword_1BCF2C000, v42, OS_LOG_TYPE_DEFAULT, "%s %{public}@: Asset %{public}@ in asset set %{public}@ included as it ignores OS compatibility", buf, 0x2Au);
                }
              }
            }
          }

          v33 = [assets countByEnumeratingWithState:&v62 objects:v67 count:16];
        }

        while (v33);
      }

      else
      {
        v22 = 0;
      }

      v18 = v59;
      v17 = v60;
      goto LABEL_35;
    }
  }

  else
  {
    v23 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v52 = v18;
      v53 = self->_uuid;
      metadataAsset5 = [(UAFAssetSetConfiguration *)self->_cfg metadataAsset];
      name8 = [(UAFAssetSetConfiguration *)self->_cfg name];
      metadataAsset6 = [(UAFAssetSetConfiguration *)self->_cfg metadataAsset];
      v57 = [compatibilityCopy objectForKeyedSubscript:metadataAsset6];
      location3 = [v57 location];
      *buf = 136316418;
      v69 = "[UAFAssetSet applyOSCompatibility:]";
      v70 = 2114;
      v71 = v53;
      v18 = v52;
      v72 = 2114;
      v73 = metadataAsset5;
      v74 = 2114;
      v75 = name8;
      v76 = 2112;
      v77 = location3;
      v78 = 2114;
      v79 = v52;
      _os_log_error_impl(&dword_1BCF2C000, v23, OS_LOG_TYPE_ERROR, "%s %{public}@: Failed to load asset set metadata from asset %{public}@ in asset set %{public}@ at location %@: %{public}@", buf, 0x3Eu);
    }
  }

  v22 = compatibilityCopy;
LABEL_35:

LABEL_36:
  v46 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)applyMinVersions:(id)versions
{
  v55 = *MEMORY[0x1E69E9840];
  versionsCopy = versions;
  v5 = UAFGetLogCategory(&UAFLogContextClient);
  v6 = os_signpost_id_generate(v5);

  v7 = UAFGetLogCategory(&UAFLogContextClient);
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    uuid = self->_uuid;
    *buf = 138543362;
    v45 = uuid;
    _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "Min Versions", "%{public}@", buf, 0xCu);
  }

  if (self->_minVersions)
  {
    spid = v6;
    v35 = v6 - 1;
    v37 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v36 = versionsCopy;
    v10 = versionsCopy;
    v39 = [v10 countByEnumeratingWithState:&v40 objects:v54 count:16];
    if (v39)
    {
      v38 = *v41;
      do
      {
        for (i = 0; i != v39; ++i)
        {
          if (*v41 != v38)
          {
            objc_enumerationMutation(v10);
          }

          v12 = *(*(&v40 + 1) + 8 * i);
          v13 = [v10 objectForKeyedSubscript:v12];
          v14 = [(NSDictionary *)self->_minVersions objectForKeyedSubscript:v12];
          if (!v14)
          {
            goto LABEL_12;
          }

          v15 = v14;
          metadata = [v13 metadata];
          v17 = [metadata objectForKeyedSubscript:@"version"];
          [(NSDictionary *)self->_minVersions objectForKeyedSubscript:v12];
          v19 = v18 = self;
          v20 = [UAFPlatform compareVersion:v17 with:v19];

          self = v18;
          if (v20 == -1)
          {
            v21 = UAFGetLogCategory(&UAFLogContextClient);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = v18->_uuid;
              metadata2 = [v13 metadata];
              v24 = [metadata2 objectForKeyedSubscript:@"version"];
              v25 = [(NSDictionary *)v18->_minVersions objectForKeyedSubscript:v12];
              *buf = 136316162;
              v45 = "[UAFAssetSet applyMinVersions:]";
              v46 = 2114;
              v47 = v22;
              v48 = 2112;
              v49 = v12;
              v50 = 2112;
              v51 = v24;
              v52 = 2112;
              v53 = v25;
              _os_log_impl(&dword_1BCF2C000, v21, OS_LOG_TYPE_DEFAULT, "%s %{public}@: Not included %@ as it's version %@ is less than the required minimum %@", buf, 0x34u);

              self = v18;
            }
          }

          else
          {
LABEL_12:
            [v37 setObject:v13 forKeyedSubscript:v12];
          }
        }

        v39 = [v10 countByEnumeratingWithState:&v40 objects:v54 count:16];
      }

      while (v39);
    }

    v26 = UAFGetLogCategory(&UAFLogContextClient);
    v27 = v26;
    if (v35 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
    {
      v28 = self->_uuid;
      *buf = 138543362;
      v45 = v28;
      _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v27, OS_SIGNPOST_INTERVAL_END, spid, "Min Versions", "%{public}@", buf, 0xCu);
    }

    versionsCopy = v36;
  }

  else
  {
    v29 = UAFGetLogCategory(&UAFLogContextClient);
    v30 = v29;
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
    {
      v31 = self->_uuid;
      *buf = 138543362;
      v45 = v31;
      _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v30, OS_SIGNPOST_INTERVAL_END, v6, "Min Versions", "%{public}@", buf, 0xCu);
    }

    v37 = versionsCopy;
  }

  v32 = *MEMORY[0x1E69E9840];

  return v37;
}

- (id)overlayRoots:(id)roots
{
  v24 = *MEMORY[0x1E69E9840];
  rootsCopy = roots;
  preinstalledAssetsSummary = [(UAFAssetSetConsistencyToken *)self->_consistencyToken preinstalledAssetsSummary];

  if (preinstalledAssetsSummary && +[UAFPreinstalledAssetsCache isEnabled])
  {
    v6 = UAFGetLogCategory(&UAFLogContextClient);
    v7 = os_signpost_id_generate(v6);

    v8 = UAFGetLogCategory(&UAFLogContextClient);
    v9 = v8;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      uuid = self->_uuid;
      *buf = 138543362;
      v23 = uuid;
      _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Overlay Roots", "%{public}@", buf, 0xCu);
    }

    v11 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:rootsCopy];
    getAutoAssetPreinstalled = [(UAFAssetSet *)self getAutoAssetPreinstalled];
    v13 = getAutoAssetPreinstalled;
    if (getAutoAssetPreinstalled)
    {
      if ([getAutoAssetPreinstalled count])
      {
        self->_rootsPresent = 1;
      }

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __28__UAFAssetSet_overlayRoots___block_invoke;
      v19[3] = &unk_1E7FFEB00;
      v20 = v11;
      selfCopy = self;
      [v13 enumerateKeysAndObjectsUsingBlock:v19];
    }

    v14 = UAFGetLogCategory(&UAFLogContextClient);
    v15 = v14;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      v16 = self->_uuid;
      *buf = 138543362;
      v23 = v16;
      _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v15, OS_SIGNPOST_INTERVAL_END, v7, "Overlay Roots", "%{public}@", buf, 0xCu);
    }
  }

  else
  {
    v11 = rootsCopy;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v11;
}

void __28__UAFAssetSet_overlayRoots___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  [*(a1 + 32) setObject:a3 forKeyedSubscript:v5];
  v6 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(a1 + 40) + 56);
    v9 = 136315650;
    v10 = "[UAFAssetSet overlayRoots:]_block_invoke";
    v11 = 2114;
    v12 = v7;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_DEFAULT, "%s %{public}@: using autoasset root for %@", &v9, 0x20u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)applyAssetTransformations:(id)transformations
{
  v4 = [(UAFAssetSet *)self overlayRoots:transformations];
  v5 = [(UAFAssetSet *)self applyOSCompatibility:v4];

  v6 = [(UAFAssetSet *)self applyMinVersions:v5];

  return v6;
}

- (id)getAutoAssetPreinstalled
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  autoAssetType = [(UAFAssetSetConfiguration *)self->_cfg autoAssetType];

  if (!autoAssetType)
  {
    v31 = v3;
    goto LABEL_21;
  }

  assetNameToAutoAsset = self->_assetNameToAutoAsset;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __39__UAFAssetSet_getAutoAssetPreinstalled__block_invoke;
  v49[3] = &unk_1E7FFE450;
  v6 = v3;
  v50 = v6;
  selfCopy = self;
  [(NSDictionary *)assetNameToAutoAsset enumerateKeysAndObjectsUsingBlock:v49];
  if (!self->_experiment)
  {
    v32 = v6;
    goto LABEL_20;
  }

  [UAFPreinstalledAssetsCache assetSpecifiersFromRoots:self->_cfg];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v7 = v48 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (!v8)
  {
LABEL_15:

LABEL_16:
    v30 = v6;
    goto LABEL_17;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v46;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v46 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v45 + 1) + 8 * i);
      assetSpecifiers = [(UAFAssetSetExperiment *)self->_experiment assetSpecifiers];
      v15 = [assetSpecifiers objectForKeyedSubscript:v13];

      if (v15)
      {
        v16 = [v7 containsObject:v15];

        if (!v16)
        {
          goto LABEL_15;
        }

        v10 = 1;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v45 objects:v52 count:16];
  }

  while (v9);

  if ((v10 & 1) == 0)
  {
    goto LABEL_16;
  }

  v17 = objc_opt_new();
  v18 = self->_assetNameToAutoAsset;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __39__UAFAssetSet_getAutoAssetPreinstalled__block_invoke_2;
  v42[3] = &unk_1E7FFE450;
  v19 = v17;
  v43 = v19;
  selfCopy2 = self;
  [(NSDictionary *)v18 enumerateKeysAndObjectsUsingBlock:v42];
  v20 = objc_opt_new();
  v21 = self->_assetNameToAutoAsset;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __39__UAFAssetSet_getAutoAssetPreinstalled__block_invoke_3;
  v38[3] = &unk_1E7FFDF90;
  v39 = v19;
  v22 = v20;
  v40 = v22;
  selfCopy3 = self;
  v23 = v19;
  [(NSDictionary *)v21 enumerateKeysAndObjectsUsingBlock:v38];
  experimentId = [(UAFAssetSetExperiment *)self->_experiment experimentId];
  experimentId = self->_experimentId;
  self->_experimentId = experimentId;

  v26 = self->_assetNameToAutoAsset;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __39__UAFAssetSet_getAutoAssetPreinstalled__block_invoke_4;
  v35[3] = &unk_1E7FFE450;
  v36 = v22;
  v27 = v6;
  v37 = v27;
  v28 = v22;
  [(NSDictionary *)v26 enumerateKeysAndObjectsUsingBlock:v35];
  v29 = v27;

LABEL_17:
LABEL_20:

LABEL_21:
  v33 = *MEMORY[0x1E69E9840];

  return v3;
}

void __39__UAFAssetSet_getAutoAssetPreinstalled__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = v5[64];
  v7 = a2;
  v8 = [v5 createAssetFromPreinstalledWithAutoAssetInfo:a3 assetName:v7 experimentationEnabled:v6 experimentId:0];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
}

void __39__UAFAssetSet_getAutoAssetPreinstalled__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 objectForKeyedSubscript:@"AssetSpecifier"];
  if (v4)
  {
    v7 = v4;
    v5 = [*(*(a1 + 40) + 120) assetSpecifiers];
    v6 = [v5 objectForKeyedSubscript:v7];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];

    v4 = v7;
  }
}

void __39__UAFAssetSet_getAutoAssetPreinstalled__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a3];
  v6 = [v5 objectForKeyedSubscript:@"AssetSpecifier"];
  if (v6)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:v6];

    if (v7)
    {
      v8 = [*(a1 + 32) objectForKeyedSubscript:v6];
      [v5 setObject:v8 forKeyedSubscript:@"AssetSpecifier"];

      v9 = *(a1 + 48);
      v10 = [v9[15] experimentId];
      v11 = [v9 createAssetFromPreinstalledWithAutoAssetInfo:v5 assetName:v12 experimentationEnabled:1 experimentId:v10];
      [*(a1 + 40) setObject:v11 forKeyedSubscript:v12];
    }
  }
}

void __39__UAFAssetSet_getAutoAssetPreinstalled__block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) objectForKeyedSubscript:?];

  if (v3)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:v5];
    [*(a1 + 40) setObject:v4 forKeyedSubscript:v5];
  }
}

- (void)mapAsset:(id)asset queue:(id)queue completion:(id)completion
{
  v42[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    queueCopy = dispatch_get_global_queue(0, 0);
  }

  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __41__UAFAssetSet_mapAsset_queue_completion___block_invoke;
  v30 = &unk_1E7FFDBF0;
  v11 = completionCopy;
  v32 = v11;
  v12 = queueCopy;
  v31 = v12;
  v13 = MEMORY[0x1BFB33950](&v27);
  if (!self->_autoAssetSet)
  {
    v16 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      uuid = self->_uuid;
      *buf = 136315394;
      v36 = "[UAFAssetSet mapAsset:queue:completion:]";
      v37 = 2114;
      v38 = uuid;
      _os_log_error_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_ERROR, "%s %{public}@: mapping assets is only supported for autoassets", buf, 0x16u);
    }

    v17 = MEMORY[0x1E696ABC0];
    v41 = *MEMORY[0x1E696A578];
    v42[0] = @"Not supported";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:{1, v27, v28, v29, v30}];
    v19 = v17;
    v20 = 5000;
    goto LABEL_12;
  }

  v14 = [(UAFAssetSet *)self assets:v27];
  v15 = [v14 objectForKeyedSubscript:assetCopy];

  if (!v15)
  {
    v21 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v26 = self->_uuid;
      *buf = 136315650;
      v36 = "[UAFAssetSet mapAsset:queue:completion:]";
      v37 = 2114;
      v38 = v26;
      v39 = 2114;
      v40 = assetCopy;
      _os_log_error_impl(&dword_1BCF2C000, v21, OS_LOG_TYPE_ERROR, "%s %{public}@: No '%{public}@' asset in asset set", buf, 0x20u);
    }

    v22 = MEMORY[0x1E696ABC0];
    v33 = *MEMORY[0x1E696A578];
    v34 = @"Asset missing";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v19 = v22;
    v20 = 5001;
LABEL_12:
    v23 = [v19 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:v20 userInfo:v18];

    (v13)[2](v13, v23);
    goto LABEL_13;
  }

  [(UAFAutoAssetSet *)self->_autoAssetSet mapAsset:assetCopy queue:v12 completion:v11];
LABEL_13:

  v24 = *MEMORY[0x1E69E9840];
}

void __41__UAFAssetSet_mapAsset_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __41__UAFAssetSet_mapAsset_queue_completion___block_invoke_2;
    v6[3] = &unk_1E7FFD940;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (void)invalidateWithQueue:(id)queue completion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  completionCopy = completion;
  v8 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    uuid = self->_uuid;
    *buf = 136315394;
    v16 = "[UAFAssetSet invalidateWithQueue:completion:]";
    v17 = 2114;
    v18 = uuid;
    _os_log_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_DEFAULT, "%s %{public}@: Explicit invalidation", buf, 0x16u);
  }

  autoAssetSet = self->_autoAssetSet;
  if (autoAssetSet)
  {
    [(UAFAutoAssetSet *)autoAssetSet invalidateWithQueue:queueCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    v11 = queueCopy;
    if (!v11)
    {
      v11 = dispatch_get_global_queue(0, 0);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__UAFAssetSet_invalidateWithQueue_completion___block_invoke;
    block[3] = &unk_1E7FFD4E8;
    v14 = completionCopy;
    dispatch_async(v11, block);
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end