@interface PXStorageTipListItem
+ (unint64_t)storageTipTypeForCloudQuotaUsedBytesIdentifier:(id)identifier;
- (PXStorageTipListItem)initWithStorageTipType:(unint64_t)type count:(int64_t)count totalSizeInBytes:(int64_t)bytes;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PXStorageTipListItem

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PXStorageTipListItem allocWithZone:zone];
  totalSizeInBytes = self->_totalSizeInBytes;
  storageTipType = self->_storageTipType;
  count = self->_count;

  return [(PXStorageTipListItem *)v4 initWithStorageTipType:storageTipType count:count totalSizeInBytes:totalSizeInBytes];
}

- (PXStorageTipListItem)initWithStorageTipType:(unint64_t)type count:(int64_t)count totalSizeInBytes:(int64_t)bytes
{
  v19.receiver = self;
  v19.super_class = PXStorageTipListItem;
  v9 = [(PXStorageTipListItem *)&v19 init];
  v10 = v9;
  if (v9)
  {
    v9->_storageTipType = type;
    if (type > 1)
    {
      if (type != 2)
      {
        if (type == 3)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:v10 file:@"PXStorageTipListItem.m" lineNumber:40 description:@"Code which should be unreachable has been reached"];

          abort();
        }

        goto LABEL_10;
      }

      v11 = MEMORY[0x1E6978D50];
      v12 = @"video";
      v13 = @"STORAGE_MANAGEMENT_REVIEW_LARGE_VIDEOS_ALBUM_TITLE";
    }

    else if (type)
    {
      if (type != 1)
      {
LABEL_10:
        v10->_count = count;
        v10->_totalSizeInBytes = bytes;
        return v10;
      }

      v11 = MEMORY[0x1E6978D48];
      v12 = @"camera.viewfinder";
      v13 = @"STORAGE_MANAGEMENT_REVIEW_SCREENSHOTS_ALBUM_TITLE";
    }

    else
    {
      v11 = MEMORY[0x1E6978D40];
      v12 = @"square.on.square";
      v13 = @"STORAGE_MANAGEMENT_REVIEW_DUPLICATES_ALBUM_TITLE";
    }

    v14 = PXLocalizedStringFromTable(v13, @"PhotosUICore");
    title = v10->_title;
    v10->_title = v14;

    systemImageName = v10->_systemImageName;
    v10->_systemImageName = &v12->isa;

    objc_storeStrong(&v10->_cloudQuotaBytesUsedIdentifier, *v11);
    goto LABEL_10;
  }

  return v10;
}

+ (unint64_t)storageTipTypeForCloudQuotaUsedBytesIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:*MEMORY[0x1E6978D40]])
  {
    v6 = 0;
  }

  else if ([identifierCopy isEqualToString:*MEMORY[0x1E6978D48]])
  {
    v6 = 1;
  }

  else
  {
    if (([identifierCopy isEqualToString:*MEMORY[0x1E6978D50]] & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXStorageTipListItem.m" lineNumber:59 description:@"Attempted to get PXStorageTipType for unknown CloudQuotaUsedBytesIdentifier"];

      abort();
    }

    v6 = 2;
  }

  return v6;
}

@end