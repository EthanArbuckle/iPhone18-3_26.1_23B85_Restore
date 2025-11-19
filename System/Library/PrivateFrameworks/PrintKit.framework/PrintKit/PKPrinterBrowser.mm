@interface PKPrinterBrowser
+ (id)browserWithDelegate:(id)a3;
+ (id)browserWithDelegate:(id)a3 infoDictionary:(id)a4;
+ (id)browserWithDelegate:(id)a3 infoDictionary:(id)a4 provenance:(unint64_t)a5;
- (PKPrinterBrowser)initWithDelegate:(id)a3 infoDictionary:(id)a4 provenance:(unint64_t)a5;
- (void)browserAdded:(id)a3 removed:(id)a4;
- (void)btlePrinterFound:(id)a3;
- (void)btleRssiUpdated:(id)a3 rssi:(id)a4;
- (void)dealloc;
- (void)printerAdded:(id)a3 more:(BOOL)a4;
- (void)printerRemoved:(id)a3 more:(BOOL)a4;
- (void)setDelegate:(id)a3;
@end

@implementation PKPrinterBrowser

+ (id)browserWithDelegate:(id)a3
{
  v3 = a3;
  v4 = [PKPrinterBrowser alloc];
  v5 = [(PKPrinterBrowser *)v4 initWithDelegate:v3 infoDictionary:MEMORY[0x277CBEC10] provenance:0];

  return v5;
}

+ (id)browserWithDelegate:(id)a3 infoDictionary:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[PKPrinterBrowser alloc] initWithDelegate:v5 infoDictionary:v6 provenance:0];

  return v7;
}

+ (id)browserWithDelegate:(id)a3 infoDictionary:(id)a4 provenance:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [[PKPrinterBrowser alloc] initWithDelegate:v7 infoDictionary:v8 provenance:a5];

  return v9;
}

- (PKPrinterBrowser)initWithDelegate:(id)a3 infoDictionary:(id)a4 provenance:(unint64_t)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
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
    v14 = [MEMORY[0x277CBEB38] dictionary];
    [(PKPrinterBrowser *)v10 setPrinters:v14];

    v15 = [MEMORY[0x277CBEB38] dictionary];
    [(PKPrinterBrowser *)v10 setBtDevices:v15];

    [(PKPrinterBrowser *)v10 setDelegate:v8];
    v10->_delegateRespondsToProximityUpdate = objc_opt_respondsToSelector() & 1;
    v16 = +[PKPrinterBrowseInfo rollCacheGeneration];
    v17 = _PKLogCategory(PKLogCategoryDiscovery[0]);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v23 = v16;
      _os_log_impl(&dword_25F5FC000, v17, OS_LOG_TYPE_DEFAULT, "Starting browse, flush cache from gen %d", buf, 8u);
    }

    v18 = [[PKPrintdRPC_BrowseClient alloc] initWithInfo:v9 provenance:a5 delegate:v10];
    browserClient = v10->_browserClient;
    v10->_browserClient = v18;

    [(PKPrintdRPC_BrowseClient *)v10->_browserClient startBrowsing];
  }

  return v10;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

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

- (void)setDelegate:(id)a3
{
  v6 = a3;
  if (!v6)
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

  self->_delegate = v6;
  self->_delegateRespondsToProximityUpdate = objc_opt_respondsToSelector() & 1;
}

- (void)btleRssiUpdated:(id)a3 rssi:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v24 = a3;
  v6 = a4;
  if (self->_delegateRespondsToProximityUpdate)
  {
    v23 = v6;
    obj = [(PKPrinterBrowser *)self printers];
    objc_sync_enter(obj);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = self;
    v8 = [(PKPrinterBrowser *)self printers];
    v9 = [v8 allValues];

    v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v10)
    {
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          v14 = [v13 btleUUID];
          if (v14)
          {
            v15 = [v13 btleUUID];
            v16 = [v15 isEqual:v24];

            if (v16)
            {
              [v13 addRSSIValue:v23];
              v25[0] = MEMORY[0x277D85DD0];
              v25[1] = 3221225472;
              v25[2] = __41__PKPrinterBrowser_btleRssiUpdated_rssi___block_invoke;
              v25[3] = &unk_279A92FB8;
              v25[4] = v7;
              [v13 resolveOnMainQueue:v25];
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v10);
    }

    objc_sync_exit(obj);
    v17 = [(PKPrinterBrowser *)v7 btDevices];
    objc_sync_enter(v17);
    v18 = [(PKPrinterBrowser *)v7 btDevices];
    v19 = [v18 objectForKey:v24];

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
      v21 = [(PKPrinterBrowser *)v7 btDevices];
      [v21 setObject:v20 forKey:v24];

      v19 = v20;
    }

    objc_sync_exit(v17);
    v6 = v23;
  }
}

void __41__PKPrinterBrowser_btleRssiUpdated_rssi___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) delegate];
  [v3 proximityUpdatedForPrinter:v4];
}

- (void)browserAdded:(id)a3 removed:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v8 = [v6 count];
  v14[3] = [v7 count] + v8;
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __41__PKPrinterBrowser_browserAdded_removed___block_invoke;
  v11[3] = &unk_279A92FE0;
  objc_copyWeak(&v12, &location);
  v11[4] = v14;
  [v6 enumerateObjectsUsingBlock:v11];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __41__PKPrinterBrowser_browserAdded_removed___block_invoke_2;
  v9[3] = &unk_279A92FE0;
  objc_copyWeak(&v10, &location);
  v9[4] = v14;
  [v7 enumerateObjectsUsingBlock:v9];
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

