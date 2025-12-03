@interface AWDLPeerProbe
- (AWDLPeerProbe)initWithQueue:(id)queue;
- (void)dealloc;
- (void)periodicTimerFired:(id)fired;
- (void)startAWDLPeerPollingForServices:(id)services withCount:(unint64_t)count interval:(unint64_t)interval;
- (void)stopTest;
@end

@implementation AWDLPeerProbe

- (AWDLPeerProbe)initWithQueue:(id)queue
{
  v7.receiver = self;
  v7.super_class = AWDLPeerProbe;
  v3 = [(TestProbe *)&v7 initWithQueue:queue];
  if (v3)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    peerList = v3->_peerList;
    v3->_peerList = dictionary;
  }

  return v3;
}

- (void)dealloc
{
  [(AWDLPeerProbe *)self stopTest];
  v3.receiver = self;
  v3.super_class = AWDLPeerProbe;
  [(AWDLPeerProbe *)&v3 dealloc];
}

- (void)periodicTimerFired:(id)fired
{
  v85 = *MEMORY[0x277D85DE8];
  firedCopy = fired;
  if (![(TestProbe *)self isRunning])
  {
    goto LABEL_60;
  }

  v51 = firedCopy;
  v5 = +[WiFiShim sharedInstance];
  getAWDLPeerList = [v5 getAWDLPeerList];

  v52 = [(NSMutableDictionary *)self->_peerList mutableCopy];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = getAWDLPeerList;
  v7 = [obj countByEnumeratingWithState:&v77 objects:v84 count:16];
  selfCopy = self;
  if (!v7)
  {
    v9 = 0;
    v10 = 0;
    goto LABEL_47;
  }

  v8 = v7;
  v9 = 0;
  v10 = 0;
  v57 = *v78;
  do
  {
    v11 = 0;
    v53 = v8;
    do
    {
      if (*v78 != v57)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v77 + 1) + 8 * v11);
      v13 = [v12 objectForKeyedSubscript:@"STATION_MAC"];
      if ([v13 length])
      {
        v14 = ether_ntoa([v13 bytes]);
        if (v14)
        {
          v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v14];

          v10 = v15;
        }
      }

      if ([(NSArray *)self->_servicesOfInterest count])
      {
        v62 = [v12 objectForKeyedSubscript:@"STATION_AWDL_SERVICES"];
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v16 = self->_servicesOfInterest;
        v56 = [(NSArray *)v16 countByEnumeratingWithState:&v73 objects:v83 count:16];
        if (v56)
        {
          v17 = *v74;
          v60 = v9;
          v61 = v10;
          v58 = v12;
          v59 = v13;
          v55 = *v74;
          do
          {
            v18 = 0;
            do
            {
              if (*v74 != v17)
              {
                objc_enumerationMutation(v16);
              }

              v19 = *(*(&v73 + 1) + 8 * v18);
              v69 = 0u;
              v70 = 0u;
              v71 = 0u;
              v72 = 0u;
              v20 = v62;
              v21 = [v20 countByEnumeratingWithState:&v69 objects:v82 count:16];
              if (v21)
              {
                v22 = v21;
                v23 = *v70;
                while (2)
                {
                  for (i = 0; i != v22; ++i)
                  {
                    if (*v70 != v23)
                    {
                      objc_enumerationMutation(v20);
                    }

                    v25 = *(*(&v69 + 1) + 8 * i);
                    if ([v25 hasPrefix:@"PTR"] && objc_msgSend(v25, "containsString:", v19))
                    {

                      self = selfCopy;
                      v9 = v60;
                      v10 = v61;
                      v8 = v53;
                      v12 = v58;
                      v13 = v59;
                      goto LABEL_34;
                    }
                  }

                  v22 = [v20 countByEnumeratingWithState:&v69 objects:v82 count:16];
                  if (v22)
                  {
                    continue;
                  }

                  break;
                }
              }

              ++v18;
              v17 = v55;
              self = selfCopy;
              v9 = v60;
              v10 = v61;
              v12 = v58;
              v13 = v59;
            }

            while (v18 != v56);
            v8 = v53;
            v56 = [(NSArray *)v16 countByEnumeratingWithState:&v73 objects:v83 count:16];
          }

          while (v56);
        }

        v26 = [v12 objectForKeyedSubscript:@"STATION_HOSTNAME"];
        if (![v26 length])
        {
          v27 = objc_alloc(MEMORY[0x277CCACA8]);
          if (v10)
          {
            v28 = v10;
          }

          else
          {
            v28 = &stru_2847966D8;
          }

          v29 = [v27 initWithString:v28];

          v26 = v29;
        }

        [v26 length];

        delegate2 = v62;
        goto LABEL_41;
      }

