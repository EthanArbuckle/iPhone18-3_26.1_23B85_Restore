@interface SSRVoiceProfileStoreData
- (SSRVoiceProfileStoreData)initWithCoder:(id)coder;
- (SSRVoiceProfileStoreData)initWithVoiceProfileArray:(id)array withVersion:(id)version enrollmentSamplingMetaDataDict:(id)dict requestIdAudioIdsMap:(id)map;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SSRVoiceProfileStoreData

- (void)encodeWithCoder:(id)coder
{
  vpArray = self->_vpArray;
  coderCopy = coder;
  [coderCopy encodeObject:vpArray forKey:@"Known User Voice Profiles"];
  [coderCopy encodeObject:self->_version forKey:@"Voice Profile Store Version"];
  [coderCopy encodeObject:self->_requestIdToAudioIdMap forKey:@"requestId to audioId mapping"];
  [coderCopy encodeObject:self->_enrollmentMetaDataDict forKey:@"Enrollment Sampling Meta Data"];
}

- (SSRVoiceProfileStoreData)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Known User Voice Profiles"];

  v10 = MEMORY[0x277CBEB98];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"Enrollment Sampling Meta Data"];

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Voice Profile Store Version"];
  v15 = MEMORY[0x277CBEB98];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"requestId to audioId mapping"];

  v19 = [(SSRVoiceProfileStoreData *)self initWithVoiceProfileArray:v9 withVersion:v14 enrollmentSamplingMetaDataDict:v13 requestIdAudioIdsMap:v18];
  return v19;
}

- (SSRVoiceProfileStoreData)initWithVoiceProfileArray:(id)array withVersion:(id)version enrollmentSamplingMetaDataDict:(id)dict requestIdAudioIdsMap:(id)map
{
  arrayCopy = array;
  versionCopy = version;
  dictCopy = dict;
  mapCopy = map;
  v18.receiver = self;
  v18.super_class = SSRVoiceProfileStoreData;
  v15 = [(SSRVoiceProfileStoreData *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_vpArray, array);
    objc_storeStrong(&v16->_version, version);
    objc_storeStrong(&v16->_requestIdToAudioIdMap, map);
    objc_storeStrong(&v16->_enrollmentMetaDataDict, dict);
  }

  return v16;
}

@end