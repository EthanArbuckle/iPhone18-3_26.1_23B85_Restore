@interface CSStudiesServerUploadOutOfBandMetadata
- (CSStudiesServerUploadOutOfBandMetadata)initWithCoder:(id)a3;
- (CSStudiesServerUploadOutOfBandMetadata)initWithLookingBack:(double)a3 keyValuePairs:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CSStudiesServerUploadOutOfBandMetadata

- (CSStudiesServerUploadOutOfBandMetadata)initWithLookingBack:(double)a3 keyValuePairs:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CSStudiesServerUploadOutOfBandMetadata;
  v8 = [(CSStudiesServerUploadOutOfBandMetadata *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_lookBack = a3;
    objc_storeStrong(&v8->_keyValuePairs, a4);
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [(CSStudiesServerUploadOutOfBandMetadata *)self lookBack];
  [v5 encodeDouble:@"kCSStudiesServerUploadOOBMetadataLookBackKey" forKey:?];
  v4 = [(CSStudiesServerUploadOutOfBandMetadata *)self keyValuePairs];
  [v5 encodeObject:v4 forKey:@"kCSStudiesServerUploadOOBMetadataKeyValuePairsEncoderKey"];
}

- (CSStudiesServerUploadOutOfBandMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  [v4 decodeDoubleForKey:@"kCSStudiesServerUploadOOBMetadataLookBackKey"];
  v6 = v5;
  v7 = objc_opt_class();
  v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kCSStudiesServerUploadOOBMetadataKeyValuePairsEncoderKey"];
  v10 = [(CSStudiesServerUploadOutOfBandMetadata *)self initWithLookingBack:v9 keyValuePairs:v6];

  return v10;
}

@end