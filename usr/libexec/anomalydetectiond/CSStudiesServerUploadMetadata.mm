@interface CSStudiesServerUploadMetadata
- (CSStudiesServerUploadMetadata)initWithCoder:(id)a3;
- (CSStudiesServerUploadMetadata)initWithPayloadType:(id)a3 channel:(id)a4 keyValuePairs:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CSStudiesServerUploadMetadata

- (CSStudiesServerUploadMetadata)initWithPayloadType:(id)a3 channel:(id)a4 keyValuePairs:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CSStudiesServerUploadMetadata;
  v12 = [(CSStudiesServerUploadMetadata *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_payloadType, a3);
    objc_storeStrong(&v13->_channel, a4);
    objc_storeStrong(&v13->_keyValuePairs, a5);
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(CSStudiesServerUploadMetadata *)self payloadType];
  [v7 encodeObject:v4 forKey:@"kCSStudiesServerUploadMetadataPayloadTypeEncoderKey"];

  v5 = [(CSStudiesServerUploadMetadata *)self channel];
  [v7 encodeObject:v5 forKey:@"kCSStudiesServerUploadMetadataChannelEncoderKey"];

  v6 = [(CSStudiesServerUploadMetadata *)self keyValuePairs];
  [v7 encodeObject:v6 forKey:@"kCSStudiesServerUploadMetadataKetValyePairsEncoderKey"];
}

- (CSStudiesServerUploadMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCSStudiesServerUploadMetadataPayloadTypeEncoderKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCSStudiesServerUploadMetadataChannelEncoderKey"];
  v7 = objc_opt_class();
  v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kCSStudiesServerUploadMetadataKetValyePairsEncoderKey"];
  v10 = [(CSStudiesServerUploadMetadata *)self initWithPayloadType:v5 channel:v6 keyValuePairs:v9];

  return v10;
}

@end