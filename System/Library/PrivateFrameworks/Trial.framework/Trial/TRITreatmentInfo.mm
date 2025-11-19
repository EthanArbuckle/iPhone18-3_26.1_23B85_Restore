@interface TRITreatmentInfo
+ (id)loadInfoForTreatment:(id)a3 namespaceName:(id)a4 paths:(id)a5;
- (BOOL)load;
- (BOOL)loadFromUrl:(id)a3;
- (BOOL)save;
- (BOOL)saveToDir:(id)a3;
- (BOOL)saveToUrl:(id)a3;
- (TRITreatmentInfo)initWithPaths:(id)a3;
- (id)baseUrlForTreatment:(id)a3 namespaceName:(id)a4;
- (id)baseUrlForTreatmentsWithNamespaceName:(id)a3;
- (id)infoDictionary;
- (id)treatmentDirectory;
- (id)url;
- (id)urlWithDir:(id)a3;
@end

@implementation TRITreatmentInfo

- (TRITreatmentInfo)initWithPaths:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TRITreatmentInfo;
  v6 = [(TRITreatmentInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_paths, a3);
    v7->_deploymentId = -1;
  }

  return v7;
}

- (id)baseUrlForTreatmentsWithNamespaceName:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277D73B50] namespaceIdFromName:v5];
  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v6];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;
  v9 = MEMORY[0x277CBEBC0];
  v10 = [(TRITreatmentInfo *)self _treatmentBasePath];
  v16[0] = v10;
  v16[1] = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v12 = [v9 fileURLWithPathComponents:v11];

  if (!v12)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"TRITreatmentInfo.m" lineNumber:50 description:{@"base URL for treatments with namespace %@ is nil", v5}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)baseUrlForTreatment:(id)a3 namespaceName:(id)a4
{
  v7 = a3;
  v8 = [(TRITreatmentInfo *)self baseUrlForTreatmentsWithNamespaceName:a4];
  v9 = [v8 URLByAppendingPathComponent:v7];

  if (!v9)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"TRITreatmentInfo.m" lineNumber:57 description:@"baseUrlForTreatment is nil"];
  }

  return v9;
}

+ (id)loadInfoForTreatment:(id)a3 namespaceName:(id)a4 paths:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[TRITreatmentInfo alloc] initWithPaths:v7];

  [(TRITreatmentInfo *)v10 setTreatmentId:v9];
  [(TRITreatmentInfo *)v10 setNamespaceName:v8];

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
  v3 = [(TRITreatmentInfo *)self treatmentId];
  if (v3 && (v4 = v3, [(TRITreatmentInfo *)self namespaceName], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {
    v6 = [(TRITreatmentInfo *)self treatmentId];
    v7 = [(TRITreatmentInfo *)self namespaceName];
    v8 = [(TRITreatmentInfo *)self baseUrlForTreatment:v6 namespaceName:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)urlWithDir:(id)a3
{
  v10[2] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = MEMORY[0x277CBEBC0];
    v10[0] = a3;
    v10[1] = @"info.plist";
    v4 = MEMORY[0x277CBEA60];
    v5 = a3;
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
  v3 = [(TRITreatmentInfo *)self treatmentDirectory];
  v4 = [v3 path];
  v5 = [(TRITreatmentInfo *)self urlWithDir:v4];

  return v5;
}

- (BOOL)loadFromUrl:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v20 = 0;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:a3 error:&v20];
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
        v11 = [v10 intValue];
      }

      else
      {
        v11 = 0xFFFFFFFFLL;
      }

      [(TRITreatmentInfo *)self setDeploymentId:v11];
    }

    else
    {
      v12 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = [(TRITreatmentInfo *)self namespaceName];
        v15 = [(TRITreatmentInfo *)self treatmentId];
        *buf = 138412802;
        v22 = v14;
        v23 = 2112;
        v24 = v15;
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
      v18 = [(TRITreatmentInfo *)self namespaceName];
      v19 = [(TRITreatmentInfo *)self treatmentId];
      *buf = 138412546;
      v22 = v18;
      v23 = 2112;
      v24 = v19;
      _os_log_error_impl(&dword_22EA6B000, v6, OS_LOG_TYPE_ERROR, "could not load treatment info for namespace %@ with treatment id %@ -- path is nil", buf, 0x16u);
    }

    v8 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)load
{
  v2 = self;
  v3 = [(TRITreatmentInfo *)self url];
  LOBYTE(v2) = [(TRITreatmentInfo *)v2 loadFromUrl:v3];

  return v2;
}

