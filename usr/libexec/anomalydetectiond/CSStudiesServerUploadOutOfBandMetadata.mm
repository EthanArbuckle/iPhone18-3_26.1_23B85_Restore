@interface CSStudiesServerUploadOutOfBandMetadata
- (CSStudiesServerUploadOutOfBandMetadata)initWithCoder:(id)coder;
- (CSStudiesServerUploadOutOfBandMetadata)initWithLookingBack:(double)back keyValuePairs:(id)pairs;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CSStudiesServerUploadOutOfBandMetadata

- (CSStudiesServerUploadOutOfBandMetadata)initWithLookingBack:(double)back keyValuePairs:(id)pairs
{
  pairsCopy = pairs;
  v11.receiver = self;
  v11.super_class = CSStudiesServerUploadOutOfBandMetadata;
  v8 = [(CSStudiesServerUploadOutOfBandMetadata *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_lookBack = back;
    objc_storeStrong(&v8->_keyValuePairs, pairs);
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(CSStudiesServerUploadOutOfBandMetadata *)self lookBack];
  [coderCopy encodeDouble:@"kCSStudiesServerUploadOOBMetadataLookBackKey" forKey:?];
  keyValuePairs = [(CSStudiesServerUploadOutOfBandMetadata *)self keyValuePairs];
  [coderCopy encodeObject:keyValuePairs forKey:@"kCSStudiesServerUploadOOBMetadataKeyValuePairsEncoderKey"];
}

- (CSStudiesServerUploadOutOfBandMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeDoubleForKey:@"kCSStudiesServerUploadOOBMetadataLookBackKey"];
  v6 = v5;
  v7 = objc_opt_class();
  v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kCSStudiesServerUploadOOBMetadataKeyValuePairsEncoderKey"];
  v10 = [(CSStudiesServerUploadOutOfBandMetadata *)self initWithLookingBack:v9 keyValuePairs:v6];

  return v10;
}

@end