@interface ICQAppCloudStorage
- (ICQAppCloudStorage)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICQAppCloudStorage

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(ICQAppCloudStorage);
  [(ICQAppCloudStorage *)v4 setBundleID:self->_bundleID];
  [(ICQAppCloudStorage *)v4 setStorageUsed:self->_storageUsed];
  [(ICQAppCloudStorage *)v4 setRuiURL:self->_ruiURL];
  [(ICQAppCloudStorage *)v4 setLiftUIURL:self->_liftUIURL];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  bundleID = self->_bundleID;
  coderCopy = coder;
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];
  [coderCopy encodeObject:self->_storageUsed forKey:@"storageUsed"];
  [coderCopy encodeObject:self->_ruiURL forKey:@"ruiURL"];
  [coderCopy encodeObject:self->_liftUIURL forKey:@"liftUIURL"];
}

- (ICQAppCloudStorage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = ICQAppCloudStorage;
  v5 = [(ICQAppCloudStorage *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storageUsed"];
    storageUsed = v5->_storageUsed;
    v5->_storageUsed = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ruiURL"];
    ruiURL = v5->_ruiURL;
    v5->_ruiURL = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"liftUIURL"];
    liftUIURL = v5->_liftUIURL;
    v5->_liftUIURL = v12;
  }

  return v5;
}

@end