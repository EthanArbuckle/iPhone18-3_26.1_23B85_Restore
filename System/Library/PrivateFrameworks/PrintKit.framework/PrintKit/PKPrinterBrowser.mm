@interface PKPrinterBrowser
+ (id)browserWithDelegate:(id)delegate;
+ (id)browserWithDelegate:(id)delegate infoDictionary:(id)dictionary;
+ (id)browserWithDelegate:(id)delegate infoDictionary:(id)dictionary provenance:(unint64_t)provenance;
- (PKPrinterBrowser)initWithDelegate:(id)delegate infoDictionary:(id)dictionary provenance:(unint64_t)provenance;
- (void)browserAdded:(id)added removed:(id)removed;
- (void)btlePrinterFound:(id)found;
- (void)btleRssiUpdated:(id)updated rssi:(id)rssi;
- (void)dealloc;
- (void)printerAdded:(id)added more:(BOOL)more;
- (void)printerRemoved:(id)removed more:(BOOL)more;
- (void)setDelegate:(id)delegate;
@end

@implementation PKPrinterBrowser

+ (id)browserWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = [PKPrinterBrowser alloc];
  v5 = [(PKPrinterBrowser *)v4 initWithDelegate:delegateCopy infoDictionary:MEMORY[0x277CBEC10] provenance:0];

  return v5;
}

+ (id)browserWithDelegate:(id)delegate infoDictionary:(id)dictionary
{
  delegateCopy = delegate;
  dictionaryCopy = dictionary;
  v7 = [[PKPrinterBrowser alloc] initWithDelegate:delegateCopy infoDictionary:dictionaryCopy provenance:0];

  return v7;
}

+ (id)browserWithDelegate:(id)delegate infoDictionary:(id)dictionary provenance:(unint64_t)provenance
{
  delegateCopy = delegate;
  dictionaryCopy = dictionary;
  v9 = [[PKPrinterBrowser alloc] initWithDelegate:delegateCopy infoDictionary:dictionaryCopy provenance:provenance];

  return v9;
}

- (PKPrinterBrowser)initWithDelegate:(id)delegate infoDictionary:(id)dictionary provenance:(unint64_t)provenance
{
  v24 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = PKPrinterBrowser;
  v10 = [(PKPrinterBrowser *)&v21 init];
  if (v10)
  {
    v11 = SBSSpringBoardServerPort();
    MEMORY[0x25F8E3F20](v11, &v10->_originalCellFlag, &v10->_originalWifiFlag);
    v12 = SBSSpringBoardServerPort();
    MEMORY[0x25F8E3F40](v12, v10->_originalCellFlag, 2);
    v13 = SBSSpringBoardServerPort();
    MEMORY[0x25F8E3F50](v13, 0);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(PKPrinterBrowser *)v10 setPrinters:dictionary];

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    [(PKPrinterBrowser *)v10 setBtDevices:dictionary2];

    [(PKPrinterBrowser *)v10 setDelegate:delegateCopy];
    v10->_delegateRespondsToProximityUpdate = objc_opt_respondsToSelector() & 1;
    v16 = +[PKPrinterBrowseInfo rollCacheGeneration];
    v17 = _PKLogCategory(PKLogCategoryDiscovery[0]);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v23 = v16;
      _os_log_impl(&dword_25F5FC000, v17, OS_LOG_TYPE_DEFAULT, "Starting browse, flush cache from gen %d", buf, 8u);
    }

    v18 = [[PKPrintdRPC_BrowseClient alloc] initWithInfo:dictionaryCopy provenance:provenance delegate:v10];
    browserClient = v10->_browserClient;
    v10->_browserClient = v18;

    [(PKPrintdRPC_BrowseClient *)v10->_browserClient startBrowsing];
  }

  return v10;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4 = SBSSpringBoardServerPort();
  MEMORY[0x25F8E3F40](v4, self->_originalCellFlag, self->_originalWifiFlag);
  browserClient = self->_browserClient;
  if (browserClient)
  {
    [(PKPrintdRPC_BrowseClient *)browserClient invalidate];
    v6 = self->_browserClient;
    self->_browserClient = 0;
  }

  [(PKPrinterBrowser *)self setDelegate:0];
  [(PKPrinterBrowser *)self setPrinters:0];
  [(PKPrinterBrowser *)self setBtDevices:0];
  v7.receiver = self;
  v7.super_class = PKPrinterBrowser;
  [(PKPrinterBrowser *)&v7 dealloc];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (!delegateCopy)
  {
    browserClient = self->_browserClient;
    if (browserClient)
    {
      [(PKPrintdRPC_BrowseClient *)browserClient invalidate];
      v5 = self->_browserClient;
      self->_browserClient = 0;

      self->_delegateRespondsToProximityUpdate = 0;
    }
  }

  self->_delegate = delegateCopy;
  self->_delegateRespondsToProximityUpdate = objc_opt_respondsToSelector() & 1;
}

