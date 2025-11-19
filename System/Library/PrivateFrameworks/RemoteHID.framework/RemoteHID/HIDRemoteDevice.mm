@interface HIDRemoteDevice
- (HIDRemoteDevice)initWithProperties:(id)a3;
- (id)description;
@end

@implementation HIDRemoteDevice

- (HIDRemoteDevice)initWithProperties:(id)a3
{
  v8.receiver = self;
  v8.super_class = HIDRemoteDevice;
  v3 = [(HIDUserDevice *)&v8 initWithProperties:a3];
  v4 = v3;
  if (v3)
  {
    [(HIDRemoteDevice *)v3 setCancelled:0];
    v5 = dispatch_semaphore_create(0);
    [(HIDRemoteDevice *)v4 setSemaphore:v5];

    [(HIDRemoteDevice *)v4 setPropertyPort:0];
    [(HIDRemoteDevice *)v4 setPropertyNotify:0];
    v6 = v4;
  }

  return v4;
}

- (id)description
{
  entryID = 0;
  IORegistryEntryGetRegistryEntryID([(HIDUserDevice *)self service], &entryID);
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HIDRemoteDevice *)self deviceID];
  v5 = entryID;
  v6 = [(HIDRemoteDevice *)self handleReportCount];
  v7 = [(HIDRemoteDevice *)self handleReportError];
  v11.receiver = self;
  v11.super_class = HIDRemoteDevice;
  v8 = [(HIDUserDevice *)&v11 description];
  v9 = [v3 stringWithFormat:@"<HIDRemoteHIDUserDevice:%p id:%lld service:%llx handleReportCount:%u handleReportError:%u device:%@>", self, v4, v5, v6, v7, v8];

  return v9;
}

@end