@interface ICQAppCloudStorage
- (ICQAppCloudStorage)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICQAppCloudStorage

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(ICQAppCloudStorage);
  [(ICQAppCloudStorage *)v4 setBundleID:self->_bundleID];
  [(ICQAppCloudStorage *)v4 setStorageUsed:self->_storageUsed];
  [(ICQAppCloudStorage *)v4 setRuiURL:self->_ruiURL];
  [(ICQAppCloudStorage *)v4 setLiftUIURL:self->_liftUIURL];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  bundleID = self->_bundleID;
  v5 = a3;
  [v5 encodeObject:bundleID forKey:@"bundleID"];
  [v5 encodeObject:self->_storageUsed forKey:@"storageUsed"];
  [v5 encodeObject:self->_ruiURL forKey:@"ruiURL"];
  [v5 encodeObject:self->_liftUIURL forKey:@"liftUIURL"];
}

- (ICQAppCloudStorage)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ICQAppCloudStorage;
  v5 = [(ICQAppCloudStorage *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storageUsed"];
    storageUsed = v5->_storageUsed;
    v5->_storageUsed = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ruiURL"];
    ruiURL = v5->_ruiURL;
    v5->_ruiURL = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"liftUIURL"];
    liftUIURL = v5->_liftUIURL;
    v5->_liftUIURL = v12;
  }

  return v5;
}

@end