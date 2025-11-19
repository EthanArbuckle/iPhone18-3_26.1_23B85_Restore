@interface SSRSpeakerRecognitionModelContext
- (SSRSpeakerRecognitionModelContext)initWithConfigFilePath:(id)a3 withModelFilePaths:(id)a4 withModelFilePathsExclave:(id)a5;
@end

@implementation SSRSpeakerRecognitionModelContext

- (SSRSpeakerRecognitionModelContext)initWithConfigFilePath:(id)a3 withModelFilePaths:(id)a4 withModelFilePathsExclave:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SSRSpeakerRecognitionModelContext;
  v12 = [(SSRSpeakerRecognitionModelContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_configFilePath, a3);
    objc_storeStrong(&v13->_voiceProfilesModelFilePaths, a4);
    objc_storeStrong(&v13->_voiceProfilesModelFilePathsExclave, a5);
  }

  return v13;
}

@end