LABEL_34:

      if (!v10)
      {
        goto LABEL_42;
      }

      v31 = [(NSMutableDictionary *)self->_peerList objectForKeyedSubscript:v10];
      if (!v31)
      {
        [(NSMutableDictionary *)self->_peerList setObject:v12 forKeyedSubscript:v10];
        [v52 removeObjectForKey:v10];
        delegate = [(AWDLPeerProbe *)self delegate];
        v35 = objc_opt_respondsToSelector();

        if (v35)
        {
          delegate2 = [(AWDLPeerProbe *)self delegate];
          [delegate2 awdlPeerPollProbe:self serviceAdded:v12];
          v9 = 0;
          goto LABEL_41;
        }

LABEL_42:
        v9 = 0;
        goto LABEL_43;
      }

      v9 = v31;
      if (([v31 isEqual:v12] & 1) == 0)
      {
        [(NSMutableDictionary *)self->_peerList setObject:v12 forKeyedSubscript:v10];
        [v52 removeObjectForKey:v10];
        delegate3 = [(AWDLPeerProbe *)self delegate];
        v33 = objc_opt_respondsToSelector();

        if (v33)
        {
          delegate2 = [(AWDLPeerProbe *)self delegate];
          [delegate2 awdlPeerPollProbe:self serviceUpdated:v12];
LABEL_41:
        }
      }

LABEL_43:

      ++v11;
    }

    while (v11 != v8);
    v8 = [obj countByEnumeratingWithState:&v77 objects:v84 count:16];
  }

  while (v8);
LABEL_47:

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v36 = v52;
  v37 = [v36 countByEnumeratingWithState:&v65 objects:v81 count:16];
  if (v37)
  {
    v38 = v37;
    v63 = *v66;
    do
    {
      v39 = 0;
      v40 = v9;
      v41 = v10;
      do
      {
        if (*v66 != v63)
        {
          objc_enumerationMutation(v36);
        }

        v42 = *(*(&v65 + 1) + 8 * v39);

        v43 = v42;
        v9 = [v36 objectForKeyedSubscript:v42];

        delegate4 = [(AWDLPeerProbe *)selfCopy delegate];
        LOBYTE(v42) = objc_opt_respondsToSelector();

        if (v42)
        {
          delegate5 = [(AWDLPeerProbe *)selfCopy delegate];
          [delegate5 awdlPeerPollProbe:selfCopy serviceRemoved:v9];
        }

        v10 = v43;
        [(NSMutableDictionary *)selfCopy->_peerList removeObjectForKey:v43];
        ++v39;
        v40 = v9;
        v41 = v43;
      }

      while (v38 != v39);
      v38 = [v36 countByEnumeratingWithState:&v65 objects:v81 count:16];
    }

    while (v38);
  }

  v46 = selfCopy->_pollCount - 1;
  selfCopy->_pollCount = v46;
  if (!v46)
  {
    [(AWDLPeerProbe *)selfCopy stopTest];
    delegate6 = [(AWDLPeerProbe *)selfCopy delegate];
    v48 = objc_opt_respondsToSelector();

    if (v48)
    {
      delegate7 = [(AWDLPeerProbe *)selfCopy delegate];
      [delegate7 awdlPeerPollProbeIsComplete:selfCopy];
    }
  }

  firedCopy = v51;
LABEL_60:

  v50 = *MEMORY[0x277D85DE8];
}

- (void)startAWDLPeerPollingForServices:(id)services withCount:(unint64_t)count interval:(unint64_t)interval
{
  v11[1] = *MEMORY[0x277D85DE8];
  servicesCopy = services;
  [(AWDLPeerProbe *)self setPollCount:count];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(AWDLPeerProbe *)self setServicesOfInterest:servicesCopy];
  }

  else
  {
    v11[0] = servicesCopy;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [(AWDLPeerProbe *)self setServicesOfInterest:v9];
  }

  [(TestProbe *)self setRunning:1];
  [(TestProbe *)self startPeriodicTimerAt:0 repeatInterval:1000000000 * interval];
  [(TestProbe *)self setStatus:1];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)stopTest
{
  if ([(TestProbe *)self isRunning])
  {
    [(TestProbe *)self setRunning:0];

    [(TestProbe *)self stopPeriodicTimer];
  }
}

@end