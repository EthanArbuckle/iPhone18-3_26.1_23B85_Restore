@interface TSBonjourBrowser
- (BOOL)startBrowsingWithError:(id *)a3;
- (BOOL)stopBrowsing;
- (TSBonjourBrowser)init;
- (void)addedServiceWithName:(const char *)a3 regType:(const char *)a4 domain:(const char *)a5 onInterface:(unsigned int)a6 withFlags:(unsigned int)a7;
- (void)dealloc;
- (void)removedServiceWithName:(const char *)a3 regType:(const char *)a4 domain:(const char *)a5 onInterface:(unsigned int)a6 withFlags:(unsigned int)a7;
@end

@implementation TSBonjourBrowser

- (TSBonjourBrowser)init
{
  v8.receiver = self;
  v8.super_class = TSBonjourBrowser;
  v2 = [(TSBonjourBrowser *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.timesync.bonjour.browse", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEA60]);
    nodes = v2->_nodes;
    v2->_nodes = v5;
  }

  return v2;
}

- (void)addedServiceWithName:(const char *)a3 regType:(const char *)a4 domain:(const char *)a5 onInterface:(unsigned int)a6 withFlags:(unsigned int)a7
{
  v66 = *MEMORY[0x277D85DE8];
  *v64 = 0;
  v65 = 0;
  if_indextoname(a6, v64);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316418;
    v53 = a3;
    v54 = 2080;
    v55 = a4;
    v56 = 2080;
    v57 = a5;
    v58 = 1024;
    v59 = a7;
    v60 = 2080;
    v61 = v64;
    v62 = 1024;
    v63 = a6;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Added service with name %s type %s domain %s flags 0x%08x on interface %s (%u)\n", buf, 0x36u);
  }

  if (a6)
  {
    v43 = a6;
    v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:v64];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
    v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:a4];
    [MEMORY[0x277CCACA8] stringWithUTF8String:a5];
    v45 = v44 = self;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v14 = [(TSBonjourBrowser *)self nodes];
    v15 = [v14 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v48;
LABEL_6:
      v18 = 0;
      while (1)
      {
        if (*v48 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v47 + 1) + 8 * v18);
        v20 = [v19 name];
        if (![v20 isEqualToString:v13])
        {
          goto LABEL_14;
        }

        v21 = [v19 type];
        if (([v21 isEqualToString:v46] & 1) == 0)
        {
          break;
        }

        v22 = [v19 domain];
        v23 = [v22 isEqualToString:v45];

        if (v23)
        {
          v27 = v19;

          v24 = v44;
          v25 = v43;
          v26 = v42;
          if (v27)
          {
            goto LABEL_26;
          }

          goto LABEL_19;
        }

LABEL_15:
        if (v16 == ++v18)
        {
          v16 = [v14 countByEnumeratingWithState:&v47 objects:v51 count:16];
          if (v16)
          {
            goto LABEL_6;
          }

          goto LABEL_17;
        }
      }

LABEL_14:
      goto LABEL_15;
    }

LABEL_17:

    v24 = v44;
    v25 = v43;
    v26 = v42;
LABEL_19:
    v27 = [[TSBonjourNode alloc] initWithServiceName:v13 type:v46 andDomain:v45];
    v28 = [(TSBonjourBrowser *)v24 nodes];

    if (v28)
    {
      v29 = [(TSBonjourBrowser *)v24 nodes];
      v30 = [v29 arrayByAddingObject:v27];
    }

    else
    {
      v30 = [MEMORY[0x277CBEA60] arrayWithObject:v27];
    }

    [(TSBonjourBrowser *)v24 setNodes:v30];
    v31 = [(TSBonjourBrowser *)v24 delegate];
    if (v31)
    {
      v32 = v31;
      v33 = [(TSBonjourBrowser *)v24 delegate];
      v34 = objc_opt_respondsToSelector();

      if (v34)
      {
        v35 = [(TSBonjourBrowser *)v24 delegate];
        [v35 didAddNode:v27 onBrowser:v24];
      }
    }

