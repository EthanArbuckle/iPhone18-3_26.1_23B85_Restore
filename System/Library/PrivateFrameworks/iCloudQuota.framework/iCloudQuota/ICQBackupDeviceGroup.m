@interface ICQBackupDeviceGroup
- (ICQBackupDeviceGroup)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICQBackupDeviceGroup

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(ICQBackupDeviceGroup);
  [(ICQBackupDeviceGroup *)v4 setSectionHeader:self->_sectionHeader];
  [(ICQBackupDeviceGroup *)v4 setSectionFooter:self->_sectionFooter];
  [(ICQBackupDeviceGroup *)v4 setBackupDevices:self->_backupDevices];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  sectionHeader = self->_sectionHeader;
  v5 = a3;
  [v5 encodeObject:sectionHeader forKey:@"sectionHeader"];
  [v5 encodeObject:self->_sectionFooter forKey:@"sectionFooter"];
  [v5 encodeObject:self->_backupDevices forKey:@"backupDevices"];
}

- (ICQBackupDeviceGroup)initWithCoder:(id)a3
{
  v18[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ICQBackupDeviceGroup;
  v5 = [(ICQBackupDeviceGroup *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sectionHeader"];
    sectionHeader = v5->_sectionHeader;
    v5->_sectionHeader = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sectionFooter"];
    sectionFooter = v5->_sectionFooter;
    v5->_sectionFooter = v8;

    v10 = MEMORY[0x277CBEB98];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v12 = [v10 setWithArray:v11];

    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"backupDevices"];
    backupDevices = v5->_backupDevices;
    v5->_backupDevices = v13;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

@end