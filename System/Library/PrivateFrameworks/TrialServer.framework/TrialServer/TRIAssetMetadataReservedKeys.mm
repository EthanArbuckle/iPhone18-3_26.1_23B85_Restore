@interface TRIAssetMetadataReservedKeys
+ ($61A80719B04F7407D3E47539F1B23CAA)compressionModeForMetadata:(id)metadata;
+ (BOOL)isEncryptedForMetadata:(id)metadata;
@end

@implementation TRIAssetMetadataReservedKeys

+ (BOOL)isEncryptedForMetadata:(id)metadata
{
  if (!metadata)
  {
    return 0;
  }

  v3 = [metadata objectForKeyedSubscript:@"trialIsEncrypted"];
  v4 = v3;
  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ ($61A80719B04F7407D3E47539F1B23CAA)compressionModeForMetadata:(id)metadata
{
  if (metadata)
  {
    v3 = [metadata objectForKeyedSubscript:@"__trialAppleFSCompressionMode"];
    lowercaseString = [v3 lowercaseString];

    v5 = lowercaseString && ([lowercaseString isEqualToString:@"lzbitmap"] & 1) != 0;
  }

  else
  {
    return 0;
  }

  return v5;
}

@end