- (void)btleRssiUpdated:(id)updated rssi:(id)rssi
{
  v31 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  rssiCopy = rssi;
  if (self->_delegateRespondsToProximityUpdate)
  {
    v23 = rssiCopy;
    obj = [(PKPrinterBrowser *)self printers];
    objc_sync_enter(obj);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    selfCopy = self;
    printers = [(PKPrinterBrowser *)self printers];
    allValues = [printers allValues];

    v10 = [allValues countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v10)
    {
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(allValues);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          btleUUID = [v13 btleUUID];
          if (btleUUID)
          {
            btleUUID2 = [v13 btleUUID];
            v16 = [btleUUID2 isEqual:updatedCopy];

            if (v16)
            {
              [v13 addRSSIValue:v23];
              v25[0] = MEMORY[0x277D85DD0];
              v25[1] = 3221225472;
              v25[2] = __41__PKPrinterBrowser_btleRssiUpdated_rssi___block_invoke;
              v25[3] = &unk_279A92FB8;
              v25[4] = selfCopy;
              [v13 resolveOnMainQueue:v25];
            }
          }
        }

        v10 = [allValues countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v10);
    }

    objc_sync_exit(obj);
    btDevices = [(PKPrinterBrowser *)selfCopy btDevices];
    objc_sync_enter(btDevices);
    btDevices2 = [(PKPrinterBrowser *)selfCopy btDevices];
    v19 = [btDevices2 objectForKey:updatedCopy];

    if (v19)
    {
      [v19 addObject:v23];
      if ([v19 count] >= 6)
      {
        [v19 removeObjectAtIndex:0];
      }
    }

    else
    {
      v20 = [MEMORY[0x277CBEB18] arrayWithObject:v23];
      btDevices3 = [(PKPrinterBrowser *)selfCopy btDevices];
      [btDevices3 setObject:v20 forKey:updatedCopy];

      v19 = v20;
    }

    objc_sync_exit(btDevices);
    rssiCopy = v23;
  }
}

void __41__PKPrinterBrowser_btleRssiUpdated_rssi___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) delegate];
  [v3 proximityUpdatedForPrinter:v4];
}

- (void)browserAdded:(id)added removed:(id)removed
{
  addedCopy = added;
  removedCopy = removed;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v8 = [addedCopy count];
  v14[3] = [removedCopy count] + v8;
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__PKPrinterBrowser_browserAdded_removed___block_invoke;
  v11[3] = &unk_279A92FE0;
  objc_copyWeak(&v12, &location);
  v11[4] = v14;
  [addedCopy enumerateObjectsUsingBlock:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__PKPrinterBrowser_browserAdded_removed___block_invoke_2;
  v9[3] = &unk_279A92FE0;
  objc_copyWeak(&v10, &location);
  v9[4] = v14;
  [removedCopy enumerateObjectsUsingBlock:v9];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
  _Block_object_dispose(v14, 8);
}

void __41__PKPrinterBrowser_browserAdded_removed___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 24) - 1;
  *(v5 + 24) = v6;
  v7 = WeakRetained;
  [WeakRetained printerAdded:v3 more:v6 != 0];
}

void __41__PKPrinterBrowser_browserAdded_removed___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 24) - 1;
  *(v5 + 24) = v6;
  v7 = WeakRetained;
  [WeakRetained printerRemoved:v3 more:v6 != 0];
}

