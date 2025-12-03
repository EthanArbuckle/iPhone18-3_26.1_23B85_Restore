@interface DemotedApplication
- (DemotedApplication)initWithApplication:(id)application;
- (DemotedApplication)initWithDictionaryRepresentation:(id)representation;
- (NSDictionary)dictionaryRepresentation;
- (RestoreDownloadItem)restoreDownloadItem;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation DemotedApplication

- (DemotedApplication)initWithApplication:(id)application
{
  applicationCopy = application;
  v24.receiver = self;
  v24.super_class = DemotedApplication;
  v5 = [(DemotedApplication *)&v24 init];
  if (v5)
  {
    applicationDSID = [applicationCopy applicationDSID];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = applicationDSID;

    downloaderDSID = [applicationCopy downloaderDSID];
    downloaderIdentifier = v5->_downloaderIdentifier;
    v5->_downloaderIdentifier = downloaderDSID;

    externalVersionIdentifier = [applicationCopy externalVersionIdentifier];
    externalVersionIdentifier = v5->_externalVersionIdentifier;
    v5->_externalVersionIdentifier = externalVersionIdentifier;

    familyID = [applicationCopy familyID];
    familyIdentifier = v5->_familyIdentifier;
    v5->_familyIdentifier = familyID;

    itemID = [applicationCopy itemID];
    itemIdentifier = v5->_itemIdentifier;
    v5->_itemIdentifier = itemID;

    purchaserDSID = [applicationCopy purchaserDSID];
    purchaserIdentifier = v5->_purchaserIdentifier;
    v5->_purchaserIdentifier = purchaserDSID;

    storeFront = [applicationCopy storeFront];
    storeFrontIdentifier = v5->_storeFrontIdentifier;
    v5->_storeFrontIdentifier = storeFront;

    deviceIdentifierForVendor = [applicationCopy deviceIdentifierForVendor];
    uUIDString = [deviceIdentifierForVendor UUIDString];
    vendorIdentifier = v5->_vendorIdentifier;
    v5->_vendorIdentifier = uUIDString;
  }

  return v5;
}

- (DemotedApplication)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v15.receiver = self;
  v15.super_class = DemotedApplication;
  v5 = [(DemotedApplication *)&v15 init];
  if (v5)
  {
    v6 = [representationCopy objectForKey:@"accountId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v5->_accountIdentifier, v6);
    }

    v7 = [representationCopy objectForKey:@"downloaderId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v5->_downloaderIdentifier, v7);
    }

    v8 = [representationCopy objectForKey:@"softwareVersionExternalIdentifier"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v5->_externalVersionIdentifier, v8);
    }

    v9 = [representationCopy objectForKey:@"familyId"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v5->_familyIdentifier, v9);
    }

    v10 = [representationCopy objectForKey:@"itemId"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v5->_itemIdentifier, v10);
    }

    v11 = [representationCopy objectForKey:@"purchaserId"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v5->_purchaserIdentifier, v11);
    }

    v12 = [representationCopy objectForKey:@"s"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v5->_storeFrontIdentifier, v12);
    }

    v13 = [representationCopy objectForKey:@"vid"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&v5->_vendorIdentifier, v13);
    }
  }

  return v5;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  externalVersionIdentifier = self->_externalVersionIdentifier;
  if (externalVersionIdentifier)
  {
    [v3 setObject:externalVersionIdentifier forKey:@"softwareVersionExternalIdentifier"];
  }

  itemIdentifier = self->_itemIdentifier;
  if (itemIdentifier)
  {
    [v4 setObject:itemIdentifier forKey:@"itemId"];
  }

  storeFrontIdentifier = self->_storeFrontIdentifier;
  if (storeFrontIdentifier)
  {
    [v4 setObject:storeFrontIdentifier forKey:@"s"];
  }

  vendorIdentifier = self->_vendorIdentifier;
  if (vendorIdentifier)
  {
    [v4 setObject:vendorIdentifier forKey:@"vid"];
  }

  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier)
  {
    [v4 setObject:accountIdentifier forKey:@"accountId"];
  }

  downloaderIdentifier = self->_downloaderIdentifier;
  if (downloaderIdentifier)
  {
    [v4 setObject:downloaderIdentifier forKey:@"downloaderId"];
  }

  familyIdentifier = self->_familyIdentifier;
  if (familyIdentifier)
  {
    [v4 setObject:familyIdentifier forKey:@"familyId"];
  }

  purchaserIdentifier = self->_purchaserIdentifier;
  if (purchaserIdentifier)
  {
    [v4 setObject:purchaserIdentifier forKey:@"purchaserId"];
  }

  return v4;
}

- (RestoreDownloadItem)restoreDownloadItem
{
  v3 = objc_alloc_init(RestoreDownloadItem);
  [(RestoreDownloadItem *)v3 setDownloadKind:SSDownloadKindSoftwareApplication];
  [(RestoreDownloadItem *)v3 setHasRestoreData:0];
  [(RestoreDownloadItem *)v3 setRestoreDataSize:0];
  stringValue = [(NSNumber *)self->_storeFrontIdentifier stringValue];
  [(RestoreDownloadItem *)v3 setStoreFrontID:stringValue];

  [(RestoreDownloadItem *)v3 setStoreItemID:self->_itemIdentifier];
  stringValue2 = [(NSNumber *)self->_externalVersionIdentifier stringValue];
  [(RestoreDownloadItem *)v3 setStoreSoftwareVersionID:stringValue2];

  [(RestoreDownloadItem *)v3 setVendorIdentifier:self->_vendorIdentifier];
  if ([(NSNumber *)self->_familyIdentifier longLongValue])
  {
    [(RestoreDownloadItem *)v3 setStoreAccountID:self->_downloaderIdentifier];
    [(RestoreDownloadItem *)v3 setStoreOriginalPurchaserAccountID:self->_purchaserIdentifier];
  }

  else
  {
    v6 = SSAccountGetUniqueIdentifierFromValue();
    [(RestoreDownloadItem *)v3 setStoreAccountID:v6];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setAccountIdentifier:self->_accountIdentifier];
  [v4 setDownloaderIdentifier:self->_downloaderIdentifier];
  [v4 setExternalVersionIdentifier:self->_externalVersionIdentifier];
  [v4 setFamilyIdentifier:self->_familyIdentifier];
  [v4 setItemIdentifier:self->_itemIdentifier];
  [v4 setPurchaserIdentifier:self->_purchaserIdentifier];
  [v4 setStoreFrontIdentifier:self->_storeFrontIdentifier];
  [v4 setVendorIdentifier:self->_vendorIdentifier];
  return v4;
}

@end