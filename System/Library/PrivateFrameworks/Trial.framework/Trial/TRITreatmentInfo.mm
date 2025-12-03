@interface TRITreatmentInfo
+ (id)loadInfoForTreatment:(id)treatment namespaceName:(id)name paths:(id)paths;
- (BOOL)load;
- (BOOL)loadFromUrl:(id)url;
- (BOOL)save;
- (BOOL)saveToDir:(id)dir;
- (BOOL)saveToUrl:(id)url;
- (TRITreatmentInfo)initWithPaths:(id)paths;
- (id)baseUrlForTreatment:(id)treatment namespaceName:(id)name;
- (id)baseUrlForTreatmentsWithNamespaceName:(id)name;
- (id)infoDictionary;
- (id)treatmentDirectory;
- (id)url;
- (id)urlWithDir:(id)dir;
@end

@implementation TRITreatmentInfo

- (TRITreatmentInfo)initWithPaths:(id)paths
{
  pathsCopy = paths;
  v9.receiver = self;
  v9.super_class = TRITreatmentInfo;
  v6 = [(TRITreatmentInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_paths, paths);
    v7->_deploymentId = -1;
  }

  return v7;
}

- (id)baseUrlForTreatmentsWithNamespaceName:(id)name
{
  v16[2] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v6 = [MEMORY[0x277D73B50] namespaceIdFromName:nameCopy];
  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v6];
  }

  else
  {
    v7 = nameCopy;
  }

  v8 = v7;
  v9 = MEMORY[0x277CBEBC0];
  _treatmentBasePath = [(TRITreatmentInfo *)self _treatmentBasePath];
  v16[0] = _treatmentBasePath;
  v16[1] = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v12 = [v9 fileURLWithPathComponents:v11];

  if (!v12)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRITreatmentInfo.m" lineNumber:50 description:{@"base URL for treatments with namespace %@ is nil", nameCopy}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)baseUrlForTreatment:(id)treatment namespaceName:(id)name
{
  treatmentCopy = treatment;
  v8 = [(TRITreatmentInfo *)self baseUrlForTreatmentsWithNamespaceName:name];
  v9 = [v8 URLByAppendingPathComponent:treatmentCopy];

  if (!v9)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRITreatmentInfo.m" lineNumber:57 description:@"baseUrlForTreatment is nil"];
  }

  return v9;
}

