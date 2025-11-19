@interface SSRestoreContentItem
- (BOOL)isDRMFree;
- (BOOL)isEligibleForRestore:(id *)a3;
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
- (SSRestoreContentItem)initWithRestoreDownload:(id)a3;
- (id)_initSSRestoreContentItem;
- (id)_restoreKeyForAssetProperty:(id)a3;
- (id)_restoreKeyForDownloadProperty:(id)a3;
- (id)copyRestoreDictionary;
- (void)_setValue:(id)a3 forProperty:(id)a4;
- (void)dealloc;
- (void)setCloudMatchStatus:(id)a3;
- (void)setDRMFree:(BOOL)a3;
- (void)setStoreAccountAppleID:(id)a3;
- (void)setStoreAccountID:(id)a3;
- (void)setStoreOriginalPurchaserAccountID:(id)a3;
- (void)setValue:(id)a3 forAssetProperty:(id)a4;
- (void)setValue:(id)a3 forDownloadProperty:(id)a4;
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

- (SSRestoreContentItem)initWithRestoreDownload:(id)a3
{
  v11[12] = *MEMORY[0x1E69E9840];
  v4 = [(SSRestoreContentItem *)self _initSSRestoreContentItem];
  if (v4)
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
    [a3 getValues:v10 forProperties:v11 count:12];
    for (i = 0; i != 12; ++i)
    {
      [(SSRestoreContentItem *)v4 setValue:*&v10[i * 8] forDownloadProperty:v11[i]];
    }

    v9[0] = @"h";
    v9[1] = @"f";
    v9[2] = @"g";
    [objc_msgSend(objc_msgSend(a3 assetsForType:{@"media", "lastObject"), "getValues:forProperties:count:", v8, v9, 3}];
    for (j = 0; j != 3; ++j)
    {
      [(SSRestoreContentItem *)v4 setValue:*&v8[j * 8] forAssetProperty:v9[j]];
    }
  }

  return v4;
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

- (BOOL)isEligibleForRestore:(id *)a3
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
    if (!a3)
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
  if (a3)
  {
LABEL_27:
    *a3 = v10;
  }

  return v11;
}

- (NSString)podcastEpisodeGUID
{
  v2 = [(NSMutableDictionary *)self->_properties objectForKey:@"episode-guid"];

  return v2;
}

- (void)setCloudMatchStatus:(id)a3
{
  cloudMatchStatus = self->_cloudMatchStatus;
  if (cloudMatchStatus != a3)
  {

    self->_cloudMatchStatus = a3;
  }
}

- (void)setDRMFree:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];

  [(SSRestoreContentItem *)self _setValue:v4 forProperty:@"drm-free"];
}

- (void)setStoreOriginalPurchaserAccountID:(id)a3
{
  originalPurchaserAccountID = self->_originalPurchaserAccountID;
  if (originalPurchaserAccountID != a3)
  {

    self->_originalPurchaserAccountID = a3;
  }
}

- (void)setStoreAccountAppleID:(id)a3
{
  appleID = self->_appleID;
  if (appleID != a3)
  {

    self->_appleID = [a3 copy];
  }
}

- (void)setStoreAccountID:(id)a3
{
  accountID = self->_accountID;
  if (accountID != a3)
  {

    self->_accountID = a3;
  }
}

- (void)setValue:(id)a3 forAssetProperty:(id)a4
{
  v6 = [(SSRestoreContentItem *)self _restoreKeyForAssetProperty:a4];

  [(SSRestoreContentItem *)self _setValue:a3 forProperty:v6];
}

- (void)setValue:(id)a3 forDownloadProperty:(id)a4
{
  v7 = [(SSRestoreContentItem *)self _restoreKeyForDownloadProperty:a4];
  if (v7)
  {

    [(SSRestoreContentItem *)self _setValue:a3 forProperty:v7];
  }

  else if ([a4 isEqualToString:@"c"])
  {

    [(SSRestoreContentItem *)self setBundleID:a3];
  }

  else if ([a4 isEqualToString:@"V"])
  {
    self->_isRestore = [a3 BOOLValue];
  }

  else if ([a4 isEqualToString:@"Z"])
  {

    [(SSRestoreContentItem *)self setStoreAccountAppleID:a3];
  }

  else if ([a4 isEqualToString:@"U"])
  {

    [(SSRestoreContentItem *)self setStoreAccountID:a3];
  }

  else if ([a4 isEqualToString:@"01"])
  {

    [(SSRestoreContentItem *)self setCloudMatchStatus:a3];
  }

  else if ([a4 isEqualToString:@"2"])
  {

    [(SSRestoreContentItem *)self setTitle:a3];
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

- (id)_restoreKeyForAssetProperty:(id)a3
{
  v4 = 0;
  v9 = *MEMORY[0x1E69E9840];
  v6 = @"f";
  v7 = @"g";
  v8 = @"h";
  while (![(__CFString *)*(&v6 + v4 * 8) isEqualToString:a3, v6, v7, v8, v9])
  {
    if (++v4 == 3)
    {
      return 0;
    }
  }

  return off_1E84B0C30[v4];
}

- (id)_restoreKeyForDownloadProperty:(id)a3
{
  v4 = 0;
  v6[6] = *MEMORY[0x1E69E9840];
  v6[0] = @"1";
  v6[1] = @"A";
  v6[2] = @"7";
  v6[3] = @"4";
  v6[4] = @"T";
  v6[5] = @"R";
  while (![v6[v4] isEqualToString:a3])
  {
    if (++v4 == 6)
    {
      return 0;
    }
  }

  return off_1E84B0C48[v4];
}

- (void)_setValue:(id)a3 forProperty:(id)a4
{
  if (a4)
  {
    if (a3)
    {
      if ([a3 conformsToProtocol:&unk_1F507D4B0])
      {
        v9 = [a3 copy];
        [(NSMutableDictionary *)self->_properties setObject:v9 forKey:a4];
      }

      else
      {
        properties = self->_properties;

        [(NSMutableDictionary *)properties setObject:a3 forKey:a4];
      }
    }

    else
    {
      v7 = self->_properties;

      [(NSMutableDictionary *)v7 removeObjectForKey:a4];
    }
  }
}

@end