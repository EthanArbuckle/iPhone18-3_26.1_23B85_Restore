@interface WFHotspotInterface
- (BOOL)isScanning;
- (WFHotspotInterface)init;
- (WFHotspotInterfaceDelegate)delegate;
- (id)enableHotspot:(id)hotspot error:(id *)error;
- (void)_stopBrowsingRemoveCache:(BOOL)cache;
- (void)init;
- (void)session:(id)session updatedFoundDevices:(id)devices;
- (void)startBrowsing;
- (void)updateNetworksWithHotspots:(id)hotspots;
@end

@implementation WFHotspotInterface

- (WFHotspotInterface)init
{
  v10.receiver = self;
  v10.super_class = WFHotspotInterface;
  v2 = [(WFHotspotInterface *)&v10 init];
  if (!v2)
  {
    v4 = 0;
LABEL_5:

    v2 = 0;
    goto LABEL_6;
  }

  v3 = objc_alloc_init(MEMORY[0x277D54CC8]);
  v4 = v3;
  if (!v3)
  {
    [WFHotspotInterface init];
    goto LABEL_5;
  }

  [v3 setDelegate:v2];
  objc_storeStrong(&v2->_hotspotSession, v4);
  v5 = [MEMORY[0x277CBEB98] set];
  networks = v2->_networks;
  v2->_networks = v5;

  if (!v2->_networks)
  {
    goto LABEL_5;
  }

  v7 = dispatch_queue_create(0, 0);
  internalQueue = v2->_internalQueue;
  v2->_internalQueue = v7;

  if (!v2->_internalQueue)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v2;
}

- (void)updateNetworksWithHotspots:(id)hotspots
{
  v31 = *MEMORY[0x277D85DE8];
  hotspotsCopy = hotspots;
  v5 = [MEMORY[0x277CBEB58] set];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = hotspotsCopy;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      v10 = 0;
      do
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [[WFHotspotDevice alloc] initWithHotspotDevice:*(*(&v22 + 1) + 8 * v10)];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v8);
  }

  networks = [(WFHotspotInterface *)self networks];
  v13 = [v5 isEqualToSet:networks];

  if (v13)
  {
    delegate = WFLogForCategory(0);
    v15 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && delegate && os_log_type_enabled(delegate, v15))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, delegate, v15, "Instant HS scan finished-> No new networks found.", buf, 2u);
    }
  }

  else
  {
    [(WFHotspotInterface *)self setNetworks:v5];
    v16 = WFLogForCategory(0);
    v17 = OSLogForWFLogLevel(3uLL);
    if (WFCurrentLogLevel() >= 3 && v16 && os_log_type_enabled(v16, v17))
    {
      *buf = 136315394;
      v27 = "[WFHotspotInterface updateNetworksWithHotspots:]";
      v28 = 2112;
      v29 = v5;
      _os_log_impl(&dword_273ECD000, v16, v17, "%s: new hotspots %@", buf, 0x16u);
    }

    delegate = [(WFHotspotInterface *)self delegate];
    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __49__WFHotspotInterface_updateNetworksWithHotspots___block_invoke;
      v19[3] = &unk_279EBD290;
      delegate = delegate;
      v20 = delegate;
      selfCopy = self;
      dispatch_async(MEMORY[0x277D85CD0], v19);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)enableHotspot:(id)hotspot error:(id *)error
{
  hotspotCopy = hotspot;
  hotspotDevice = [hotspotCopy hotspotDevice];

  if (hotspotDevice)
  {
    *buf = 0;
    v28 = buf;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__7;
    v31 = __Block_byref_object_dispose__7;
    v32 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__7;
    v25 = __Block_byref_object_dispose__7;
    v26 = 0;
    v8 = dispatch_semaphore_create(0);
    hotspotSession = [(WFHotspotInterface *)self hotspotSession];
    hotspotDevice2 = [hotspotCopy hotspotDevice];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __42__WFHotspotInterface_enableHotspot_error___block_invoke;
    v17[3] = &unk_279EBE410;
    v19 = &v21;
    v20 = buf;
    v11 = v8;
    v18 = v11;
    [hotspotSession enableRemoteHotspotForDevice:hotspotDevice2 withCompletionHandler:v17];

    dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
    if (error)
    {
      v12 = v22[5];
      if (v12)
      {
        *error = v12;
      }
    }

    v13 = *(v28 + 5);

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v14 = WFLogForCategory(0);
    v15 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v14 && os_log_type_enabled(v14, v15))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v14, v15, "Cannot enable hotspot, WFHotspotDevice missing SFRemoteHotspotDevice", buf, 2u);
    }

    v13 = 0;
  }

  return v13;
}

