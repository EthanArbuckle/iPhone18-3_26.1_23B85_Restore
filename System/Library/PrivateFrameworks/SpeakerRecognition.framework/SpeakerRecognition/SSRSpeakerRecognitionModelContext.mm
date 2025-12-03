@interface SSRSpeakerRecognitionModelContext
- (SSRSpeakerRecognitionModelContext)initWithConfigFilePath:(id)path withModelFilePaths:(id)paths withModelFilePathsExclave:(id)exclave;
@end

@implementation SSRSpeakerRecognitionModelContext

- (SSRSpeakerRecognitionModelContext)initWithConfigFilePath:(id)path withModelFilePaths:(id)paths withModelFilePathsExclave:(id)exclave
{
  pathCopy = path;
  pathsCopy = paths;
  exclaveCopy = exclave;
  v15.receiver = self;
  v15.super_class = SSRSpeakerRecognitionModelContext;
  v12 = [(SSRSpeakerRecognitionModelContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_configFilePath, path);
    objc_storeStrong(&v13->_voiceProfilesModelFilePaths, paths);
    objc_storeStrong(&v13->_voiceProfilesModelFilePathsExclave, exclave);
  }

  return v13;
}

@end