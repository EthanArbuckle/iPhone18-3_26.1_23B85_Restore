@interface PIPortraitVideoMetadataSample
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPIPortraitVideoMetadataSample:(id)sample;
- (PIPortraitVideoMetadataSample)initWithMetadataGroup:(id)group majorVersion:(unsigned int)version minorVersion:(unsigned int)minorVersion error:(id *)error;
- (id)valueWithIdentifier:(id)identifier inGroup:(id)group ofClass:(Class)class;
- (unint64_t)hash;
- (void)nu_updateDigest:(id)digest;
@end

@implementation PIPortraitVideoMetadataSample

- (unint64_t)hash
{
  v3 = 0xAA676A18E7 * self->_dataDigest;
  timedMetadata = [(PIPortraitVideoMetadataSample *)self timedMetadata];
  v5 = (0xA0538F1583 * [timedMetadata majorVersion]) ^ v3;

  timedMetadata2 = [(PIPortraitVideoMetadataSample *)self timedMetadata];
  v7 = 0x641F3AC4E7 * [timedMetadata2 minorVersion];

  return v5 ^ v7;
}

- (void)nu_updateDigest:(id)digest
{
  digestCopy = digest;
  [digestCopy addBytes:&self->_dataDigest length:8];
  timedMetadata = [(PIPortraitVideoMetadataSample *)self timedMetadata];
  majorVersion = [timedMetadata majorVersion];

  v9 = majorVersion;
  timedMetadata2 = [(PIPortraitVideoMetadataSample *)self timedMetadata];
  LODWORD(timedMetadata) = [timedMetadata2 minorVersion];

  v8 = timedMetadata;
  [digestCopy addBytes:&v9 length:4];
  [digestCopy addBytes:&v8 length:4];
}

- (BOOL)isEqualToPIPortraitVideoMetadataSample:(id)sample
{
  sampleCopy = sample;
  dataDigest = self->_dataDigest;
  v6 = sampleCopy[1];
  timedMetadata = [(PIPortraitVideoMetadataSample *)self timedMetadata];
  majorVersion = [timedMetadata majorVersion];
  timedMetadata2 = [sampleCopy timedMetadata];
  if (majorVersion == [timedMetadata2 majorVersion])
  {
    timedMetadata3 = [(PIPortraitVideoMetadataSample *)self timedMetadata];
    minorVersion = [timedMetadata3 minorVersion];
    timedMetadata4 = [sampleCopy timedMetadata];
    v13 = minorVersion == [timedMetadata4 minorVersion];
  }

  else
  {
    v13 = 0;
  }

  return dataDigest == v6 && v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PIPortraitVideoMetadataSample *)self isEqualToPIPortraitVideoMetadataSample:equalCopy];
  }

  return v5;
}

- (id)valueWithIdentifier:(id)identifier inGroup:(id)group ofClass:(Class)class
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v8 = MEMORY[0x1E6987FE0];
  items = [group items];
  v10 = [v8 metadataItemsFromArray:items filteredByIdentifier:identifierCopy];

  if ([v10 count])
  {
    v11 = [v10 count];
    v12 = MEMORY[0x1E69B3D78];
    v13 = MEMORY[0x1E69B3D80];
    if (v11 >= 2)
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_11899);
      }

      v14 = *v13;
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        v20 = 138412546;
        v21 = identifierCopy;
        v22 = 2112;
        classCopy = v10;
        _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "PIPortraitVideoMetadataSample: unexpected number of items for identifier %@: %@", &v20, 0x16u);
      }
    }

    firstObject = [v10 firstObject];
    value = [firstObject value];

    if (objc_opt_isKindOfClass())
    {
      v17 = value;
    }

    else
    {
      if (*v12 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_11899);
      }

      v18 = *v13;
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        v20 = 138412546;
        v21 = value;
        v22 = 2112;
        classCopy = class;
        _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "PIPortraitVideoMetadataSample: item %@ is not of expected class %@", &v20, 0x16u);
      }

      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (PIPortraitVideoMetadataSample)initWithMetadataGroup:(id)group majorVersion:(unsigned int)version minorVersion:(unsigned int)minorVersion error:(id *)error
{
  v7 = *&minorVersion;
  v8 = *&version;
  groupCopy = group;
  if (groupCopy)
  {
    if (error)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PIPortraitVideoMetadata.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"metadataGroup != nil"}];

    if (error)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PIPortraitVideoMetadata.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"outError != NULL"}];

LABEL_3:
  v22.receiver = self;
  v22.super_class = PIPortraitVideoMetadataSample;
  v12 = [(PIPortraitVideoMetadataSample *)&v22 init];
  if (v12)
  {
    v13 = [(PIPortraitVideoMetadataSample *)v12 valueWithIdentifier:@"mdta/com.apple.quicktime.cinematic-video.rendering" inGroup:groupCopy ofClass:objc_opt_class()];
    if (v13)
    {
      v14 = [MEMORY[0x1E69C4FC8] objectFromData:v13 withMajorVersion:v8 minorVersion:v7];
      [(PIPortraitVideoMetadataSample *)v12 setTimedMetadata:v14];

      v12->_dataDigest = [v13 hash];
      timedMetadata = [(PIPortraitVideoMetadataSample *)v12 timedMetadata];

      if (timedMetadata)
      {
LABEL_9:

        goto LABEL_10;
      }

      v16 = MEMORY[0x1E69B3A48];
      v17 = @"Could not decode timed rendering data";
      v18 = v13;
    }

    else
    {
      v16 = MEMORY[0x1E69B3A48];
      v17 = @"Missing rendering metadata";
      v18 = groupCopy;
    }

    *error = [v16 invalidError:v17 object:v18];

    v12 = 0;
    goto LABEL_9;
  }

LABEL_10:

  return v12;
}

@end