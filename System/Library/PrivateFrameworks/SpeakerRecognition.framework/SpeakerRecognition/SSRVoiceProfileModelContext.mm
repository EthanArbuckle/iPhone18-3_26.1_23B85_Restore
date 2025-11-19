@interface SSRVoiceProfileModelContext
- (SSRVoiceProfileModelContext)initWithConfigFilePath:(id)a3 withModelPath:(id)a4 withModelPathExclave:(id)a5 withCompareModelFilePaths:(id)a6;
@end

@implementation SSRVoiceProfileModelContext

- (SSRVoiceProfileModelContext)initWithConfigFilePath:(id)a3 withModelPath:(id)a4 withModelPathExclave:(id)a5 withCompareModelFilePaths:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = SSRVoiceProfileModelContext;
  v15 = [(SSRVoiceProfileModelContext *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_configFilePath, a3);
    objc_storeStrong(&v16->_compareModelFilePaths, a6);
    objc_storeStrong(&v16->_voiceProfileModelFilePath, a4);
    objc_storeStrong(&v16->_secureProfileModelFilePath, a5);
  }

  return v16;
}

@end