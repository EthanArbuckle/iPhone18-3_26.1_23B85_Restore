@interface SSRestoreContentItem
- (BOOL)isDRMFree;
- (BOOL)isEligibleForRestore:(id *)restore;
- (NSNumber)cloudItemID;
- (NSNumber)cloudMatchStatus;
- (NSNumber)storeAccountID;
- (NSNumber)storeItemID;
- (NSNumber)storeOriginalPurchaserAccountID;
- (NSString)downloadKind;
- (NSString)podcastEpisodeGUID;
- (NSString)storeAccountAppleID;
- (NSString)storeFlavor;
- (NSString)storeFrontID;
- (NSString)storeSoftwareVersionID;
- (NSString)title;
- (NSString)videoDimensions;
- (SSRestoreContentItem)initWithRestoreDownload:(id)download;
- (id)_initSSRestoreContentItem;
- (id)_restoreKeyForAssetProperty:(id)property;
- (id)_restoreKeyForDownloadProperty:(id)property;
- (id)copyRestoreDictionary;
- (void)_setValue:(id)value forProperty:(id)property;
- (void)dealloc;
- (void)setCloudMatchStatus:(id)status;
- (void)setDRMFree:(BOOL)free;
- (void)setStoreAccountAppleID:(id)d;
- (void)setStoreAccountID:(id)d;
- (void)setStoreOriginalPurchaserAccountID:(id)d;
- (void)setValue:(id)value forAssetProperty:(id)property;
- (void)setValue:(id)value forDownloadProperty:(id)property;
@end

@implementation SSRestoreContentItem

