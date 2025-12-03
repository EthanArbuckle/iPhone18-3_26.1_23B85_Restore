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
  destinationURLString = [(FinishDownloadAssetMemoryEntity *)self destinationURLString];
  if (destinationURLString)
  {
    pathExtension = [[NSURL alloc] initWithString:destinationURLString];
    if ([pathExtension isFileURL])
    {
      if (pathExtension)
      {
        lastPathComponent = [pathExtension lastPathComponent];
        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  pathExtension = [(FinishDownloadAssetMemoryEntity *)self pathExtension];
  if (![pathExtension length])
  {
    localPath = [(FinishDownloadAssetMemoryEntity *)self localPath];
    pathExtension2 = [localPath pathExtension];

    pathExtension = pathExtension2;
  }

  sourceURLString = [(FinishDownloadAssetMemoryEntity *)self sourceURLString];
  if (![pathExtension length] && sourceURLString)
  {
    v9 = [[NSURL alloc] initWithString:sourceURLString];
    pathExtension3 = [v9 pathExtension];

    pathExtension = pathExtension3;
  }

  lastPathComponent = [NSString stringWithFormat:@"%lld", [(FinishDownloadAssetMemoryEntity *)self databaseID]];
  if ([pathExtension length])
  {
    v11 = [lastPathComponent stringByAppendingPathExtension:pathExtension];

    lastPathComponent = v11;
  }

LABEL_14:

  return lastPathComponent;
}

- (NSDictionary)fileAttributes
{
  fileProtectionType = [(FinishDownloadAssetMemoryEntity *)self fileProtectionType];
  if ([fileProtectionType length])
  {
    v3 = [NSDictionary dictionaryWithObjectsAndKeys:fileProtectionType, NSFileProtectionKey, 0];
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
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isExternalAsset
{
  v2 = [(FinishDownloadAssetMemoryEntity *)self valueForProperty:@"is_external"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (int64_t)mediaLibraryProtectionType
{
  v2 = [(FinishDownloadAssetMemoryEntity *)self valueForProperty:@"protection_type"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (NSString)localPath
{
  v3 = [(FinishDownloadAssetMemoryEntity *)self valueForProperty:@"local_path"];
  if (!v3)
  {
    v4 = [(FinishDownloadAssetMemoryEntity *)self valueForProperty:@"is_hls"];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [v4 BOOLValue])
    {
      downloadKind = [(FinishDownloadAssetMemoryEntity *)self downloadKind];
      downloadKind2 = sub_10020F36C(downloadKind);

      destinationFileName = [(FinishDownloadAssetMemoryEntity *)self destinationFileName];
      v3 = [downloadKind2 stringByAppendingPathComponent:destinationFileName];
    }

    else
    {
      v8 = [(FinishDownloadAssetMemoryEntity *)self valueForProperty:@"download_id"];
      longLongValue = [v8 longLongValue];

      databaseID = [(FinishDownloadAssetMemoryEntity *)self databaseID];
      downloadKind2 = [(FinishDownloadAssetMemoryEntity *)self downloadKind];
      v3 = [ScratchManager directoryPathForDownloadID:longLongValue assetID:databaseID kind:downloadKind2 createIfNeeded:1];
    }
  }

  return v3;
}

- (unint64_t)processingTypes
{
  v2 = [(FinishDownloadAssetMemoryEntity *)self valueForProperty:@"processing_types"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (NSArray)SINFs
{
  sINFData = [(FinishDownloadAssetMemoryEntity *)self SINFData];
  if (sINFData)
  {
    v3 = [NSPropertyListSerialization propertyListWithData:sINFData options:0 format:0 error:0];
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