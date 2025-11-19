@interface PIPortraitVideoMetadataSample
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPIPortraitVideoMetadataSample:(id)a3;
- (PIPortraitVideoMetadataSample)initWithMetadataGroup:(id)a3 majorVersion:(unsigned int)a4 minorVersion:(unsigned int)a5 error:(id *)a6;
- (id)valueWithIdentifier:(id)a3 inGroup:(id)a4 ofClass:(Class)a5;
- (unint64_t)hash;
- (void)nu_updateDigest:(id)a3;
@end

@implementation PIPortraitVideoMetadataSample

- (unint64_t)hash
{
  v3 = 0xAA676A18E7 * self->_dataDigest;
  v4 = [(PIPortraitVideoMetadataSample *)self timedMetadata];
  v5 = (0xA0538F1583 * [v4 majorVersion]) ^ v3;

  v6 = [(PIPortraitVideoMetadataSample *)self timedMetadata];
  v7 = 0x641F3AC4E7 * [v6 minorVersion];

  return v5 ^ v7;
}

- (void)nu_updateDigest:(id)a3
{
  v4 = a3;
  [v4 addBytes:&self->_dataDigest length:8];
  v5 = [(PIPortraitVideoMetadataSample *)self timedMetadata];
  v6 = [v5 majorVersion];

  v9 = v6;
  v7 = [(PIPortraitVideoMetadataSample *)self timedMetadata];
  LODWORD(v5) = [v7 minorVersion];

  v8 = v5;
  [v4 addBytes:&v9 length:4];
  [v4 addBytes:&v8 length:4];
}

- (BOOL)isEqualToPIPortraitVideoMetadataSample:(id)a3
{
  v4 = a3;
  dataDigest = self->_dataDigest;
  v6 = v4[1];
  v7 = [(PIPortraitVideoMetadataSample *)self timedMetadata];
  v8 = [v7 majorVersion];
  v9 = [v4 timedMetadata];
  if (v8 == [v9 majorVersion])
  {
    v10 = [(PIPortraitVideoMetadataSample *)self timedMetadata];
    v11 = [v10 minorVersion];
    v12 = [v4 timedMetadata];
    v13 = v11 == [v12 minorVersion];
  }

  else
  {
    v13 = 0;
  }

  return dataDigest == v6 && v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PIPortraitVideoMetadataSample *)self isEqualToPIPortraitVideoMetadataSample:v4];
  }

  return v5;
}

- (id)valueWithIdentifier:(id)a3 inGroup:(id)a4 ofClass:(Class)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = MEMORY[0x1E6987FE0];
  v9 = [a4 items];
  v10 = [v8 metadataItemsFromArray:v9 filteredByIdentifier:v7];

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
        v21 = v7;
        v22 = 2112;
        v23 = v10;
        _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "PIPortraitVideoMetadataSample: unexpected number of items for identifier %@: %@", &v20, 0x16u);
      }
    }

    v15 = [v10 firstObject];
    v16 = [v15 value];

    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
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
        v21 = v16;
        v22 = 2112;
        v23 = a5;
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

- (PIPortraitVideoMetadataSample)initWithMetadataGroup:(id)a3 majorVersion:(unsigned int)a4 minorVersion:(unsigned int)a5 error:(id *)a6
{
  v7 = *&a5;
  v8 = *&a4;
  v11 = a3;
  if (v11)
  {
    if (a6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PIPortraitVideoMetadata.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"metadataGroup != nil"}];

    if (a6)
    {
      goto LABEL_3;
    }
  }

  v21 = [MEMORY[0x1E696AAA8] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"PIPortraitVideoMetadata.m" lineNumber:47 description:{@"Invalid parameter not satisfying: %@", @"outError != NULL"}];

LABEL_3:
  v22.receiver = self;
  v22.super_class = PIPortraitVideoMetadataSample;
  v12 = [(PIPortraitVideoMetadataSample *)&v22 init];
  if (v12)
  {
    v13 = [(PIPortraitVideoMetadataSample *)v12 valueWithIdentifier:@"mdta/com.apple.quicktime.cinematic-video.rendering" inGroup:v11 ofClass:objc_opt_class()];
    if (v13)
    {
      v14 = [MEMORY[0x1E69C4FC8] objectFromData:v13 withMajorVersion:v8 minorVersion:v7];
      [(PIPortraitVideoMetadataSample *)v12 setTimedMetadata:v14];

      v12->_dataDigest = [v13 hash];
      v15 = [(PIPortraitVideoMetadataSample *)v12 timedMetadata];

      if (v15)
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
      v18 = v11;
    }

    *a6 = [v16 invalidError:v17 object:v18];

    v12 = 0;
    goto LABEL_9;
  }

LABEL_10:

  return v12;
}

@end