- (id)_initSSRestoreContentItem
{
  v4.receiver = self;
  v4.super_class = SSRestoreContentItem;
  v2 = [(SSRestoreContentItem *)&v4 init];
  if (v2)
  {
    v2->_properties = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  return v2;
}

- (SSRestoreContentItem)initWithRestoreDownload:(id)download
{
  v11[12] = *MEMORY[0x1E69E9840];
  _initSSRestoreContentItem = [(SSRestoreContentItem *)self _initSSRestoreContentItem];
  if (_initSSRestoreContentItem)
  {
    v11[0] = @"c";
    v11[1] = @"A";
    v11[2] = @"1";
    v11[3] = @"V";
    v11[4] = @"U";
    v11[5] = @"Z";
    v11[6] = @"4";
    v11[7] = @"T";
    v11[8] = @"7";
    v11[9] = @"01";
    v11[10] = @"Y";
    v11[11] = @"R";
    [download getValues:v10 forProperties:v11 count:12];
    for (i = 0; i != 12; ++i)
    {
      [(SSRestoreContentItem *)_initSSRestoreContentItem setValue:*&v10[i * 8] forDownloadProperty:v11[i]];
    }

    v9[0] = @"h";
    v9[1] = @"f";
    v9[2] = @"g";
    [objc_msgSend(objc_msgSend(download assetsForType:{@"media", "lastObject"), "getValues:forProperties:count:", v8, v9, 3}];
    for (j = 0; j != 3; ++j)
    {
      [(SSRestoreContentItem *)_initSSRestoreContentItem setValue:*&v8[j * 8] forAssetProperty:v9[j]];
    }
  }

  return _initSSRestoreContentItem;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSRestoreContentItem;
  [(SSRestoreContentItem *)&v3 dealloc];
}

- (NSNumber)cloudItemID
{
  v2 = [(NSMutableDictionary *)self->_properties objectForKey:@"cloud-id"];

  return v2;
}

- (NSNumber)cloudMatchStatus
{
  v2 = self->_cloudMatchStatus;

  return v2;
}

- (id)copyRestoreDictionary
{
  v3 = 0;
  if ([(SSRestoreContentItem *)self isEligibleForRestore:0])
  {
    v3 = [(NSMutableDictionary *)self->_properties mutableCopy];
    if ([v3 objectForKey:@"flavor"])
    {
      [v3 removeObjectForKey:@"drm-free"];
      [v3 removeObjectForKey:@"dimensions"];
    }

    v4 = [v3 objectForKey:@"store-front-id"];
    if (v4 || (v4 = [+[SSDevice currentDevice](SSDevice "currentDevice")]) != 0)
    {
      [v3 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKey:{"stringWithFormat:", @"%ld", objc_msgSend(v4, "integerValue")), @"store-front-id"}];
    }

    originalPurchaserAccountID = self->_originalPurchaserAccountID;
    if (originalPurchaserAccountID)
    {
      [v3 setObject:originalPurchaserAccountID forKey:@"ownerDsid"];
    }
  }

  return v3;
}

- (NSString)downloadKind
{
  v2 = [(NSMutableDictionary *)self->_properties objectForKey:@"kind"];

  return v2;
}

- (BOOL)isDRMFree
{
  v2 = [(NSMutableDictionary *)self->_properties objectForKey:@"drm-free"];

  return [v2 BOOLValue];
}

- (BOOL)isEligibleForRestore:(id *)restore
{
  if (self->_isRestore)
  {
    v5 = SSGetItemIdentifierFromValue([(NSMutableDictionary *)self->_properties objectForKey:@"cloud-id"]);
    v6 = SSGetItemIdentifierFromValue([(NSMutableDictionary *)self->_properties objectForKey:@"item-id"]);
    v7 = [(NSMutableDictionary *)self->_properties objectForKey:@"kind"];
    if (SSDownloadKindIsPodcastKind(v7))
    {
      if (!v6 && ![(NSMutableDictionary *)self->_properties objectForKey:@"episode-guid"])
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (!(v5 | v6))
      {
LABEL_8:
        v8 = 116;
        goto LABEL_25;
      }

      if (!self->_accountID && !self->_appleID)
      {
        v8 = 119;
        goto LABEL_25;
      }

      if (!v7)
      {
        v8 = 117;
        goto LABEL_25;
      }

      if (SSDownloadKindIsMediaKind(v7))
      {
        if ([(NSMutableDictionary *)self->_properties objectForKey:@"dimensions"])
        {
          goto LABEL_20;
        }
      }

      else if ((SSDownloadKindIsEBookKind(v7, v9) & 1) == 0 && !SSDownloadKindIsToneKind(v7))
      {
        v10 = 0;
        goto LABEL_26;
      }

      if (![(NSMutableDictionary *)self->_properties objectForKey:@"drm-free"]&& ![(NSMutableDictionary *)self->_properties objectForKey:@"flavor"])
      {
        v8 = 118;
        goto LABEL_25;
      }
    }

LABEL_20:
    v10 = 0;
    v11 = 1;
    if (!restore)
    {
      return v11;
    }

    goto LABEL_27;
  }

  v8 = 100;
LABEL_25:
  v10 = SSError(@"SSErrorDomain", v8, 0, 0);
LABEL_26:
  v11 = 0;
  if (restore)
  {
LABEL_27:
    *restore = v10;
  }

  return v11;
}

- (NSString)podcastEpisodeGUID
{
  v2 = [(NSMutableDictionary *)self->_properties objectForKey:@"episode-guid"];

  return v2;
}

- (void)setCloudMatchStatus:(id)status
{
  cloudMatchStatus = self->_cloudMatchStatus;
  if (cloudMatchStatus != status)
  {

    self->_cloudMatchStatus = status;
  }
}

- (void)setDRMFree:(BOOL)free
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:free];

  [(SSRestoreContentItem *)self _setValue:v4 forProperty:@"drm-free"];
}

- (void)setStoreOriginalPurchaserAccountID:(id)d
{
  originalPurchaserAccountID = self->_originalPurchaserAccountID;
  if (originalPurchaserAccountID != d)
  {

    self->_originalPurchaserAccountID = d;
  }
}

- (void)setStoreAccountAppleID:(id)d
{
  appleID = self->_appleID;
  if (appleID != d)
  {

    self->_appleID = [d copy];
  }
}

- (void)setStoreAccountID:(id)d
{
  accountID = self->_accountID;
  if (accountID != d)
  {

    self->_accountID = d;
  }
}