- (void)printerAdded:(id)a3 more:(BOOL)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a3;
  obj = [(PKPrinterBrowser *)self printers];
  objc_sync_enter(obj);
  v6 = [(PKPrinterBrowser *)self printers];
  v7 = [v5 bonjourName];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = [v5 btleUUID];

    if (v9)
    {
      v10 = [v5 btleUUID];
      [v8 setBtleUUID:v10];

      [v8 setBtleMeasuredPower:{objc_msgSend(v5, "btleMeasuredPower")}];
    }

    v11 = v8;

    v5 = v11;
  }

  else
  {
    v12 = [v5 btleUUID];

    if (v12)
    {
      v49 = 0u;
      v50 = 0u;
      v48 = 0u;
      v47 = 0u;
      v13 = [(PKPrinterBrowser *)self printers];
      v14 = [v13 allValues];

      v15 = [v14 countByEnumeratingWithState:&v47 objects:v52 count:16];
      if (v15)
      {
        v16 = *v48;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v48 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v47 + 1) + 8 * i);
            v19 = [v5 uuid];
            v20 = [v18 uuid];
            v21 = [v19 compare:v20] == 0;

            if (v21)
            {
              v22 = [v5 btleUUID];
              [v18 setBtleUUID:v22];

              [v18 setBtleMeasuredPower:{objc_msgSend(v5, "btleMeasuredPower")}];
            }
          }

          v15 = [v14 countByEnumeratingWithState:&v47 objects:v52 count:16];
        }

        while (v15);
      }
    }

    v23 = [(PKPrinterBrowser *)self printers];
    v24 = [v5 bonjourName];
    [v23 setObject:v5 forKey:v24];

    v8 = 0;
  }

  objc_sync_exit(obj);
  v25 = [v5 btleUUID];
  v26 = v25 == 0;

  if (v26)
  {
    v33 = 0;
  }

  else
  {
    v27 = [(PKPrinterBrowser *)self btDevices];
    objc_sync_enter(v27);
    v28 = [(PKPrinterBrowser *)self btDevices];
    v29 = [v5 btleUUID];
    v30 = [v28 objectForKey:v29];

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

          [v5 addRSSIValue:*(*(&v43 + 1) + 8 * j)];
        }

        v32 = [v31 countByEnumeratingWithState:&v43 objects:v51 count:16];
      }

      while (v32);
    }

    objc_sync_exit(v27);
  }

  objc_initWeak(&location, self);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __38__PKPrinterBrowser_printerAdded_more___block_invoke;
  v38[3] = &unk_279A93008;
  objc_copyWeak(&v39, &location);
  v40 = a4;
  v41 = v33;
  [v5 resolveOnMainQueue:v38];
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

- (void)printerRemoved:(id)a3 more:(BOOL)a4
{
  v6 = a3;
  v7 = [(PKPrinterBrowser *)self printers];
  objc_sync_enter(v7);
  v8 = [(PKPrinterBrowser *)self printers];
  v9 = [v6 bonjourName];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = v10;

    v12 = [(PKPrinterBrowser *)self printers];
    v13 = [v11 bonjourName];
    [v12 removeObjectForKey:v13];
  }

  else
  {
    v11 = v6;
  }

  objc_sync_exit(v7);
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __40__PKPrinterBrowser_printerRemoved_more___block_invoke;
  v14[3] = &unk_279A93030;
  objc_copyWeak(&v15, &location);
  v16 = a4;
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

- (void)btlePrinterFound:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 uuid];
    if (v5)
    {
      v6 = [v4 btleUUID];

      if (v6)
      {
        v31 = v4;
        obj = [(PKPrinterBrowser *)self printers];
        objc_sync_enter(obj);
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v7 = [(PKPrinterBrowser *)self printers];
        v8 = [v7 allValues];

        v9 = v8;
        v10 = 0;
        v11 = [v8 countByEnumeratingWithState:&v39 objects:v44 count:16];
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
              v15 = [v14 uuid];
              if (v15)
              {
                v16 = [v14 uuid];
                v17 = [v31 uuid];
                v18 = [v16 isEqual:v17];

                if (v18)
                {
                  v19 = v14;

                  v20 = [v31 btleUUID];
                  [v19 setBtleUUID:v20];

                  v10 = v19;
                  [v19 setBtleMeasuredPower:{objc_msgSend(v31, "btleMeasuredPower")}];
                }
              }
            }

            v8 = v9;
            v11 = [v9 countByEnumeratingWithState:&v39 objects:v44 count:16];
          }

          while (v11);
        }

        objc_sync_exit(obj);
        if (v10 && self->_delegateRespondsToProximityUpdate)
        {
          v21 = [(PKPrinterBrowser *)self btDevices];
          objc_sync_enter(v21);
          v22 = [(PKPrinterBrowser *)self btDevices];
          v23 = [v10 btleUUID];
          v24 = [v22 objectForKey:v23];

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

            objc_sync_exit(v21);
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

            objc_sync_exit(v21);
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