@interface ICQBackupDevice
- (ICQBackupDevice)initWithCoder:(id)coder;
- (NSDictionary)rawDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICQBackupDevice

- (id)copyWithZone:(_NSZone *)zone
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

- (void)encodeWithCoder:(id)coder
{
  deviceName = self->_deviceName;
  coderCopy = coder;
  [coderCopy encodeObject:deviceName forKey:@"deviceName"];
  [coderCopy encodeObject:self->_deviceUDID forKey:@"deviceUDID"];
  [coderCopy encodeObject:self->_deviceSubtitle forKey:@"deviceSubtitle"];
  [coderCopy encodeObject:self->_storageUsedLabel forKey:@"storageUsedLabel"];
  [coderCopy encodeObject:self->_storageUsed forKey:@"storageUsed"];
  [coderCopy encodeObject:self->_backupSize forKey:@"backupSize"];
  [coderCopy encodeObject:self->_imageURL forKey:@"imageURL"];
  [coderCopy encodeObject:self->_largeImageURL forKey:@"largeImageURL"];
  [coderCopy encodeObject:self->_detailViewController forKey:@"detailViewController"];
  [coderCopy encodeObject:self->_backupTimestamp forKey:@"backupTimestamp"];
  [coderCopy encodeObject:self->_deleteURL forKey:@"deleteURL"];
  [coderCopy encodeObject:self->_deleteButtonLabel forKey:@"deleteButtonLabel"];
  [coderCopy encodeObject:self->_backupFailedByinBytes forKey:@"backupFailedByinBytes"];
  [coderCopy encodeObject:self->_bytesRequiredForBackup forKey:@"bytesRequiredForBackup"];
  [coderCopy encodeBool:self->_isActive forKey:@"isActive"];
  [coderCopy encodeBool:self->_isLocalBackup forKey:@"isLocalBackup"];
}

- (ICQBackupDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v35.receiver = self;
  v35.super_class = ICQBackupDevice;
  v5 = [(ICQBackupDevice *)&v35 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceUDID"];
    deviceUDID = v5->_deviceUDID;
    v5->_deviceUDID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceSubtitle"];
    deviceSubtitle = v5->_deviceSubtitle;
    v5->_deviceSubtitle = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storageUsedLabel"];
    storageUsedLabel = v5->_storageUsedLabel;
    v5->_storageUsedLabel = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storageUsed"];
    storageUsed = v5->_storageUsed;
    v5->_storageUsed = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backupSize"];
    backupSize = v5->_backupSize;
    v5->_backupSize = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageURL"];
    imageURL = v5->_imageURL;
    v5->_imageURL = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"largeImageURL"];
    largeImageURL = v5->_largeImageURL;
    v5->_largeImageURL = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"detailViewController"];
    detailViewController = v5->_detailViewController;
    v5->_detailViewController = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backupTimestamp"];
    backupTimestamp = v5->_backupTimestamp;
    v5->_backupTimestamp = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deleteURL"];
    deleteURL = v5->_deleteURL;
    v5->_deleteURL = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deleteButtonLabel"];
    deleteButtonLabel = v5->_deleteButtonLabel;
    v5->_deleteButtonLabel = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backupFailedByinBytes"];
    backupFailedByinBytes = v5->_backupFailedByinBytes;
    v5->_backupFailedByinBytes = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bytesRequiredForBackup"];
    bytesRequiredForBackup = v5->_bytesRequiredForBackup;
    v5->_bytesRequiredForBackup = v32;

    v5->_isActive = [coderCopy decodeBoolForKey:@"isActive"];
    v5->_isLocalBackup = [coderCopy decodeBoolForKey:@"isLocalBackup"];
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
  uRL1x = [(ICQImageURL *)self->_imageURL URL1x];
  absoluteString = [uRL1x absoluteString];
  [v3 setValue:absoluteString forKey:@"image"];

  uRL2x = [(ICQImageURL *)self->_imageURL URL2x];
  absoluteString2 = [uRL2x absoluteString];
  [v3 setValue:absoluteString2 forKey:@"image2x"];

  uRL3x = [(ICQImageURL *)self->_imageURL URL3x];
  absoluteString3 = [uRL3x absoluteString];
  [v3 setValue:absoluteString3 forKey:@"image3x"];

  uRL1x2 = [(ICQImageURL *)self->_largeImageURL URL1x];
  absoluteString4 = [uRL1x2 absoluteString];
  [v3 setValue:absoluteString4 forKey:@"largeImage"];

  uRL2x2 = [(ICQImageURL *)self->_largeImageURL URL2x];
  absoluteString5 = [uRL2x2 absoluteString];
  [v3 setValue:absoluteString5 forKey:@"largeImage2x"];

  uRL3x2 = [(ICQImageURL *)self->_largeImageURL URL3x];
  absoluteString6 = [uRL3x2 absoluteString];
  [v3 setValue:absoluteString6 forKey:@"largeImage3x"];

  [v3 setValue:self->_backupTimestamp forKey:@"backupTimestamp"];
  absoluteString7 = [(NSURL *)self->_deleteURL absoluteString];
  [v3 setValue:absoluteString7 forKey:@"deleteURL"];

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