- (void)printerAdded:(id)added more:(BOOL)more
{
  v53 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  obj = [(PKPrinterBrowser *)self printers];
  objc_sync_enter(obj);
  printers = [(PKPrinterBrowser *)self printers];
  bonjourName = [addedCopy bonjourName];
  v8 = [printers objectForKeyedSubscript:bonjourName];

  if (v8)
  {
    btleUUID = [addedCopy btleUUID];

    if (btleUUID)
    {
      btleUUID2 = [addedCopy btleUUID];
      [v8 setBtleUUID:btleUUID2];

      [v8 setBtleMeasuredPower:{objc_msgSend(addedCopy, "btleMeasuredPower")}];
    }

    v11 = v8;

    addedCopy = v11;
  }

  else
  {
    btleUUID3 = [addedCopy btleUUID];

    if (btleUUID3)
    {
      v49 = 0u;
      v50 = 0u;
      v48 = 0u;
      v47 = 0u;
      printers2 = [(PKPrinterBrowser *)self printers];
      allValues = [printers2 allValues];

      v15 = [allValues countByEnumeratingWithState:&v47 objects:v52 count:16];
      if (v15)
      {
        v16 = *v48;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v48 != v16)
            {
              objc_enumerationMutation(allValues);
            }

            v18 = *(*(&v47 + 1) + 8 * i);
            uuid = [addedCopy uuid];
            uuid2 = [v18 uuid];
            v21 = [uuid compare:uuid2] == 0;

            if (v21)
            {
              btleUUID4 = [addedCopy btleUUID];
              [v18 setBtleUUID:btleUUID4];

              [v18 setBtleMeasuredPower:{objc_msgSend(addedCopy, "btleMeasuredPower")}];
            }
          }

          v15 = [allValues countByEnumeratingWithState:&v47 objects:v52 count:16];
        }

        while (v15);
      }
    }

    printers3 = [(PKPrinterBrowser *)self printers];
    bonjourName2 = [addedCopy bonjourName];
    [printers3 setObject:addedCopy forKey:bonjourName2];

    v8 = 0;
  }

  objc_sync_exit(obj);
  btleUUID5 = [addedCopy btleUUID];
  v26 = btleUUID5 == 0;

  if (v26)
  {
    v33 = 0;
  }

  else
  {
    btDevices = [(PKPrinterBrowser *)self btDevices];
    objc_sync_enter(btDevices);
    btDevices2 = [(PKPrinterBrowser *)self btDevices];
    btleUUID6 = [addedCopy btleUUID];
    v30 = [btDevices2 objectForKey:btleUUID6];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v31 = v30;
    v32 = [v31 countByEnumeratingWithState:&v43 objects:v51 count:16];
    v33 = v32 != 0;
    if (v32)
    {
      v34 = *v44;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v44 != v34)
          {
            objc_enumerationMutation(v31);
          }

          [addedCopy addRSSIValue:*(*(&v43 + 1) + 8 * j)];
        }

        v32 = [v31 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v32);
    }

    objc_sync_exit(btDevices);
  }

  objc_initWeak(&location, self);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __38__PKPrinterBrowser_printerAdded_more___block_invoke;
  v38[3] = &unk_279A93008;
  objc_copyWeak(&v39, &location);
  moreCopy = more;
  v41 = v33;
  [addedCopy resolveOnMainQueue:v38];
  objc_destroyWeak(&v39);
  objc_destroyWeak(&location);
}

void __38__PKPrinterBrowser_printerAdded_more___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 delegate];
    [v5 addPrinter:v10 moreComing:*(a1 + 40)];

    if (*(a1 + 41) == 1)
    {
      v6 = objc_loadWeakRetained((a1 + 32));
      v7 = [v6 delegateRespondsToProximityUpdate];

      if (v7)
      {
        v8 = objc_loadWeakRetained((a1 + 32));
        v9 = [v8 delegate];
        [v9 proximityUpdatedForPrinter:v10];
      }
    }
  }
}