LABEL_26:
    [(TSBonjourNode *)v27 addedOnInterface:v25 named:v26];
    v36 = [(TSBonjourBrowser *)v24 delegate];
    if (v36)
    {
      v37 = v36;
      v38 = [(TSBonjourBrowser *)v24 delegate];
      v39 = objc_opt_respondsToSelector();

      if (v39)
      {
        v40 = [(TSBonjourBrowser *)v24 delegate];
        [v40 didAddInterface:v26 toNode:v27 onBrowser:v24];
      }
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)removedServiceWithName:(const char *)a3 regType:(const char *)a4 domain:(const char *)a5 onInterface:(unsigned int)a6 withFlags:(unsigned int)a7
{
  v63 = *MEMORY[0x277D85DE8];
  *v61 = 0;
  v62 = 0;
  if_indextoname(a6, v61);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316418;
    v50 = a3;
    v51 = 2080;
    v52 = a4;
    v53 = 2080;
    v54 = a5;
    v55 = 1024;
    v56 = a7;
    v57 = 2080;
    v58 = v61;
    v59 = 1024;
    v60 = a6;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Removed service with name %s type %s domain %s flags 0x%08x on interface %s (%u)\n", buf, 0x36u);
  }

  v41 = a6;
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v61];
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
  v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:a4];
  v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:a5];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v15 = [(TSBonjourBrowser *)self nodes];
  v16 = [v15 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (!v16)
  {
LABEL_25:

    goto LABEL_27;
  }

  v39 = self;
  v40 = v13;
  v17 = *v45;
LABEL_5:
  v18 = 0;
  while (1)
  {
    if (*v45 != v17)
    {
      objc_enumerationMutation(v15);
    }

    v19 = *(*(&v44 + 1) + 8 * v18);
    v20 = [v19 name];
    if (![v20 isEqualToString:v14])
    {
      goto LABEL_13;
    }

    v21 = [v19 type];
    if (([v21 isEqualToString:v43] & 1) == 0)
    {

LABEL_13:
      goto LABEL_14;
    }

    v22 = [v19 domain];
    v23 = [v22 isEqualToString:v42];

    if (v23)
    {
      break;
    }

LABEL_14:
    if (v16 == ++v18)
    {
      v16 = [v15 countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v16)
      {
        goto LABEL_5;
      }

      v13 = v40;
      goto LABEL_25;
    }
  }

  v16 = v19;

  if (!v16)
  {
    v13 = v40;
    goto LABEL_27;
  }

  v24 = [(TSBonjourBrowser *)v39 delegate];
  v13 = v40;
  if (v24)
  {
    v25 = v24;
    v26 = [(TSBonjourBrowser *)v39 delegate];
    v27 = objc_opt_respondsToSelector();

    if (v27)
    {
      v28 = [(TSBonjourBrowser *)v39 delegate];
      [v28 didRemoveInterface:v40 fromNode:v16 onBrowser:v39];
    }
  }

  [v16 removedFromInterface:v41 named:v40];
  v29 = [v16 interfaces];
  v30 = [v29 count];

  if (!v30)
  {
    v31 = objc_alloc(MEMORY[0x277CBEB18]);
    v32 = [(TSBonjourBrowser *)v39 nodes];
    v15 = [v31 initWithArray:v32];

    [v15 removeObject:v16];
    [(TSBonjourBrowser *)v39 setNodes:v15];
    v33 = [(TSBonjourBrowser *)v39 delegate];
    if (v33)
    {
      v34 = v33;
      v35 = [(TSBonjourBrowser *)v39 delegate];
      v36 = objc_opt_respondsToSelector();

      if (v36)
      {
        v37 = [(TSBonjourBrowser *)v39 delegate];
        [v37 didRemoveNode:v16 onBrowser:v39];
      }
    }

    goto LABEL_25;
  }

LABEL_27:

  v38 = *MEMORY[0x277D85DE8];
}

- (BOOL)startBrowsingWithError:(id *)a3
{
  sdRef = self->_sdRef;
  p_sdRef = &self->_sdRef;
  if (sdRef)
  {
    return 1;
  }

  v8 = DNSServiceBrowse(p_sdRef, 0x100000u, 0, "_ptp-general._udp.", 0, TSBBBrowseServiceReply, self);
  if (a3 && v8)
  {
    v9 = TSBonjourErrorFromErrorCode(v8);
    v10 = v9;
    result = 0;
    *a3 = v9;
  }

  else
  {
    if (!v8)
    {
      DNSServiceSetDispatchQueue(self->_sdRef, self->_queue);
      return 1;
    }

    return 0;
  }

  return result;
}

- (BOOL)stopBrowsing
{
  sdRef = self->_sdRef;
  if (sdRef)
  {
    DNSServiceRefDeallocate(self->_sdRef);
    self->_sdRef = 0;
  }

  return sdRef != 0;
}

- (void)dealloc
{
  sdRef = self->_sdRef;
  if (sdRef)
  {
    DNSServiceRefDeallocate(sdRef);
  }

  v4.receiver = self;
  v4.super_class = TSBonjourBrowser;
  [(TSBonjourBrowser *)&v4 dealloc];
}

@end