void __42__WFHotspotInterface_enableHotspot_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = WFLogForCategory(0);
    v9 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v8 && os_log_type_enabled(v8, v9))
    {
      v12 = 138543362;
      v13 = v7;
      _os_log_impl(&dword_273ECD000, v8, v9, "error enabling hotspot: %{public}@", &v12, 0xCu);
    }

    v10 = 40;
  }

  else
  {
    v10 = 48;
    a3 = a2;
  }

  objc_storeStrong((*(*(a1 + v10) + 8) + 40), a3);
  dispatch_semaphore_signal(*(a1 + 32));

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)isScanning
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internalQueue = self->_internalQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__WFHotspotInterface_isScanning__block_invoke;
  v5[3] = &unk_279EBD9D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(internalQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)startBrowsing
{
  if (![(WFHotspotInterface *)self isScanning])
  {
    v3 = WFLogForCategory(0);
    v4 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v3 && os_log_type_enabled(v3, v4))
    {
      *buf = 0;
      _os_log_impl(&dword_273ECD000, v3, v4, "Starting hotspot browsing", buf, 2u);
    }

    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__WFHotspotInterface_startBrowsing__block_invoke;
    block[3] = &unk_279EBCFE0;
    block[4] = self;
    dispatch_sync(internalQueue, block);
  }
}

uint64_t __35__WFHotspotInterface_startBrowsing__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hotspotSession];
  [v2 startBrowsing];

  v3 = *(a1 + 32);

  return [v3 setScanning:1];
}

- (void)_stopBrowsingRemoveCache:(BOOL)cache
{
  internalQueue = self->_internalQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__WFHotspotInterface__stopBrowsingRemoveCache___block_invoke;
  v4[3] = &unk_279EBDF00;
  v4[4] = self;
  cacheCopy = cache;
  dispatch_sync(internalQueue, v4);
}

uint64_t __47__WFHotspotInterface__stopBrowsingRemoveCache___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v2 && os_log_type_enabled(v2, v3))
  {
    v4 = *(*(a1 + 32) + 8);
    v5 = *(a1 + 40);
    v9[0] = 67109376;
    v9[1] = v4;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(&dword_273ECD000, v2, v3, "Stopping hotspot browsing (isBrowsing %d removeCache %d)", v9, 0xEu);
  }

  v6 = [*(a1 + 32) hotspotSession];
  [v6 stopBrowsing];

  result = [*(a1 + 32) setScanning:0];
  if (*(a1 + 40) == 1)
  {
    result = [*(a1 + 32) updateNetworksWithHotspots:0];
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)session:(id)session updatedFoundDevices:(id)devices
{
  v12 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v6 && os_log_type_enabled(v6, v7))
  {
    v10 = 138412290;
    v11 = devicesCopy;
    _os_log_impl(&dword_273ECD000, v6, v7, "Found hotspots %@", &v10, 0xCu);
  }

  v8 = [MEMORY[0x277CBEB58] set];
  [v8 addObjectsFromArray:devicesCopy];
  [(WFHotspotInterface *)self updateNetworksWithHotspots:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (WFHotspotInterfaceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)init
{
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v0 && os_log_type_enabled(v0, v1))
  {
    *v2 = 0;
    _os_log_impl(&dword_273ECD000, v0, v1, "failed to create SFRemoteHotspotSession", v2, 2u);
  }
}

@end