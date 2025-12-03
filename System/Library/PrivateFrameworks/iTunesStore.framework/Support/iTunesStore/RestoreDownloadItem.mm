@interface RestoreDownloadItem
- (RestoreDownloadItem)initWithDownloadIdentifier:(int64_t)identifier;
- (id)copyRestoreDictionary;
- (void)dealloc;
@end

@implementation RestoreDownloadItem

- (RestoreDownloadItem)initWithDownloadIdentifier:(int64_t)identifier
{
  v5.receiver = self;
  v5.super_class = RestoreDownloadItem;
  result = [(RestoreDownloadItem *)&v5 init];
  if (result)
  {
    result->_downloadIdentifier = identifier;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = RestoreDownloadItem;
  [(RestoreDownloadItem *)&v3 dealloc];
}

- (id)copyRestoreDictionary
{
  v7.receiver = self;
  v7.super_class = RestoreDownloadItem;
  copyRestoreDictionary = [(RestoreDownloadItem *)&v7 copyRestoreDictionary];
  [(RestoreDownloadItem *)self downloadKind];
  if (SSDownloadKindIsSoftwareKind())
  {
    vendorIdentifier = self->_vendorIdentifier;
    if (vendorIdentifier || (v6 = -[RestoreDownloadItem bundleID](self, "bundleID")) != 0 && (vendorIdentifier = [objc_msgSend(+[LSApplicationProxy applicationProxyForIdentifier:placeholder:](LSApplicationProxy applicationProxyForIdentifier:v6 placeholder:{1), "deviceIdentifierForVendor"), "UUIDString"}]) != 0)
    {
      [copyRestoreDictionary setObject:vendorIdentifier forKey:@"vid"];
    }
  }

  return copyRestoreDictionary;
}

@end