- (BOOL)saveToDir:(id)a3
{
  v3 = self;
  v4 = [(TRITreatmentInfo *)self urlWithDir:a3];
  LOBYTE(v3) = [(TRITreatmentInfo *)v3 saveToUrl:v4];

  return v3;
}

- (BOOL)save
{
  v2 = self;
  v3 = [(TRITreatmentInfo *)self url];
  LOBYTE(v2) = [(TRITreatmentInfo *)v2 saveToUrl:v3];

  return v2;
}

- (id)infoDictionary
{
  v3 = [(TRITreatmentInfo *)self experimentId];

  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [(TRITreatmentInfo *)self experimentId];
    [v4 setObject:v5 forKeyedSubscript:@"experimentId"];

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

- (BOOL)saveToUrl:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (v5)
  {
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [v5 path];
    if (!v7)
    {
      v25 = [MEMORY[0x277CCA890] currentHandler];
      [v25 handleFailureInMethod:a2 object:self file:@"TRITreatmentInfo.m" lineNumber:141 description:{@"Expression was unexpectedly nil/false: %@", @"url.path"}];
    }

    v27 = 0;
    v8 = [v6 triCreateDirectoryForPath:v7 isDirectory:0 error:&v27];
    v9 = v27;

    if (!v8)
    {
      v10 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v23 = [(TRITreatmentInfo *)self namespaceName];
        v24 = [(TRITreatmentInfo *)self treatmentId];
        *buf = 138413058;
        v29 = v23;
        v30 = 2112;
        v31 = v24;
        v32 = 2112;
        v33 = v5;
        v34 = 2112;
        v35 = v9;
        _os_log_error_impl(&dword_22EA6B000, v10, OS_LOG_TYPE_ERROR, "failed to create directory to save treatment info for namespace %@ with treatment id %@ to path %@ -- %@", buf, 0x2Au);
      }

      v15 = 0;
      v12 = v9;
      goto LABEL_19;
    }

    v10 = [(TRITreatmentInfo *)self infoDictionary];
    v26 = v9;
    v11 = [v10 writeToURL:v5 error:&v26];
    v12 = v26;

    if (v11)
    {
      v13 = MEMORY[0x277CCAA00];
      v14 = [v5 path];
      LOBYTE(v13) = [v13 triRemoveFileProtectionIfPresentForPath:v14];

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
        v29 = v5;
        _os_log_error_impl(&dword_22EA6B000, v16, OS_LOG_TYPE_ERROR, "Failed to remove file protection from info.plist at %@", buf, 0xCu);
      }
    }

    else
    {
      v16 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [(TRITreatmentInfo *)self namespaceName];
        v18 = [(TRITreatmentInfo *)self treatmentId];
        *buf = 138413058;
        v29 = v17;
        v30 = 2112;
        v31 = v18;
        v32 = 2112;
        v33 = v5;
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
    v21 = [(TRITreatmentInfo *)self namespaceName];
    v22 = [(TRITreatmentInfo *)self treatmentId];
    *buf = 138412546;
    v29 = v21;
    v30 = 2112;
    v31 = v22;
    _os_log_error_impl(&dword_22EA6B000, v12, OS_LOG_TYPE_ERROR, "could save treatment info for namespace %@ with treatment id %@ -- path is nil", buf, 0x16u);
  }

  v15 = 0;
LABEL_20:

  v19 = *MEMORY[0x277D85DE8];
  return v15;
}

@end