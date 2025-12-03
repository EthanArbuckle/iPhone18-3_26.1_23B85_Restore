@interface TSBonjourBrowser
- (BOOL)startBrowsingWithError:(id *)error;
- (BOOL)stopBrowsing;
- (TSBonjourBrowser)init;
- (void)addedServiceWithName:(const char *)name regType:(const char *)type domain:(const char *)domain onInterface:(unsigned int)interface withFlags:(unsigned int)flags;
- (void)dealloc;
- (void)removedServiceWithName:(const char *)name regType:(const char *)type domain:(const char *)domain onInterface:(unsigned int)interface withFlags:(unsigned int)flags;
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

- (void)addedServiceWithName:(const char *)name regType:(const char *)type domain:(const char *)domain onInterface:(unsigned int)interface withFlags:(unsigned int)flags
{
  v66 = *MEMORY[0x277D85DE8];
  *v64 = 0;
  v65 = 0;
  if_indextoname(interface, v64);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316418;
    nameCopy = name;
    v54 = 2080;
    typeCopy = type;
    v56 = 2080;
    domainCopy = domain;
    v58 = 1024;
    flagsCopy = flags;
    v60 = 2080;
    v61 = v64;
    v62 = 1024;
    interfaceCopy = interface;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Added service with name %s type %s domain %s flags 0x%08x on interface %s (%u)\n", buf, 0x36u);
  }

  if (interface)
  {
    interfaceCopy2 = interface;
    v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:v64];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:name];
    v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:type];
    [MEMORY[0x277CCACA8] stringWithUTF8String:domain];
    v45 = v44 = self;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    nodes = [(TSBonjourBrowser *)self nodes];
    v15 = [nodes countByEnumeratingWithState:&v47 objects:v51 count:16];
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
          objc_enumerationMutation(nodes);
        }

        v19 = *(*(&v47 + 1) + 8 * v18);
        name = [v19 name];
        if (![name isEqualToString:v13])
        {
          goto LABEL_14;
        }

        type = [v19 type];
        if (([type isEqualToString:v46] & 1) == 0)
        {
          break;
        }

        domain = [v19 domain];
        v23 = [domain isEqualToString:v45];

        if (v23)
        {
          v27 = v19;

          v24 = v44;
          v25 = interfaceCopy2;
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
          v16 = [nodes countByEnumeratingWithState:&v47 objects:v51 count:16];
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
    v25 = interfaceCopy2;
    v26 = v42;
LABEL_19:
    v27 = [[TSBonjourNode alloc] initWithServiceName:v13 type:v46 andDomain:v45];
    nodes2 = [(TSBonjourBrowser *)v24 nodes];

    if (nodes2)
    {
      nodes3 = [(TSBonjourBrowser *)v24 nodes];
      v30 = [nodes3 arrayByAddingObject:v27];
    }

    else
    {
      v30 = [MEMORY[0x277CBEA60] arrayWithObject:v27];
    }

    [(TSBonjourBrowser *)v24 setNodes:v30];
    delegate = [(TSBonjourBrowser *)v24 delegate];
    if (delegate)
    {
      v32 = delegate;
      delegate2 = [(TSBonjourBrowser *)v24 delegate];
      v34 = objc_opt_respondsToSelector();

      if (v34)
      {
        delegate3 = [(TSBonjourBrowser *)v24 delegate];
        [delegate3 didAddNode:v27 onBrowser:v24];
      }
    }

LABEL_26:
    [(TSBonjourNode *)v27 addedOnInterface:v25 named:v26];
    delegate4 = [(TSBonjourBrowser *)v24 delegate];
    if (delegate4)
    {
      v37 = delegate4;
      delegate5 = [(TSBonjourBrowser *)v24 delegate];
      v39 = objc_opt_respondsToSelector();

      if (v39)
      {
        delegate6 = [(TSBonjourBrowser *)v24 delegate];
        [delegate6 didAddInterface:v26 toNode:v27 onBrowser:v24];
      }
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)removedServiceWithName:(const char *)name regType:(const char *)type domain:(const char *)domain onInterface:(unsigned int)interface withFlags:(unsigned int)flags
{
  v63 = *MEMORY[0x277D85DE8];
  *v61 = 0;
  v62 = 0;
  if_indextoname(interface, v61);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316418;
    nameCopy = name;
    v51 = 2080;
    typeCopy = type;
    v53 = 2080;
    domainCopy = domain;
    v55 = 1024;
    flagsCopy = flags;
    v57 = 2080;
    v58 = v61;
    v59 = 1024;
    interfaceCopy = interface;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Removed service with name %s type %s domain %s flags 0x%08x on interface %s (%u)\n", buf, 0x36u);
  }

  interfaceCopy2 = interface;
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v61];
  v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:name];
  v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:type];
  v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:domain];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  nodes = [(TSBonjourBrowser *)self nodes];
  v16 = [nodes countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (!v16)
  {
LABEL_25:

    goto LABEL_27;
  }

  selfCopy = self;
  v40 = v13;
  v17 = *v45;
LABEL_5:
  v18 = 0;
  while (1)
  {
    if (*v45 != v17)
    {
      objc_enumerationMutation(nodes);
    }

    v19 = *(*(&v44 + 1) + 8 * v18);
    name = [v19 name];
    if (![name isEqualToString:v14])
    {
      goto LABEL_13;
    }

    type = [v19 type];
    if (([type isEqualToString:v43] & 1) == 0)
    {

LABEL_13:
      goto LABEL_14;
    }

    domain = [v19 domain];
    v23 = [domain isEqualToString:v42];

    if (v23)
    {
      break;
    }

LABEL_14:
    if (v16 == ++v18)
    {
      v16 = [nodes countByEnumeratingWithState:&v44 objects:v48 count:16];
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

  delegate = [(TSBonjourBrowser *)selfCopy delegate];
  v13 = v40;
  if (delegate)
  {
    v25 = delegate;
    delegate2 = [(TSBonjourBrowser *)selfCopy delegate];
    v27 = objc_opt_respondsToSelector();

    if (v27)
    {
      delegate3 = [(TSBonjourBrowser *)selfCopy delegate];
      [delegate3 didRemoveInterface:v40 fromNode:v16 onBrowser:selfCopy];
    }
  }

  [v16 removedFromInterface:interfaceCopy2 named:v40];
  interfaces = [v16 interfaces];
  v30 = [interfaces count];

  if (!v30)
  {
    v31 = objc_alloc(MEMORY[0x277CBEB18]);
    nodes2 = [(TSBonjourBrowser *)selfCopy nodes];
    nodes = [v31 initWithArray:nodes2];

    [nodes removeObject:v16];
    [(TSBonjourBrowser *)selfCopy setNodes:nodes];
    delegate4 = [(TSBonjourBrowser *)selfCopy delegate];
    if (delegate4)
    {
      v34 = delegate4;
      delegate5 = [(TSBonjourBrowser *)selfCopy delegate];
      v36 = objc_opt_respondsToSelector();

      if (v36)
      {
        delegate6 = [(TSBonjourBrowser *)selfCopy delegate];
        [delegate6 didRemoveNode:v16 onBrowser:selfCopy];
      }
    }

    goto LABEL_25;
  }

LABEL_27:

  v38 = *MEMORY[0x277D85DE8];
}

- (BOOL)startBrowsingWithError:(id *)error
{
  sdRef = self->_sdRef;
  p_sdRef = &self->_sdRef;
  if (sdRef)
  {
    return 1;
  }

  v8 = DNSServiceBrowse(p_sdRef, 0x100000u, 0, "_ptp-general._udp.", 0, TSBBBrowseServiceReply, self);
  if (error && v8)
  {
    v9 = TSBonjourErrorFromErrorCode(v8);
    v10 = v9;
    result = 0;
    *error = v9;
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