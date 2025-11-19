@interface PXStorageTipListItem
+ (unint64_t)storageTipTypeForCloudQuotaUsedBytesIdentifier:(id)a3;
- (PXStorageTipListItem)initWithStorageTipType:(unint64_t)a3 count:(int64_t)a4 totalSizeInBytes:(int64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PXStorageTipListItem

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PXStorageTipListItem allocWithZone:a3];
  totalSizeInBytes = self->_totalSizeInBytes;
  storageTipType = self->_storageTipType;
  count = self->_count;

  return [(PXStorageTipListItem *)v4 initWithStorageTipType:storageTipType count:count totalSizeInBytes:totalSizeInBytes];
}

- (PXStorageTipListItem)initWithStorageTipType:(unint64_t)a3 count:(int64_t)a4 totalSizeInBytes:(int64_t)a5
{
  v19.receiver = self;
  v19.super_class = PXStorageTipListItem;
  v9 = [(PXStorageTipListItem *)&v19 init];
  v10 = v9;
  if (v9)
  {
    v9->_storageTipType = a3;
    if (a3 > 1)
    {
      if (a3 != 2)
      {
        if (a3 == 3)
        {
          v18 = [MEMORY[0x1E696AAA8] currentHandler];
          [v18 handleFailureInMethod:a2 object:v10 file:@"PXStorageTipListItem.m" lineNumber:40 description:@"Code which should be unreachable has been reached"];

          abort();
        }

        goto LABEL_10;
      }

      v11 = MEMORY[0x1E6978D50];
      v12 = @"video";
      v13 = @"STORAGE_MANAGEMENT_REVIEW_LARGE_VIDEOS_ALBUM_TITLE";
    }

    else if (a3)
    {
      if (a3 != 1)
      {
LABEL_10:
        v10->_count = a4;
        v10->_totalSizeInBytes = a5;
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

+ (unint64_t)storageTipTypeForCloudQuotaUsedBytesIdentifier:(id)a3
{
  v5 = a3;
  if ([v5 isEqualToString:*MEMORY[0x1E6978D40]])
  {
    v6 = 0;
  }

  else if ([v5 isEqualToString:*MEMORY[0x1E6978D48]])
  {
    v6 = 1;
  }

  else
  {
    if (([v5 isEqualToString:*MEMORY[0x1E6978D50]] & 1) == 0)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:a1 file:@"PXStorageTipListItem.m" lineNumber:59 description:@"Attempted to get PXStorageTipType for unknown CloudQuotaUsedBytesIdentifier"];

      abort();
    }

    v6 = 2;
  }

  return v6;
}

@end