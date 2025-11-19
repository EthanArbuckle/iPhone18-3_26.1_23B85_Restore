@interface ICQBackupDevice
- (ICQBackupDevice)initWithCoder:(id)a3;
- (NSDictionary)rawDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICQBackupDevice

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(ICQBackupDevice);
  [(ICQBackupDevice *)v4 setDeviceName:self->_deviceName];
  [(ICQBackupDevice *)v4 setDeviceUDID:self->_deviceUDID];
  [(ICQBackupDevice *)v4 setDeviceSubtitle:self->_deviceSubtitle];
  [(ICQBackupDevice *)v4 setStorageUsedLabel:self->_storageUsedLabel];
  [(ICQBackupDevice *)v4 setStorageUsed:self->_storageUsed];
  [(ICQBackupDevice *)v4 setBackupSize:self->_backupSize];
  [(ICQBackupDevice *)v4 setImageURL:self->_imageURL];
  [(ICQBackupDevice *)v4 setLargeImageURL:self->_largeImageURL];
  [(ICQBackupDevice *)v4 setDetailViewController:self->_detailViewController];
  [(ICQBackupDevice *)v4 setBackupTimestamp:self->_backupTimestamp];
  [(ICQBackupDevice *)v4 setDeleteURL:self->_deleteURL];
  [(ICQBackupDevice *)v4 setDeleteButtonLabel:self->_deleteButtonLabel];
  [(ICQBackupDevice *)v4 setBackupFailedByinBytes:self->_backupFailedByinBytes];
  [(ICQBackupDevice *)v4 setBytesRequiredForBackup:self->_bytesRequiredForBackup];
  [(ICQBackupDevice *)v4 setIsActive:self->_isActive];
  [(ICQBackupDevice *)v4 setIsLocalBackup:self->_isLocalBackup];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  deviceName = self->_deviceName;
  v5 = a3;
  [v5 encodeObject:deviceName forKey:@"deviceName"];
  [v5 encodeObject:self->_deviceUDID forKey:@"deviceUDID"];
  [v5 encodeObject:self->_deviceSubtitle forKey:@"deviceSubtitle"];
  [v5 encodeObject:self->_storageUsedLabel forKey:@"storageUsedLabel"];
  [v5 encodeObject:self->_storageUsed forKey:@"storageUsed"];
  [v5 encodeObject:self->_backupSize forKey:@"backupSize"];
  [v5 encodeObject:self->_imageURL forKey:@"imageURL"];
  [v5 encodeObject:self->_largeImageURL forKey:@"largeImageURL"];
  [v5 encodeObject:self->_detailViewController forKey:@"detailViewController"];
  [v5 encodeObject:self->_backupTimestamp forKey:@"backupTimestamp"];
  [v5 encodeObject:self->_deleteURL forKey:@"deleteURL"];
  [v5 encodeObject:self->_deleteButtonLabel forKey:@"deleteButtonLabel"];
  [v5 encodeObject:self->_backupFailedByinBytes forKey:@"backupFailedByinBytes"];
  [v5 encodeObject:self->_bytesRequiredForBackup forKey:@"bytesRequiredForBackup"];
  [v5 encodeBool:self->_isActive forKey:@"isActive"];
  [v5 encodeBool:self->_isLocalBackup forKey:@"isLocalBackup"];
}

- (ICQBackupDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = ICQBackupDevice;
  v5 = [(ICQBackupDevice *)&v35 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceUDID"];
    deviceUDID = v5->_deviceUDID;
    v5->_deviceUDID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceSubtitle"];
    deviceSubtitle = v5->_deviceSubtitle;
    v5->_deviceSubtitle = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storageUsedLabel"];
    storageUsedLabel = v5->_storageUsedLabel;
    v5->_storageUsedLabel = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storageUsed"];
    storageUsed = v5->_storageUsed;
    v5->_storageUsed = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backupSize"];
    backupSize = v5->_backupSize;
    v5->_backupSize = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageURL"];
    imageURL = v5->_imageURL;
    v5->_imageURL = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"largeImageURL"];
    largeImageURL = v5->_largeImageURL;
    v5->_largeImageURL = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"detailViewController"];
    detailViewController = v5->_detailViewController;
    v5->_detailViewController = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backupTimestamp"];
    backupTimestamp = v5->_backupTimestamp;
    v5->_backupTimestamp = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deleteURL"];
    deleteURL = v5->_deleteURL;
    v5->_deleteURL = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deleteButtonLabel"];
    deleteButtonLabel = v5->_deleteButtonLabel;
    v5->_deleteButtonLabel = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"backupFailedByinBytes"];
    backupFailedByinBytes = v5->_backupFailedByinBytes;
    v5->_backupFailedByinBytes = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bytesRequiredForBackup"];
    bytesRequiredForBackup = v5->_bytesRequiredForBackup;
    v5->_bytesRequiredForBackup = v32;

    v5->_isActive = [v4 decodeBoolForKey:@"isActive"];
    v5->_isLocalBackup = [v4 decodeBoolForKey:@"isLocalBackup"];
  }

  return v5;
}

- (NSDictionary)rawDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setValue:@"button" forKey:@"class"];
  [v3 setValue:self->_deviceName forKey:@"deviceName"];
  [v3 setValue:self->_deviceUDID forKey:@"deviceUdid"];
  [v3 setValue:self->_deviceSubtitle forKey:@"subLabel"];
  [v3 setValue:self->_storageUsedLabel forKey:@"detailLabel"];
  [v3 setValue:self->_storageUsed forKey:@"backupSize"];
  v4 = [(ICQImageURL *)self->_imageURL URL1x];
  v5 = [v4 absoluteString];
  [v3 setValue:v5 forKey:@"image"];

  v6 = [(ICQImageURL *)self->_imageURL URL2x];
  v7 = [v6 absoluteString];
  [v3 setValue:v7 forKey:@"image2x"];

  v8 = [(ICQImageURL *)self->_imageURL URL3x];
  v9 = [v8 absoluteString];
  [v3 setValue:v9 forKey:@"image3x"];

  v10 = [(ICQImageURL *)self->_largeImageURL URL1x];
  v11 = [v10 absoluteString];
  [v3 setValue:v11 forKey:@"largeImage"];

  v12 = [(ICQImageURL *)self->_largeImageURL URL2x];
  v13 = [v12 absoluteString];
  [v3 setValue:v13 forKey:@"largeImage2x"];

  v14 = [(ICQImageURL *)self->_largeImageURL URL3x];
  v15 = [v14 absoluteString];
  [v3 setValue:v15 forKey:@"largeImage3x"];

  [v3 setValue:self->_backupTimestamp forKey:@"backupTimestamp"];
  v16 = [(NSURL *)self->_deleteURL absoluteString];
  [v3 setValue:v16 forKey:@"deleteURL"];

  [v3 setValue:MEMORY[0x277CBEC38] forKey:@"forceFullSizeDetailLabel"];
  [v3 setValue:@"disclosure" forKey:@"accessory"];
  [v3 setValue:self->_deviceName forKey:@"label"];
  [v3 setValue:self->_deviceSubtitle forKey:@"sublabel"];
  [v3 setValue:@"localBackup" forKey:@"name"];
  [v3 setValue:@"currentDeviceBackUp" forKey:@"id"];
  [v3 setValue:&unk_288443B50 forKey:@"height"];
  v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_isActive];
  [v3 setValue:v17 forKey:@"isActive"];

  v18 = [v3 copy];

  return v18;
}

@end