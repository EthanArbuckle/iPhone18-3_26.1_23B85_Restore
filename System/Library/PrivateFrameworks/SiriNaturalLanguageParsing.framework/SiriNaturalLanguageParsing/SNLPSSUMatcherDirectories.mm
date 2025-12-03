@interface SNLPSSUMatcherDirectories
+ (id)directoriesWithCacheDirectoryURL:(id)l modelAssetsDirectoryURL:(id)rL datasetAssetsDirectoryURL:(id)uRL error:(id *)error;
- (SNLPSSUMatcherDirectories)initWithCacheDirectoryURL:(id)l modelAssetsDirectoryURL:(id)rL datasetAssetsDirectoryURL:(id)uRL;
@end

@implementation SNLPSSUMatcherDirectories

- (SNLPSSUMatcherDirectories)initWithCacheDirectoryURL:(id)l modelAssetsDirectoryURL:(id)rL datasetAssetsDirectoryURL:(id)uRL
{
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  v18.receiver = self;
  v18.super_class = SNLPSSUMatcherDirectories;
  v11 = [(SNLPSSUMatcherDirectories *)&v18 init];
  cacheDirectoryURL = v11->_cacheDirectoryURL;
  v11->_cacheDirectoryURL = lCopy;
  v13 = lCopy;

  modelAssetsDirectoryURL = v11->_modelAssetsDirectoryURL;
  v11->_modelAssetsDirectoryURL = rLCopy;
  v15 = rLCopy;

  datasetAssetsDirectoryURL = v11->_datasetAssetsDirectoryURL;
  v11->_datasetAssetsDirectoryURL = uRLCopy;

  return v11;
}

+ (id)directoriesWithCacheDirectoryURL:(id)l modelAssetsDirectoryURL:(id)rL datasetAssetsDirectoryURL:(id)uRL error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v31[0] = lCopy;
  v31[1] = rLCopy;
  v31[2] = uRLCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:3];
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v25 + 1) + 8 * i);
        if (([v18 isFileURL] & 1) == 0)
        {
          if (error)
          {
            v20 = *MEMORY[0x277CCA470];
            v29[0] = *MEMORY[0x277CCA450];
            v29[1] = v20;
            v30[0] = @"Could not build an SNLPSSUMatcherDirectories object";
            v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"The given directory is not a file URL: %@.", v18];
            v30[1] = v21;
            v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];

            *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"SNLPSSUErrorDomain" code:1 userInfo:v22];
          }

          v19 = 0;
          goto LABEL_13;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v25 objects:v32 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v19 = [[self alloc] initWithCacheDirectoryURL:lCopy modelAssetsDirectoryURL:rLCopy datasetAssetsDirectoryURL:uRLCopy];
LABEL_13:

  v23 = *MEMORY[0x277D85DE8];

  return v19;
}

@end