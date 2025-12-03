@interface SSRVoiceProfileModelContext
- (SSRVoiceProfileModelContext)initWithConfigFilePath:(id)path withModelPath:(id)modelPath withModelPathExclave:(id)exclave withCompareModelFilePaths:(id)paths;
@end

@implementation SSRVoiceProfileModelContext

- (SSRVoiceProfileModelContext)initWithConfigFilePath:(id)path withModelPath:(id)modelPath withModelPathExclave:(id)exclave withCompareModelFilePaths:(id)paths
{
  pathCopy = path;
  modelPathCopy = modelPath;
  exclaveCopy = exclave;
  pathsCopy = paths;
  v18.receiver = self;
  v18.super_class = SSRVoiceProfileModelContext;
  v15 = [(SSRVoiceProfileModelContext *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_configFilePath, path);
    objc_storeStrong(&v16->_compareModelFilePaths, paths);
    objc_storeStrong(&v16->_voiceProfileModelFilePath, modelPath);
    objc_storeStrong(&v16->_secureProfileModelFilePath, exclave);
  }

  return v16;
}

@end