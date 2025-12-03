@interface SKADatabasePublishedLocalStatusDevice
- (SKADatabasePublishedLocalStatusDevice)initWithCoreDataPublishedLocalStatusDevice:(id)device;
- (SKADatabasePublishedLocalStatusDevice)initWithIDSIdentifier:(id)identifier pendingStatuses:(id)statuses deliveredStatuses:(id)deliveredStatuses discoverySource:(unsigned __int16)source;
@end

@implementation SKADatabasePublishedLocalStatusDevice

- (SKADatabasePublishedLocalStatusDevice)initWithCoreDataPublishedLocalStatusDevice:(id)device
{
  v34 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  pendingStatuses = [deviceCopy pendingStatuses];
  v8 = [pendingStatuses countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v29;
    do
    {
      v11 = 0;
      do
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(pendingStatuses);
        }

        v12 = [[SKADatabasePublishedLocalStatus alloc] initWithCoreDataPublishedLocalStatus:*(*(&v28 + 1) + 8 * v11)];
        [v5 addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [pendingStatuses countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v9);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  deliveredStatuses = [deviceCopy deliveredStatuses];
  v14 = [deliveredStatuses countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      v17 = 0;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(deliveredStatuses);
        }

        v18 = [[SKADatabasePublishedLocalStatus alloc] initWithCoreDataPublishedLocalStatus:*(*(&v24 + 1) + 8 * v17)];
        [v6 addObject:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [deliveredStatuses countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v15);
  }

  v19 = SKALocalStatusDeviceDiscoverySourceFromRawValue([deviceCopy source]);
  idsIdentifier = [deviceCopy idsIdentifier];
  v21 = [(SKADatabasePublishedLocalStatusDevice *)self initWithIDSIdentifier:idsIdentifier pendingStatuses:v5 deliveredStatuses:v6 discoverySource:v19];

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (SKADatabasePublishedLocalStatusDevice)initWithIDSIdentifier:(id)identifier pendingStatuses:(id)statuses deliveredStatuses:(id)deliveredStatuses discoverySource:(unsigned __int16)source
{
  identifierCopy = identifier;
  statusesCopy = statuses;
  deliveredStatusesCopy = deliveredStatuses;
  v17.receiver = self;
  v17.super_class = SKADatabasePublishedLocalStatusDevice;
  v14 = [(SKADatabasePublishedLocalStatusDevice *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_idsIdentifier, identifier);
    objc_storeStrong(&v15->_pendingStatuses, statuses);
    objc_storeStrong(&v15->_deliveredStatuses, deliveredStatuses);
    v15->_discoverySource = source;
  }

  return v15;
}

@end