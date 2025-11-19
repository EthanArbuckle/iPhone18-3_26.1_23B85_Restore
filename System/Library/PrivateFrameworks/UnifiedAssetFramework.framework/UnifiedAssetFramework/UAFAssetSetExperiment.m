@interface UAFAssetSetExperiment
- (BOOL)isEqual:(id)a3;
- (UAFAssetSetExperiment)initWithCoder:(id)a3;
- (UAFAssetSetExperiment)initWithConfiguration:(id)a3 uuid:(id)a4;
- (UAFAssetSetExperiment)initWithExperimentId:(id)a3 assetSpecifiers:(id)a4;
- (id)description;
- (id)jsonDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UAFAssetSetExperiment

- (UAFAssetSetExperiment)initWithExperimentId:(id)a3 assetSpecifiers:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!+[UAFCommonUtilities isTrialAvailable])
  {
    v12 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "[UAFAssetSetExperiment initWithExperimentId:assetSpecifiers:]";
      _os_log_error_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_ERROR, "%s This system doesn't support Trial. Returning nil.", buf, 0xCu);
    }

    v10 = 0;
    goto LABEL_7;
  }

  v15.receiver = self;
  v15.super_class = UAFAssetSetExperiment;
  v9 = [(UAFAssetSetExperiment *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_experimentId, a3);
    v11 = v8;
    self = v10->_assetSpecifiers;
    v10->_assetSpecifiers = v11;
LABEL_7:
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

- (UAFAssetSetExperiment)initWithConfiguration:(id)a3 uuid:(id)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(UAFAssetSetExperiment *)self initWithExperimentId:0 assetSpecifiers:0];
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = [v6 trialProject];
  if (!v9)
  {
    goto LABEL_21;
  }

  v10 = [v6 trialNamespace];
  if (!v10)
  {

    goto LABEL_20;
  }

  v11 = v10;
  v12 = [v6 trialFactor];

  if (!v12)
  {
LABEL_20:
    v9 = 0;
    goto LABEL_21;
  }

  objc_storeStrong(&v8->_uuid, a4);
  if (!v7)
  {
    v13 = [MEMORY[0x1E696AFB0] UUID];
    uuid = v8->_uuid;
    v8->_uuid = v13;
  }

  v15 = UAFGetLogCategory(&UAFLogContextClient);
  v16 = os_signpost_id_generate(v15);

  v17 = UAFGetLogCategory(&UAFLogContextClient);
  v18 = v17;
  v19 = v16 - 1;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    v20 = v8->_uuid;
    *buf = 138543362;
    v60 = v20;
    _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "Experiment AutoAssets", "%{public}@", buf, 0xCu);
  }

  v21 = [v6 trialProject];
  v22 = [UAFCommonUtilities trialClientWithProject:v21];

  if (v22)
  {
    v23 = [v6 trialNamespace];
    v24 = [v6 trialFactor];
    v25 = [UAFCommonUtilities getDirectoryPath:v22 trialNamespace:v23 trialFactor:v24];

    if (v25)
    {
      v26 = [MEMORY[0x1E695DFF8] fileURLWithPath:v25 isDirectory:1];
      v27 = [v26 URLByAppendingPathComponent:@"experiment.plist"];

      v58 = 0;
      v28 = [UAFAssetSetExperimentConfiguration fromContentsOfURL:v27 error:&v58];
      v57 = v58;
      if (v57)
      {
        v29 = v28;
        v30 = UAFGetLogCategory(&UAFLogContextClient);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v60 = "[UAFAssetSetExperiment initWithConfiguration:uuid:]";
          v61 = 2112;
          v62 = v27;
          v63 = 2114;
          v64 = v57;
          _os_log_error_impl(&dword_1BCF2C000, v30, OS_LOG_TYPE_ERROR, "%s Could not load asset set experiment at %@: %{public}@", buf, 0x20u);
        }

        v31 = UAFGetLogCategory(&UAFLogContextClient);
        v32 = v31;
        if (v19 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
        {
          v33 = v8->_uuid;
          *buf = 138543362;
          v60 = v33;
          _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v32, OS_SIGNPOST_INTERVAL_END, v16, "Experiment AutoAssets", "%{public}@", buf, 0xCu);
        }

        v9 = 0;
      }

      else
      {
        v55 = v28;
        v56 = v27;
        v42 = [v28 assetSpecifiers];
        assetSpecifiers = v8->_assetSpecifiers;
        v8->_assetSpecifiers = v42;

        v44 = [v6 trialNamespace];
        v32 = [UAFCommonUtilities experimentIdentifiersTrialClient:v22 trialNamespace:v44];

        v45 = [v32 experimentId];
        experimentId = v8->_experimentId;
        v8->_experimentId = v45;

        v47 = v8->_experimentId;
        v48 = UAFGetLogCategory(&UAFLogContextClient);
        v49 = v48;
        if (v47)
        {
          if (v19 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
          {
            v50 = v8->_uuid;
            *buf = 138543362;
            v60 = v50;
            _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v49, OS_SIGNPOST_INTERVAL_END, v16, "Experiment AutoAssets", "%{public}@", buf, 0xCu);
          }

          v9 = v8;
          v27 = v56;
        }

        else
        {
          v27 = v56;
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v60 = "[UAFAssetSetExperiment initWithConfiguration:uuid:]";
            v61 = 2112;
            v62 = v56;
            _os_log_error_impl(&dword_1BCF2C000, v49, OS_LOG_TYPE_ERROR, "%s Could use asset set experiment at %@: experiment id is nil", buf, 0x16u);
          }

          v51 = UAFGetLogCategory(&UAFLogContextClient);
          v52 = v51;
          if (v19 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
          {
            v53 = v8->_uuid;
            *buf = 138543362;
            v60 = v53;
            _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v52, OS_SIGNPOST_INTERVAL_END, v16, "Experiment AutoAssets", "%{public}@", buf, 0xCu);
          }

          v9 = 0;
        }

        v29 = v55;
      }
    }

    else
    {
      v39 = UAFGetLogCategory(&UAFLogContextClient);
      v40 = v39;
      if (v19 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
      {
        v41 = v8->_uuid;
        *buf = 138543362;
        v60 = v41;
        _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v40, OS_SIGNPOST_INTERVAL_END, v16, "Experiment AutoAssets", "%{public}@", buf, 0xCu);
      }

      v9 = v8;
      v25 = 0;
    }
  }

  else
  {
    v36 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v54 = [v6 trialProject];
      *buf = 136315394;
      v60 = "[UAFAssetSetExperiment initWithConfiguration:uuid:]";
      v61 = 2114;
      v62 = v54;
      _os_log_error_impl(&dword_1BCF2C000, v36, OS_LOG_TYPE_ERROR, "%s Could not create trial client for project %{public}@", buf, 0x16u);
    }

    v37 = UAFGetLogCategory(&UAFLogContextClient);
    v25 = v37;
    if (v19 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
    {
      v38 = v8->_uuid;
      *buf = 138543362;
      v60 = v38;
      _os_signpost_emit_with_name_impl(&dword_1BCF2C000, v25, OS_SIGNPOST_INTERVAL_END, v16, "Experiment AutoAssets", "%{public}@", buf, 0xCu);
    }

    v9 = 0;
  }

