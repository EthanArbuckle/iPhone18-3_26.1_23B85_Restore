@interface BrokenBackhaulMetric
- (id)eventPayload;
- (void)_populateNetworkPropertiesOnCellRelay:(id)relay isIngress:(BOOL)ingress;
- (void)_populateNetworkPropertiesOnWiFiRelay:(id)relay isIngress:(BOOL)ingress;
- (void)_populateWifiPropertiesToCAPayload:(id)payload isIngress:(BOOL)ingress;
@end

@implementation BrokenBackhaulMetric

- (void)_populateNetworkPropertiesOnCellRelay:(id)relay isIngress:(BOOL)ingress
{
  v5 = 32;
  if (ingress)
  {
    v5 = 24;
  }

  v8 = *(&self->super.isa + v5);
  relayCopy = relay;
  [v8 removeAllObjects];
  active = [relayCopy active];

  if (active)
  {
    [v8 addObject:&unk_2847EFBD8];
  }
}

- (void)_populateNetworkPropertiesOnWiFiRelay:(id)relay isIngress:(BOOL)ingress
{
  ingressCopy = ingress;
  relayCopy = relay;
  v6 = 16;
  if (ingressCopy)
  {
    v6 = 8;
  }

  v7 = *(&self->super.isa + v6);
  [v7 removeAllObjects];
  if ([relayCopy active])
  {
    [v7 addObject:&unk_2847EFBD8];
  }

  if ([relayCopy primary])
  {
    [v7 addObject:&unk_2847EFBF0];
  }

  if ([relayCopy tcpProgressHintsScore])
  {
    [v7 addObject:&unk_2847EFC08];
    tcpProgressHintsScore = [relayCopy tcpProgressHintsScore];
    v9 = 44;
    if (ingressCopy)
    {
      v9 = 40;
    }

    *(&self->super.isa + v9) = tcpProgressHintsScore;
  }

  if ([relayCopy rxSignalFullBars])
  {
    [v7 addObject:&unk_2847EFC20];
  }

  if ([relayCopy rxSignalThresholded])
  {
    [v7 addObject:&unk_2847EFC38];
  }

  if ([relayCopy dnsOut])
  {
    [v7 addObject:&unk_2847EFC50];
  }

  if ([relayCopy internetDnsOut])
  {
    [v7 addObject:&unk_2847EFC68];
  }

  if ([relayCopy apsdFailure])
  {
    [v7 addObject:&unk_2847EFC80];
  }

  if ([relayCopy stuckDefRoute])
  {
    [v7 addObject:&unk_2847EFC98];
  }

  if ([relayCopy appleServicesConnectionFriction])
  {
    [v7 addObject:&unk_2847EFCB0];
  }
}

- (void)_populateWifiPropertiesToCAPayload:(id)payload isIngress:(BOOL)ingress
{
  ingressCopy = ingress;
  v34 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  v7 = !ingressCopy;
  v8 = 16;
  if (ingressCopy)
  {
    v8 = 8;
  }

  v9 = *(&self->super.isa + v8);
  if (ingressCopy)
  {
    v10 = @"ingressWifi";
  }

  else
  {
    v10 = @"egressWifi";
  }

  if (v7)
  {
    v11 = 44;
  }

  else
  {
    v11 = 40;
  }

  v12 = v9;
  v13 = *(&self->super.isa + v11);
  v14 = v10;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v27 = v12;
  obj = [v12 allObjects];
  v15 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    v18 = &unk_2847EFBD8;
    if (v13 <= 0xA)
    {
      v18 = &unk_2847EFCC8;
    }

    if (v13 <= 0x32)
    {
      v19 = v18;
    }

    else
    {
      v19 = &unk_2847EFBF0;
    }

    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(obj);
        }

        unsignedIntValue = [*(*(&v29 + 1) + 8 * i) unsignedIntValue];
        v22 = objc_alloc(MEMORY[0x277CCACA8]);
        if ((unsignedIntValue - 1) >= 0x21)
        {
          v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(unknown: %i)", unsignedIntValue];
        }

        else
        {
          v23 = off_27898F458[(unsignedIntValue - 1)];
        }

        v24 = [v22 initWithFormat:@"%@_%@", v14, v23];

        if (unsignedIntValue == 17)
        {
          v25 = v19;
        }

        else
        {
          v25 = MEMORY[0x277CBEC38];
        }

        [payloadCopy setObject:v25 forKeyedSubscript:v24];
      }

      v16 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v16);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)eventPayload
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_state];
  [v3 setObject:v4 forKeyedSubscript:@"state"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_previousState];
  [v3 setObject:v5 forKeyedSubscript:@"previousState"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_stateHeldForSecs];
  [v3 setObject:v6 forKeyedSubscript:@"stateHeldForSecs"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_stateCellUsageBytes];
  [v3 setObject:v7 forKeyedSubscript:@"stateCellUsageByte"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_ingressTrigger];
  [v3 setObject:v8 forKeyedSubscript:@"ingressTrigger"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_egressTrigger];
  [v3 setObject:v9 forKeyedSubscript:@"egressTrigger"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_ingressTriggerInterfaceType];
  [v3 setObject:v10 forKeyedSubscript:@"ingressTriggerInterfaceType"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_egressTriggerInterfaceType];
  [v3 setObject:v11 forKeyedSubscript:@"egressTriggerInterfaceType"];

  [(BrokenBackhaulMetric *)self _populateWifiPropertiesToCAPayload:v3 isIngress:1];
  [(BrokenBackhaulMetric *)self _populateWifiPropertiesToCAPayload:v3 isIngress:0];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  selfCopy = self;
  obj = [(NSMutableSet *)self->_egressCellInputTypes allObjects];
  v12 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v40;
    v15 = MEMORY[0x277CBEC38];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(obj);
        }

        unsignedIntValue = [*(*(&v39 + 1) + 8 * i) unsignedIntValue];
        v18 = objc_alloc(MEMORY[0x277CCACA8]);
        if ((unsignedIntValue - 1) >= 0x21)
        {
          v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(unknown: %i)", unsignedIntValue];
        }

        else
        {
          v19 = off_27898F458[(unsignedIntValue - 1)];
        }

        v20 = [v18 initWithFormat:@"%@_%@", @"egressCell", v19];

        [v3 setObject:v15 forKeyedSubscript:v20];
      }

      v13 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v13);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obja = [(NSMutableSet *)selfCopy->_ingressCellInputTypes allObjects];
  v21 = [obja countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v36;
    v24 = MEMORY[0x277CBEC38];
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v36 != v23)
        {
          objc_enumerationMutation(obja);
        }

        unsignedIntValue2 = [*(*(&v35 + 1) + 8 * j) unsignedIntValue];
        v27 = objc_alloc(MEMORY[0x277CCACA8]);
        if ((unsignedIntValue2 - 1) >= 0x21)
        {
          v28 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"(unknown: %i)", unsignedIntValue2];
        }

        else
        {
          v28 = off_27898F458[(unsignedIntValue2 - 1)];
        }

        v29 = [v27 initWithFormat:@"%@_%@", @"ingressCell", v28];

        [v3 setObject:v24 forKeyedSubscript:v29];
      }

      v22 = [obja countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v22);
  }

  v30 = *MEMORY[0x277D85DE8];

  return v3;
}

@end