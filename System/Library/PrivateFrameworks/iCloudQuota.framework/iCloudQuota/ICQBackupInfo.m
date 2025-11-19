@interface ICQBackupInfo
- (ICQBackupInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICQBackupInfo

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(ICQBackupInfo);
  [(ICQBackupInfo *)v4 setNoOfBackupDevices:self->_noOfBackupDevices];
  [(ICQBackupInfo *)v4 setDeviceGroups:self->_deviceGroups];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  noOfBackupDevices = self->_noOfBackupDevices;
  v5 = a3;
  [v5 encodeObject:noOfBackupDevices forKey:@"noOfBackupDevices"];
  [v5 encodeObject:self->_deviceGroups forKey:@"deviceGroups"];
}

- (ICQBackupInfo)initWithCoder:(id)a3
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ICQBackupInfo;
  v5 = [(ICQBackupInfo *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"noOfBackupDevices"];
    noOfBackupDevices = v5->_noOfBackupDevices;
    v5->_noOfBackupDevices = v6;

    v8 = MEMORY[0x277CBEB98];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
    v10 = [v8 setWithArray:v9];

    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"deviceGroups"];
    deviceGroups = v5->_deviceGroups;
    v5->_deviceGroups = v11;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

@end