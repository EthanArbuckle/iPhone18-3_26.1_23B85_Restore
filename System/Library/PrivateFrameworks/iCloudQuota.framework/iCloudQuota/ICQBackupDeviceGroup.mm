@interface ICQBackupDeviceGroup
- (ICQBackupDeviceGroup)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICQBackupDeviceGroup

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(ICQBackupDeviceGroup);
  [(ICQBackupDeviceGroup *)v4 setSectionHeader:self->_sectionHeader];
  [(ICQBackupDeviceGroup *)v4 setSectionFooter:self->_sectionFooter];
  [(ICQBackupDeviceGroup *)v4 setBackupDevices:self->_backupDevices];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  sectionHeader = self->_sectionHeader;
  coderCopy = coder;
  [coderCopy encodeObject:sectionHeader forKey:@"sectionHeader"];
  [coderCopy encodeObject:self->_sectionFooter forKey:@"sectionFooter"];
  [coderCopy encodeObject:self->_backupDevices forKey:@"backupDevices"];
}

- (ICQBackupDeviceGroup)initWithCoder:(id)coder
{
  v18[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = ICQBackupDeviceGroup;
  v5 = [(ICQBackupDeviceGroup *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sectionHeader"];
    sectionHeader = v5->_sectionHeader;
    v5->_sectionHeader = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sectionFooter"];
    sectionFooter = v5->_sectionFooter;
    v5->_sectionFooter = v8;

    v10 = MEMORY[0x277CBEB98];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v12 = [v10 setWithArray:v11];

    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"backupDevices"];
    backupDevices = v5->_backupDevices;
    v5->_backupDevices = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

@end