LABEL_21:
  v34 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  experimentId = self->_experimentId;
  v5 = a3;
  [v5 encodeObject:experimentId forKey:@"experimentId"];
  [v5 encodeObject:self->_assetSpecifiers forKey:@"assetSpecifiers"];
}

- (UAFAssetSetExperiment)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"experimentId"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"assetSpecifiers"];

  v10 = [(UAFAssetSetExperiment *)self initWithExperimentId:v5 assetSpecifiers:v9];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if (self == v6)
    {
      v12 = 1;
      goto LABEL_35;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      v9 = [(UAFAssetSetExperiment *)v8 experimentId];
      if (!v9)
      {
        v13 = [(UAFAssetSetExperiment *)self experimentId];
        if (v13)
        {
          v14 = v13;
          v12 = 0;
LABEL_33:

          goto LABEL_34;
        }
      }

      v10 = [(UAFAssetSetExperiment *)v8 experimentId];
      if (v10)
      {
        v3 = v10;
        v11 = [(UAFAssetSetExperiment *)self experimentId];

        if (v9)
        {

          if (!v11)
          {
            goto LABEL_21;
          }
        }

        else if (!v11)
        {
LABEL_21:
          v12 = 0;
LABEL_34:

          goto LABEL_35;
        }
      }

      else if (v9)
      {
      }

      v14 = [(UAFAssetSetExperiment *)v8 experimentId];
      if (v14 || ([(UAFAssetSetExperiment *)self experimentId], (v22 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v3 = [(UAFAssetSetExperiment *)v8 experimentId];
        v4 = [(UAFAssetSetExperiment *)self experimentId];
        if (![v3 isEqualToString:v4])
        {
          v12 = 0;
LABEL_30:

LABEL_31:
          if (!v14)
          {
          }

          goto LABEL_33;
        }

        v15 = 1;
      }

      else
      {
        v22 = 0;
        v15 = 0;
      }

      v16 = [(UAFAssetSetExperiment *)v8 assetSpecifiers];
      if (v16 || ([(UAFAssetSetExperiment *)self assetSpecifiers], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v17 = [(UAFAssetSetExperiment *)v8 assetSpecifiers:v20];
        v18 = [(UAFAssetSetExperiment *)self assetSpecifiers];
        v12 = [v17 isEqual:v18];

        if (v16)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v21 = 0;
        v12 = 1;
      }

LABEL_29:
      if (!v15)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  v12 = 0;
LABEL_35:

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(UAFAssetSetExperiment *)self experimentId];
  v5 = [(UAFAssetSetExperiment *)self assetSpecifiers];
  v6 = [v3 stringWithFormat:@"Experiment '%@' with assetSpecifiers %@", v4, v5];

  return v6;
}

- (id)jsonDictionary
{
  v3 = objc_opt_new();
  [v3 setObject:self->_experimentId forKeyedSubscript:@"experimentId"];
  [v3 setObject:self->_assetSpecifiers forKeyedSubscript:@"assetSpecifiers"];

  return v3;
}

@end