@interface SSRVoiceProfileStoreData
- (SSRVoiceProfileStoreData)initWithCoder:(id)a3;
- (SSRVoiceProfileStoreData)initWithVoiceProfileArray:(id)a3 withVersion:(id)a4 enrollmentSamplingMetaDataDict:(id)a5 requestIdAudioIdsMap:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SSRVoiceProfileStoreData

- (void)encodeWithCoder:(id)a3
{
  vpArray = self->_vpArray;
  v5 = a3;
  [v5 encodeObject:vpArray forKey:@"Known User Voice Profiles"];
  [v5 encodeObject:self->_version forKey:@"Voice Profile Store Version"];
  [v5 encodeObject:self->_requestIdToAudioIdMap forKey:@"requestId to audioId mapping"];
  [v5 encodeObject:self->_enrollmentMetaDataDict forKey:@"Enrollment Sampling Meta Data"];
}

- (SSRVoiceProfileStoreData)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [v5 decodeObjectOfClasses:v8 forKey:@"Known User Voice Profiles"];

  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [v5 decodeObjectOfClasses:v12 forKey:@"Enrollment Sampling Meta Data"];

  v14 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"Voice Profile Store Version"];
  v15 = MEMORY[0x277CBEB98];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  v18 = [v5 decodeObjectOfClasses:v17 forKey:@"requestId to audioId mapping"];

  v19 = [(SSRVoiceProfileStoreData *)self initWithVoiceProfileArray:v9 withVersion:v14 enrollmentSamplingMetaDataDict:v13 requestIdAudioIdsMap:v18];
  return v19;
}

- (SSRVoiceProfileStoreData)initWithVoiceProfileArray:(id)a3 withVersion:(id)a4 enrollmentSamplingMetaDataDict:(id)a5 requestIdAudioIdsMap:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = SSRVoiceProfileStoreData;
  v15 = [(SSRVoiceProfileStoreData *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_vpArray, a3);
    objc_storeStrong(&v16->_version, a4);
    objc_storeStrong(&v16->_requestIdToAudioIdMap, a6);
    objc_storeStrong(&v16->_enrollmentMetaDataDict, a5);
  }

  return v16;
}

@end