@interface UAFAssetSetExperiment
- (BOOL)isEqual:(id)equal;
- (UAFAssetSetExperiment)initWithCoder:(id)coder;
- (UAFAssetSetExperiment)initWithConfiguration:(id)configuration uuid:(id)uuid;
- (UAFAssetSetExperiment)initWithExperimentId:(id)id assetSpecifiers:(id)specifiers;
- (id)description;
- (id)jsonDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation UAFAssetSetExperiment

- (UAFAssetSetExperiment)initWithExperimentId:(id)id assetSpecifiers:(id)specifiers
{
  v18 = *MEMORY[0x1E69E9840];
  idCopy = id;
  specifiersCopy = specifiers;
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
    objc_storeStrong(&v9->_experimentId, id);
    v11 = specifiersCopy;
    self = v10->_assetSpecifiers;
    v10->_assetSpecifiers = v11;
LABEL_7:
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

- (UAFAssetSetExperiment)initWithConfiguration:(id)configuration uuid:(id)uuid
{
  v65 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  uuidCopy = uuid;
  v8 = [(UAFAssetSetExperiment *)self initWithExperimentId:0 assetSpecifiers:0];
  if (!v8)
  {
    goto LABEL_20;
  }

  trialProject = [configurationCopy trialProject];
  if (!trialProject)
  {
    goto LABEL_21;
  }

  trialNamespace = [configurationCopy trialNamespace];
  if (!trialNamespace)
  {

    goto LABEL_20;
  }

  v11 = trialNamespace;
  trialFactor = [configurationCopy trialFactor];

  if (!trialFactor)
  {
LABEL_20:
    trialProject = 0;
    goto LABEL_21;
  }

  objc_storeStrong(&v8->_uuid, uuid);
  if (!uuidCopy)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uuid = v8->_uuid;
    v8->_uuid = uUID;
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

  trialProject2 = [configurationCopy trialProject];
  v22 = [UAFCommonUtilities trialClientWithProject:trialProject2];

  if (v22)
  {
    trialNamespace2 = [configurationCopy trialNamespace];
    trialFactor2 = [configurationCopy trialFactor];
    v25 = [UAFCommonUtilities getDirectoryPath:v22 trialNamespace:trialNamespace2 trialFactor:trialFactor2];

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

        trialProject = 0;
      }

      else
      {
        v55 = v28;
        v56 = v27;
        assetSpecifiers = [v28 assetSpecifiers];
        assetSpecifiers = v8->_assetSpecifiers;
        v8->_assetSpecifiers = assetSpecifiers;

        trialNamespace3 = [configurationCopy trialNamespace];
        v32 = [UAFCommonUtilities experimentIdentifiersTrialClient:v22 trialNamespace:trialNamespace3];

        experimentId = [v32 experimentId];
        experimentId = v8->_experimentId;
        v8->_experimentId = experimentId;

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

          trialProject = v8;
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

          trialProject = 0;
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

      trialProject = v8;
      v25 = 0;
    }
  }

  else
  {
    v36 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      trialProject3 = [configurationCopy trialProject];
      *buf = 136315394;
      v60 = "[UAFAssetSetExperiment initWithConfiguration:uuid:]";
      v61 = 2114;
      v62 = trialProject3;
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

    trialProject = 0;
  }

LABEL_21:
  v34 = *MEMORY[0x1E69E9840];
  return trialProject;
}

- (void)encodeWithCoder:(id)coder
{
  experimentId = self->_experimentId;
  coderCopy = coder;
  [coderCopy encodeObject:experimentId forKey:@"experimentId"];
  [coderCopy encodeObject:self->_assetSpecifiers forKey:@"assetSpecifiers"];
}

- (UAFAssetSetExperiment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"experimentId"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"assetSpecifiers"];

  v10 = [(UAFAssetSetExperiment *)self initWithExperimentId:v5 assetSpecifiers:v9];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = equalCopy;
  if (equalCopy)
  {
    if (self == equalCopy)
    {
      v12 = 1;
      goto LABEL_35;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      experimentId = [(UAFAssetSetExperiment *)v8 experimentId];
      if (!experimentId)
      {
        experimentId2 = [(UAFAssetSetExperiment *)self experimentId];
        if (experimentId2)
        {
          experimentId5 = experimentId2;
          v12 = 0;
LABEL_33:

          goto LABEL_34;
        }
      }

      experimentId3 = [(UAFAssetSetExperiment *)v8 experimentId];
      if (experimentId3)
      {
        experimentId6 = experimentId3;
        experimentId4 = [(UAFAssetSetExperiment *)self experimentId];

        if (experimentId)
        {

          if (!experimentId4)
          {
            goto LABEL_21;
          }
        }

        else if (!experimentId4)
        {
LABEL_21:
          v12 = 0;
LABEL_34:

          goto LABEL_35;
        }
      }

      else if (experimentId)
      {
      }

      experimentId5 = [(UAFAssetSetExperiment *)v8 experimentId];
      if (experimentId5 || ([(UAFAssetSetExperiment *)self experimentId], (v22 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        experimentId6 = [(UAFAssetSetExperiment *)v8 experimentId];
        experimentId7 = [(UAFAssetSetExperiment *)self experimentId];
        if (![experimentId6 isEqualToString:experimentId7])
        {
          v12 = 0;
LABEL_30:

LABEL_31:
          if (!experimentId5)
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

      assetSpecifiers = [(UAFAssetSetExperiment *)v8 assetSpecifiers];
      if (assetSpecifiers || ([(UAFAssetSetExperiment *)self assetSpecifiers], (v20 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v17 = [(UAFAssetSetExperiment *)v8 assetSpecifiers:v20];
        assetSpecifiers2 = [(UAFAssetSetExperiment *)self assetSpecifiers];
        v12 = [v17 isEqual:assetSpecifiers2];

        if (assetSpecifiers)
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
  experimentId = [(UAFAssetSetExperiment *)self experimentId];
  assetSpecifiers = [(UAFAssetSetExperiment *)self assetSpecifiers];
  v6 = [v3 stringWithFormat:@"Experiment '%@' with assetSpecifiers %@", experimentId, assetSpecifiers];

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