+ (id)loadInfoForTreatment:(id)treatment namespaceName:(id)name paths:(id)paths
{
  pathsCopy = paths;
  nameCopy = name;
  treatmentCopy = treatment;
  v10 = [[TRITreatmentInfo alloc] initWithPaths:pathsCopy];

  [(TRITreatmentInfo *)v10 setTreatmentId:treatmentCopy];
  [(TRITreatmentInfo *)v10 setNamespaceName:nameCopy];

  if ([(TRITreatmentInfo *)v10 load])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)treatmentDirectory
{
  treatmentId = [(TRITreatmentInfo *)self treatmentId];
  if (treatmentId && (v4 = treatmentId, [(TRITreatmentInfo *)self namespaceName], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    treatmentId2 = [(TRITreatmentInfo *)self treatmentId];
    namespaceName = [(TRITreatmentInfo *)self namespaceName];
    v8 = [(TRITreatmentInfo *)self baseUrlForTreatment:treatmentId2 namespaceName:namespaceName];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)urlWithDir:(id)dir
{
  v10[2] = *MEMORY[0x277D85DE8];
  if (dir)
  {
    v3 = MEMORY[0x277CBEBC0];
    v10[0] = dir;
    v10[1] = @"info.plist";
    v4 = MEMORY[0x277CBEA60];
    dirCopy = dir;
    v6 = [v4 arrayWithObjects:v10 count:2];
    v7 = [v3 fileURLWithPathComponents:v6];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)url
{
  treatmentDirectory = [(TRITreatmentInfo *)self treatmentDirectory];
  path = [treatmentDirectory path];
  v5 = [(TRITreatmentInfo *)self urlWithDir:path];

  return v5;
}

- (BOOL)loadFromUrl:(id)url
{
  v27 = *MEMORY[0x277D85DE8];
  if (url)
  {
    v20 = 0;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:url error:&v20];
    v5 = v20;
    v6 = v5;
    if (v4)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
    if (v7)
    {
      v9 = [v4 objectForKeyedSubscript:@"experimentId"];
      [(TRITreatmentInfo *)self setExperimentId:v9];

      v10 = [v4 objectForKeyedSubscript:@"deploymentId"];
      v12 = v10;
      if (v10)
      {
        intValue = [v10 intValue];
      }

      else
      {
        intValue = 0xFFFFFFFFLL;
      }

      [(TRITreatmentInfo *)self setDeploymentId:intValue];
    }

    else
    {
      v12 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        namespaceName = [(TRITreatmentInfo *)self namespaceName];
        treatmentId = [(TRITreatmentInfo *)self treatmentId];
        *buf = 138412802;
        v22 = namespaceName;
        v23 = 2112;
        v24 = treatmentId;
        v25 = 2112;
        v26 = v6;
        _os_log_error_impl(&dword_22EA6B000, v12, OS_LOG_TYPE_ERROR, "could not load treatment info for namespace %@ with treatment id %@ -- %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v6 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      namespaceName2 = [(TRITreatmentInfo *)self namespaceName];
      treatmentId2 = [(TRITreatmentInfo *)self treatmentId];
      *buf = 138412546;
      v22 = namespaceName2;
      v23 = 2112;
      v24 = treatmentId2;
      _os_log_error_impl(&dword_22EA6B000, v6, OS_LOG_TYPE_ERROR, "could not load treatment info for namespace %@ with treatment id %@ -- path is nil", buf, 0x16u);
    }

    v8 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)load
{
  selfCopy = self;
  v3 = [(TRITreatmentInfo *)self url];
  LOBYTE(selfCopy) = [(TRITreatmentInfo *)selfCopy loadFromUrl:v3];

  return selfCopy;
}

- (BOOL)saveToDir:(id)dir
{
  selfCopy = self;
  v4 = [(TRITreatmentInfo *)self urlWithDir:dir];
  LOBYTE(selfCopy) = [(TRITreatmentInfo *)selfCopy saveToUrl:v4];

  return selfCopy;
}

- (BOOL)save
{
  selfCopy = self;
  v3 = [(TRITreatmentInfo *)self url];
  LOBYTE(selfCopy) = [(TRITreatmentInfo *)selfCopy saveToUrl:v3];

  return selfCopy;
}

- (id)infoDictionary
{
  experimentId = [(TRITreatmentInfo *)self experimentId];

  if (experimentId)
  {
    v4 = objc_opt_new();
    experimentId2 = [(TRITreatmentInfo *)self experimentId];
    [v4 setObject:experimentId2 forKeyedSubscript:@"experimentId"];

    if ([(TRITreatmentInfo *)self deploymentId]< 0)
    {
      [v4 setObject:0 forKeyedSubscript:@"deploymentId"];
    }

    else
    {
      v6 = [MEMORY[0x277CCABB0] numberWithInt:{-[TRITreatmentInfo deploymentId](self, "deploymentId")}];
      [v4 setObject:v6 forKeyedSubscript:@"deploymentId"];
    }
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  return v4;
}

- (BOOL)saveToUrl:(id)url
{
  v36 = *MEMORY[0x277D85DE8];
  urlCopy = url;
  if (urlCopy)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [urlCopy path];
    if (!path)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"TRITreatmentInfo.m" lineNumber:141 description:{@"Expression was unexpectedly nil/false: %@", @"url.path"}];
    }

    v27 = 0;
    v8 = [defaultManager triCreateDirectoryForPath:path isDirectory:0 error:&v27];
    v9 = v27;

    if (!v8)
    {
      infoDictionary = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(infoDictionary, OS_LOG_TYPE_ERROR))
      {
        namespaceName = [(TRITreatmentInfo *)self namespaceName];
        treatmentId = [(TRITreatmentInfo *)self treatmentId];
        *buf = 138413058;
        v29 = namespaceName;
        v30 = 2112;
        v31 = treatmentId;
        v32 = 2112;
        v33 = urlCopy;
        v34 = 2112;
        v35 = v9;
        _os_log_error_impl(&dword_22EA6B000, infoDictionary, OS_LOG_TYPE_ERROR, "failed to create directory to save treatment info for namespace %@ with treatment id %@ to path %@ -- %@", buf, 0x2Au);
      }

      v15 = 0;
      v12 = v9;
      goto LABEL_19;
    }

    infoDictionary = [(TRITreatmentInfo *)self infoDictionary];
    v26 = v9;
    v11 = [infoDictionary writeToURL:urlCopy error:&v26];
    v12 = v26;

    if (v11)
    {
      v13 = MEMORY[0x277CCAA00];
      path2 = [urlCopy path];
      LOBYTE(v13) = [v13 triRemoveFileProtectionIfPresentForPath:path2];

      if (v13)
      {
        v15 = 1;
LABEL_19:

        goto LABEL_20;
      }

      v16 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v29 = urlCopy;
        _os_log_error_impl(&dword_22EA6B000, v16, OS_LOG_TYPE_ERROR, "Failed to remove file protection from info.plist at %@", buf, 0xCu);
      }
    }

    else
    {
      v16 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        namespaceName2 = [(TRITreatmentInfo *)self namespaceName];
        treatmentId2 = [(TRITreatmentInfo *)self treatmentId];
        *buf = 138413058;
        v29 = namespaceName2;
        v30 = 2112;
        v31 = treatmentId2;
        v32 = 2112;
        v33 = urlCopy;
        v34 = 2112;
        v35 = v12;
        _os_log_error_impl(&dword_22EA6B000, v16, OS_LOG_TYPE_ERROR, "could save treatment info for namespace %@ with treatment id %@ to path %@ -- %@", buf, 0x2Au);
      }
    }

    v15 = 0;
    goto LABEL_19;
  }

  v12 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    namespaceName3 = [(TRITreatmentInfo *)self namespaceName];
    treatmentId3 = [(TRITreatmentInfo *)self treatmentId];
    *buf = 138412546;
    v29 = namespaceName3;
    v30 = 2112;
    v31 = treatmentId3;
    _os_log_error_impl(&dword_22EA6B000, v12, OS_LOG_TYPE_ERROR, "could save treatment info for namespace %@ with treatment id %@ -- path is nil", buf, 0x16u);
  }

  v15 = 0;
LABEL_20:

  v19 = *MEMORY[0x277D85DE8];
  return v15;
}

@end