- (void)setValue:(id)value forAssetProperty:(id)property
{
  v6 = [(SSRestoreContentItem *)self _restoreKeyForAssetProperty:property];

  [(SSRestoreContentItem *)self _setValue:value forProperty:v6];
}

- (void)setValue:(id)value forDownloadProperty:(id)property
{
  v7 = [(SSRestoreContentItem *)self _restoreKeyForDownloadProperty:property];
  if (v7)
  {

    [(SSRestoreContentItem *)self _setValue:value forProperty:v7];
  }

  else if ([property isEqualToString:@"c"])
  {

    [(SSRestoreContentItem *)self setBundleID:value];
  }

  else if ([property isEqualToString:@"V"])
  {
    self->_isRestore = [value BOOLValue];
  }

  else if ([property isEqualToString:@"Z"])
  {

    [(SSRestoreContentItem *)self setStoreAccountAppleID:value];
  }

  else if ([property isEqualToString:@"U"])
  {

    [(SSRestoreContentItem *)self setStoreAccountID:value];
  }

  else if ([property isEqualToString:@"01"])
  {

    [(SSRestoreContentItem *)self setCloudMatchStatus:value];
  }

  else if ([property isEqualToString:@"2"])
  {

    [(SSRestoreContentItem *)self setTitle:value];
  }
}

- (NSString)storeAccountAppleID
{
  v2 = self->_appleID;

  return v2;
}

- (NSNumber)storeAccountID
{
  v2 = self->_accountID;

  return v2;
}

- (NSString)storeFlavor
{
  v2 = [(NSMutableDictionary *)self->_properties objectForKey:@"flavor"];

  return v2;
}

- (NSString)storeFrontID
{
  v2 = [(NSMutableDictionary *)self->_properties objectForKey:@"store-front-id"];

  return v2;
}

- (NSNumber)storeItemID
{
  v2 = [(NSMutableDictionary *)self->_properties objectForKey:@"item-id"];

  return v2;
}

- (NSNumber)storeOriginalPurchaserAccountID
{
  v2 = self->_originalPurchaserAccountID;

  return v2;
}

- (NSString)storeSoftwareVersionID
{
  v2 = [(NSMutableDictionary *)self->_properties objectForKey:@"software-external-version-identifier"];

  return v2;
}

- (NSString)title
{
  v2 = [(NSMutableDictionary *)self->_properties objectForKey:@"title"];

  return v2;
}

- (NSString)videoDimensions
{
  v2 = [(NSMutableDictionary *)self->_properties objectForKey:@"dimensions"];

  return v2;
}

- (id)_restoreKeyForAssetProperty:(id)property
{
  v4 = 0;
  v9 = *MEMORY[0x1E69E9840];
  v6 = @"f";
  v7 = @"g";
  v8 = @"h";
  while (![(__CFString *)*(&v6 + v4 * 8) isEqualToString:property, v6, v7, v8, v9])
  {
    if (++v4 == 3)
    {
      return 0;
    }
  }

  return off_1E84B0C30[v4];
}

- (id)_restoreKeyForDownloadProperty:(id)property
{
  v4 = 0;
  v6[6] = *MEMORY[0x1E69E9840];
  v6[0] = @"1";
  v6[1] = @"A";
  v6[2] = @"7";
  v6[3] = @"4";
  v6[4] = @"T";
  v6[5] = @"R";
  while (![v6[v4] isEqualToString:property])
  {
    if (++v4 == 6)
    {
      return 0;
    }
  }

  return off_1E84B0C48[v4];
}

- (void)_setValue:(id)value forProperty:(id)property
{
  if (property)
  {
    if (value)
    {
      if ([value conformsToProtocol:&unk_1F507D4B0])
      {
        v9 = [value copy];
        [(NSMutableDictionary *)self->_properties setObject:v9 forKey:property];
      }

      else
      {
        properties = self->_properties;

        [(NSMutableDictionary *)properties setObject:value forKey:property];
      }
    }

    else
    {
      v7 = self->_properties;

      [(NSMutableDictionary *)v7 removeObjectForKey:property];
    }
  }
}

@end