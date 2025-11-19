@interface FinishDownloadAssetMemoryEntity
+ (id)defaultProperties;
- (BOOL)isDRMFree;
- (BOOL)isExternalAsset;
- (NSArray)SINFs;
- (NSDictionary)fileAttributes;
- (NSString)destinationFileName;
- (NSString)localPath;
- (int64_t)mediaLibraryProtectionType;
- (unint64_t)processingTypes;
@end

@implementation FinishDownloadAssetMemoryEntity

- (NSString)destinationFileName
{
  v3 = [(FinishDownloadAssetMemoryEntity *)self destinationURLString];
  if (v3)
  {
    v4 = [[NSURL alloc] initWithString:v3];
    if ([v4 isFileURL])
    {
      if (v4)
      {
        v5 = [v4 lastPathComponent];
        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  v4 = [(FinishDownloadAssetMemoryEntity *)self pathExtension];
  if (![v4 length])
  {
    v6 = [(FinishDownloadAssetMemoryEntity *)self localPath];
    v7 = [v6 pathExtension];

    v4 = v7;
  }

  v8 = [(FinishDownloadAssetMemoryEntity *)self sourceURLString];
  if (![v4 length] && v8)
  {
    v9 = [[NSURL alloc] initWithString:v8];
    v10 = [v9 pathExtension];

    v4 = v10;
  }

  v5 = [NSString stringWithFormat:@"%lld", [(FinishDownloadAssetMemoryEntity *)self databaseID]];
  if ([v4 length])
  {
    v11 = [v5 stringByAppendingPathExtension:v4];

    v5 = v11;
  }

LABEL_14:

  return v5;
}

- (NSDictionary)fileAttributes
{
  v2 = [(FinishDownloadAssetMemoryEntity *)self fileProtectionType];
  if ([v2 length])
  {
    v3 = [NSDictionary dictionaryWithObjectsAndKeys:v2, NSFileProtectionKey, 0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isDRMFree
{
  v2 = [(FinishDownloadAssetMemoryEntity *)self valueForProperty:@"is_drm_free"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isExternalAsset
{
  v2 = [(FinishDownloadAssetMemoryEntity *)self valueForProperty:@"is_external"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (int64_t)mediaLibraryProtectionType
{
  v2 = [(FinishDownloadAssetMemoryEntity *)self valueForProperty:@"protection_type"];
  v3 = [v2 integerValue];

  return v3;
}

- (NSString)localPath
{
  v3 = [(FinishDownloadAssetMemoryEntity *)self valueForProperty:@"local_path"];
  if (!v3)
  {
    v4 = [(FinishDownloadAssetMemoryEntity *)self valueForProperty:@"is_hls"];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v4 BOOLValue])
    {
      v5 = [(FinishDownloadAssetMemoryEntity *)self downloadKind];
      v6 = sub_10020F36C(v5);

      v7 = [(FinishDownloadAssetMemoryEntity *)self destinationFileName];
      v3 = [v6 stringByAppendingPathComponent:v7];
    }

    else
    {
      v8 = [(FinishDownloadAssetMemoryEntity *)self valueForProperty:@"download_id"];
      v9 = [v8 longLongValue];

      v10 = [(FinishDownloadAssetMemoryEntity *)self databaseID];
      v6 = [(FinishDownloadAssetMemoryEntity *)self downloadKind];
      v3 = [ScratchManager directoryPathForDownloadID:v9 assetID:v10 kind:v6 createIfNeeded:1];
    }
  }

  return v3;
}

- (unint64_t)processingTypes
{
  v2 = [(FinishDownloadAssetMemoryEntity *)self valueForProperty:@"processing_types"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (NSArray)SINFs
{
  v2 = [(FinishDownloadAssetMemoryEntity *)self SINFData];
  if (v2)
  {
    v3 = [NSPropertyListSerialization propertyListWithData:v2 options:0 format:0 error:0];
    objc_opt_class();
    v4 = 0;
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)defaultProperties
{
  v4[0] = @"destination_url";
  v4[1] = @"download_id";
  v4[2] = @"dpinfo_data";
  v4[3] = @"file_protection";
  v4[4] = @"is_drm_free";
  v4[5] = @"is_external";
  v4[6] = @"is_hls";
  v4[7] = @"path_extension";
  v4[8] = @"processing_types";
  v4[9] = @"protection_type";
  v4[10] = @"local_path";
  v4[11] = @"sinfs_data";
  v4[12] = @"asset_type";
  v4[13] = @"url";
  v4[14] = @"variant_id";
  v2 = [NSArray arrayWithObjects:v4 count:15];

  return v2;
}

@end