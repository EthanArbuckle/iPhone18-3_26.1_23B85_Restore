@interface CSStudiesServerUploadMetadata
- (CSStudiesServerUploadMetadata)initWithCoder:(id)coder;
- (CSStudiesServerUploadMetadata)initWithPayloadType:(id)type channel:(id)channel keyValuePairs:(id)pairs;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CSStudiesServerUploadMetadata

- (CSStudiesServerUploadMetadata)initWithPayloadType:(id)type channel:(id)channel keyValuePairs:(id)pairs
{
  typeCopy = type;
  channelCopy = channel;
  pairsCopy = pairs;
  v15.receiver = self;
  v15.super_class = CSStudiesServerUploadMetadata;
  v12 = [(CSStudiesServerUploadMetadata *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_payloadType, type);
    objc_storeStrong(&v13->_channel, channel);
    objc_storeStrong(&v13->_keyValuePairs, pairs);
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  payloadType = [(CSStudiesServerUploadMetadata *)self payloadType];
  [coderCopy encodeObject:payloadType forKey:@"kCSStudiesServerUploadMetadataPayloadTypeEncoderKey"];

  channel = [(CSStudiesServerUploadMetadata *)self channel];
  [coderCopy encodeObject:channel forKey:@"kCSStudiesServerUploadMetadataChannelEncoderKey"];

  keyValuePairs = [(CSStudiesServerUploadMetadata *)self keyValuePairs];
  [coderCopy encodeObject:keyValuePairs forKey:@"kCSStudiesServerUploadMetadataKetValyePairsEncoderKey"];
}

- (CSStudiesServerUploadMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCSStudiesServerUploadMetadataPayloadTypeEncoderKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCSStudiesServerUploadMetadataChannelEncoderKey"];
  v7 = objc_opt_class();
  v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kCSStudiesServerUploadMetadataKetValyePairsEncoderKey"];
  v10 = [(CSStudiesServerUploadMetadata *)self initWithPayloadType:v5 channel:v6 keyValuePairs:v9];

  return v10;
}

@end