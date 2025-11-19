@interface SKADatabasePublishedLocalStatusDevice
- (SKADatabasePublishedLocalStatusDevice)initWithCoreDataPublishedLocalStatusDevice:(id)a3;
- (SKADatabasePublishedLocalStatusDevice)initWithIDSIdentifier:(id)a3 pendingStatuses:(id)a4 deliveredStatuses:(id)a5 discoverySource:(unsigned __int16)a6;
@end

@implementation SKADatabasePublishedLocalStatusDevice

- (SKADatabasePublishedLocalStatusDevice)initWithCoreDataPublishedLocalStatusDevice:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = [v4 pendingStatuses];
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = [[SKADatabasePublishedLocalStatus alloc] initWithCoreDataPublishedLocalStatus:*(*(&v28 + 1) + 8 * v11)];
        [v5 addObject:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v9);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = [v4 deliveredStatuses];
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = [[SKADatabasePublishedLocalStatus alloc] initWithCoreDataPublishedLocalStatus:*(*(&v24 + 1) + 8 * v17)];
        [v6 addObject:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v15);
  }

  v19 = SKALocalStatusDeviceDiscoverySourceFromRawValue([v4 source]);
  v20 = [v4 idsIdentifier];
  v21 = [(SKADatabasePublishedLocalStatusDevice *)self initWithIDSIdentifier:v20 pendingStatuses:v5 deliveredStatuses:v6 discoverySource:v19];

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (SKADatabasePublishedLocalStatusDevice)initWithIDSIdentifier:(id)a3 pendingStatuses:(id)a4 deliveredStatuses:(id)a5 discoverySource:(unsigned __int16)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = SKADatabasePublishedLocalStatusDevice;
  v14 = [(SKADatabasePublishedLocalStatusDevice *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_idsIdentifier, a3);
    objc_storeStrong(&v15->_pendingStatuses, a4);
    objc_storeStrong(&v15->_deliveredStatuses, a5);
    v15->_discoverySource = a6;
  }

  return v15;
}

@end