- (void)printerRemoved:(id)removed more:(BOOL)more
{
  removedCopy = removed;
  printers = [(PKPrinterBrowser *)self printers];
  objc_sync_enter(printers);
  printers2 = [(PKPrinterBrowser *)self printers];
  bonjourName = [removedCopy bonjourName];
  v10 = [printers2 objectForKeyedSubscript:bonjourName];

  if (v10)
  {
    v11 = v10;

    printers3 = [(PKPrinterBrowser *)self printers];
    bonjourName2 = [v11 bonjourName];
    [printers3 removeObjectForKey:bonjourName2];
  }

  else
  {
    v11 = removedCopy;
  }

  objc_sync_exit(printers);
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __40__PKPrinterBrowser_printerRemoved_more___block_invoke;
  v14[3] = &unk_279A93030;
  objc_copyWeak(&v15, &location);
  moreCopy = more;
  [v11 resolveOnMainQueue:v14];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __40__PKPrinterBrowser_printerRemoved_more___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 delegate];
    [v5 removePrinter:v6 moreGoing:*(a1 + 40)];
  }
}

- (void)btlePrinterFound:(id)found
{
  v45 = *MEMORY[0x277D85DE8];
  foundCopy = found;
  v4 = foundCopy;
  if (foundCopy)
  {
    uuid = [foundCopy uuid];
    if (uuid)
    {
      btleUUID = [v4 btleUUID];

      if (btleUUID)
      {
        v31 = v4;
        obj = [(PKPrinterBrowser *)self printers];
        objc_sync_enter(obj);
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        printers = [(PKPrinterBrowser *)self printers];
        allValues = [printers allValues];

        v9 = allValues;
        v10 = 0;
        v11 = [allValues countByEnumeratingWithState:&v39 objects:v44 count:16];
        if (v11)
        {
          v12 = *v40;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v40 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v39 + 1) + 8 * i);
              uuid2 = [v14 uuid];
              if (uuid2)
              {
                uuid3 = [v14 uuid];
                uuid4 = [v31 uuid];
                v18 = [uuid3 isEqual:uuid4];

                if (v18)
                {
                  v19 = v14;

                  btleUUID2 = [v31 btleUUID];
                  [v19 setBtleUUID:btleUUID2];

                  v10 = v19;
                  [v19 setBtleMeasuredPower:{objc_msgSend(v31, "btleMeasuredPower")}];
                }
              }
            }

            allValues = v9;
            v11 = [v9 countByEnumeratingWithState:&v39 objects:v44 count:16];
          }

          while (v11);
        }

        objc_sync_exit(obj);
        if (v10 && self->_delegateRespondsToProximityUpdate)
        {
          btDevices = [(PKPrinterBrowser *)self btDevices];
          objc_sync_enter(btDevices);
          btDevices2 = [(PKPrinterBrowser *)self btDevices];
          btleUUID3 = [v10 btleUUID];
          v24 = [btDevices2 objectForKey:btleUUID3];

          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v25 = v24;
          v26 = [v25 countByEnumeratingWithState:&v35 objects:v43 count:16];
          if (v26)
          {
            v27 = *v36;
            do
            {
              for (j = 0; j != v26; ++j)
              {
                if (*v36 != v27)
                {
                  objc_enumerationMutation(v25);
                }

                [v10 addRSSIValue:*(*(&v35 + 1) + 8 * j)];
              }

              v26 = [v25 countByEnumeratingWithState:&v35 objects:v43 count:16];
            }

            while (v26);

            objc_sync_exit(btDevices);
            objc_initWeak(&location, self);
            v32[0] = MEMORY[0x277D85DD0];
            v32[1] = 3221225472;
            v32[2] = __37__PKPrinterBrowser_btlePrinterFound___block_invoke;
            v32[3] = &unk_279A93058;
            objc_copyWeak(&v33, &location);
            [v10 resolveOnMainQueue:v32];
            objc_destroyWeak(&v33);
            objc_destroyWeak(&location);
          }

          else
          {

            objc_sync_exit(btDevices);
          }
        }

        v4 = v31;
      }
    }
  }
}

void __37__PKPrinterBrowser_btlePrinterFound___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 delegate];
    [v5 proximityUpdatedForPrinter:v6];
  }
}

@end