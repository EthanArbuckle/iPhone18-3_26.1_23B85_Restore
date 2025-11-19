@interface TSgPTPNetworkPort
+ (id)diagnosticDescriptionForInfo:(id)a3 withIndent:(id)a4;
- (TSgPTPNetworkPort)initWithImplDC:(id)a3;
- (void)addClient:(id)a3;
- (void)didAnnounceTimeoutForPort:(id)a3;
- (void)didSyncTimeoutForPort:(id)a3;
- (void)didSyncTimeoutWithMean:(int64_t)a3 median:(int64_t)a4 standardDeviation:(unint64_t)a5 minimum:(int64_t)a6 maximum:(int64_t)a7 numberOfSamples:(unsigned int)a8 forPort:(id)a9;
- (void)didTerminateServiceForPort:(id)a3;
- (void)didTimeoutOnMACLookupForPort:(id)a3;
- (void)removeClient:(id)a3;
@end

@implementation TSgPTPNetworkPort

- (TSgPTPNetworkPort)initWithImplDC:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [TSgPTPNetworkPort initWithImplDC:];
    clients = v12;
    v7 = v13;
    goto LABEL_4;
  }

  v11.receiver = self;
  v11.super_class = TSgPTPNetworkPort;
  v6 = [(TSgPTPPort *)&v11 initWithImplDC:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_impl, a3);
    v7->_clientLock._os_unfair_lock_opaque = 0;
    v8 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    clients = v7->_clients;
    v7->_clients = v8;
LABEL_4:
  }

  return v7;
}

- (void)addClient:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v4 description];
    v6 = [v5 UTF8String];
    v7 = [(TSgPTPNetworkPort *)self description];
    *buf = 136315394;
    v20 = v6;
    v21 = 2080;
    v22 = [v7 UTF8String];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Adding Client %s to port %s\n", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_clientLock);
  [(NSPointerArray *)self->_clients compact];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_clients;
  v9 = [(NSPointerArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if (*(*(&v14 + 1) + 8 * v12) == v4)
        {

          goto LABEL_14;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSPointerArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  [(NSPointerArray *)self->_clients addPointer:v4, v14];
  if ([(NSPointerArray *)self->_clients count]== 1)
  {
    [(_TSF_TSDgPTPNetworkPort *)self->_impl addClient:self];
  }

LABEL_14:
  os_unfair_lock_unlock(&self->_clientLock);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)removeClient:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v4 description];
    v6 = [v5 UTF8String];
    v7 = [(TSgPTPNetworkPort *)self description];
    *buf = 136315394;
    v22 = v6;
    v23 = 2080;
    v24 = [v7 UTF8String];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Removing Client %s from port %s\n", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_clientLock);
  [(NSPointerArray *)self->_clients compact];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_clients;
  v9 = [(NSPointerArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v17;
    while (2)
    {
      v13 = 0;
      v14 = v11;
      v11 += v10;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v8);
        }

        if (*(*(&v16 + 1) + 8 * v13) == v4)
        {

          [(NSPointerArray *)self->_clients removePointerAtIndex:v14, v16];
          goto LABEL_13;
        }

        ++v14;
        ++v13;
      }

      while (v10 != v13);
      v10 = [(NSPointerArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
  if (![(NSPointerArray *)self->_clients count])
  {
    [(_TSF_TSDgPTPNetworkPort *)self->_impl removeClient:self];
  }

  os_unfair_lock_unlock(&self->_clientLock);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)didTimeoutOnMACLookupForPort:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_clientLock);
  [(NSPointerArray *)self->_clients compact];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412802;
    v19 = v5;
    v20 = 2048;
    v21 = [(TSgPTPPort *)self clockIdentifier];
    v22 = 1024;
    v23 = [(TSgPTPPort *)self portNumber];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSgPTPNetworkPort(%@,%016llx.%hu): timedoutMACLookup", buf, 0x1Cu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_clients;
  v7 = [(NSPointerArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 didTimeoutOnMACLookupForPort:{self, v13}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSPointerArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_clientLock);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)didAnnounceTimeoutForPort:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_clientLock);
  [(NSPointerArray *)self->_clients compact];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412802;
    v19 = v5;
    v20 = 2048;
    v21 = [(TSgPTPPort *)self clockIdentifier];
    v22 = 1024;
    v23 = [(TSgPTPPort *)self portNumber];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSgPTPNetworkPort(%@,%016llx.%hu): announceTimeout", buf, 0x1Cu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_clients;
  v7 = [(NSPointerArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 didAnnounceTimeoutForPort:{self, v13}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSPointerArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_clientLock);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)didSyncTimeoutForPort:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_clientLock);
  [(NSPointerArray *)self->_clients compact];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412802;
    v19 = v5;
    v20 = 2048;
    v21 = [(TSgPTPPort *)self clockIdentifier];
    v22 = 1024;
    v23 = [(TSgPTPPort *)self portNumber];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSgPTPNetworkPort(%@,%016llx.%hu): syncTimeout", buf, 0x1Cu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_clients;
  v7 = [(NSPointerArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 didSyncTimeoutForPort:{self, v13}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSPointerArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_clientLock);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)didSyncTimeoutWithMean:(int64_t)a3 median:(int64_t)a4 standardDeviation:(unint64_t)a5 minimum:(int64_t)a6 maximum:(int64_t)a7 numberOfSamples:(unsigned int)a8 forPort:(id)a9
{
  v48 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_clientLock);
  [(NSPointerArray *)self->_clients compact];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138414338;
    v31 = v14;
    v32 = 2048;
    v33 = [(TSgPTPPort *)self clockIdentifier];
    v34 = 1024;
    v35 = [(TSgPTPPort *)self portNumber];
    v36 = 2048;
    v37 = a3;
    v38 = 2048;
    v39 = a4;
    v40 = 2048;
    v41 = a5;
    v42 = 2048;
    v43 = a6;
    v44 = 2048;
    v45 = a7;
    v46 = 1024;
    v47 = a8;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSgPTPNetworkPort(%@,%016llx.%hu): syncTimeoutWithMean:%lld median:%lld standardDeviation:%llu minimum:%lld maximum:%lld numberOfSamples:%u", buf, 0x54u);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = self->_clients;
  v16 = [(NSPointerArray *)v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v25 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v20 didSyncTimeoutWithMean:a3 median:a4 standardDeviation:a5 minimum:a6 maximum:a7 numberOfSamples:a8 forPort:self];
        }
      }

      v17 = [(NSPointerArray *)v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v17);
  }

  os_unfair_lock_unlock(&self->_clientLock);
  v21 = *MEMORY[0x277D85DE8];
}

- (void)didTerminateServiceForPort:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_clientLock);
  [(NSPointerArray *)self->_clients compact];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138412802;
    v19 = v5;
    v20 = 2048;
    v21 = [(TSgPTPPort *)self clockIdentifier];
    v22 = 1024;
    v23 = [(TSgPTPPort *)self portNumber];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSgPTPNetworkPort(%@,%016llx.%hu): terminatedService", buf, 0x1Cu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_clients;
  v7 = [(NSPointerArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 didTerminateServiceForPort:{self, v13}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSPointerArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_clientLock);
  [(TSgPTPPort *)self serviceTerminated];
  v12 = *MEMORY[0x277D85DE8];
}

+ (id)diagnosticDescriptionForInfo:(id)a3 withIndent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v65.receiver = a1;
  v65.super_class = &OBJC_METACLASS___TSgPTPNetworkPort;
  v8 = objc_msgSendSuper2(&v65, sel_diagnosticDescriptionForInfo_withIndent_, v6, v7);
  v9 = [v6 objectForKeyedSubscript:@"InterfaceName"];
  [v8 appendFormat:@"%@    Interface: ", v7];
  if (v9)
  {
    [v8 appendFormat:@"%@\n", v9];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Source Address: ", v7];
  v10 = [v6 objectForKeyedSubscript:@"SourceAddress"];
  v11 = v10;
  if (v10)
  {
    [v8 appendFormat:@"%@\n", v10];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Destination Address: ", v7];
  v12 = [v6 objectForKeyedSubscript:@"DestinationAddress"];

  if (v12)
  {
    [v8 appendFormat:@"%@\n", v12];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Announce Clock Priority 1: ", v7];
  v13 = [v6 objectForKeyedSubscript:@"ClockPriority1"];
  v14 = v13;
  if (v13)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v13, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Announce Clock Class: ", v7];
  v15 = [v6 objectForKeyedSubscript:@"ClockClass"];

  if (v15)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v15, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Announce Clock Accuracy: ", v7];
  v16 = [v6 objectForKeyedSubscript:@"ClockAccuracy"];

  if (v16)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v16, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Announce Offset Scaled Log Variance: ", v7];
  v17 = [v6 objectForKeyedSubscript:@"OffsetScaledLogVariance"];

  if (v17)
  {
    [v8 appendFormat:@"%hu\n", objc_msgSend(v17, "unsignedShortValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Announce Clock Priority 2: ", v7];
  v18 = [v6 objectForKeyedSubscript:@"ClockPriority2"];

  if (v18)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v18, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Announce Grandmaster Identity: ", v7];
  v19 = [v6 objectForKeyedSubscript:@"GrandmasterID"];

  if (v19)
  {
    [v8 appendFormat:@"%016llx\n", objc_msgSend(v19, "unsignedLongLongValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Announce Steps Removed: ", v7];
  v20 = [v6 objectForKeyedSubscript:@"StepsRemoved"];

  if (v20)
  {
    [v8 appendFormat:@"%hu\n", objc_msgSend(v20, "unsignedShortValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Announce Time Source: ", v7];
  v21 = [v6 objectForKeyedSubscript:@"TimeSource"];

  if (v21)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v21, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Received Clock Priority 1: ", v7];
  v22 = [v6 objectForKeyedSubscript:@"ReceivedClockPriority1"];

  if (v22)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v22, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Received Clock Class: ", v7];
  v23 = [v6 objectForKeyedSubscript:@"ReceivedClockClass"];

  if (v23)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v23, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Received Clock Accuracy: ", v7];
  v24 = [v6 objectForKeyedSubscript:@"ReceivedClockAccuracy"];

  if (v24)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v24, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Received Offset Scaled Log Variance: ", v7];
  v25 = [v6 objectForKeyedSubscript:@"ReceivedOffsetScaledLogVariance"];

  if (v25)
  {
    [v8 appendFormat:@"%hu\n", objc_msgSend(v25, "unsignedShortValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Received Clock Priority 2: ", v7];
  v26 = [v6 objectForKeyedSubscript:@"ReceivedClockPriority2"];

  if (v26)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v26, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Received Grandmaster Identity: ", v7];
  v27 = [v6 objectForKeyedSubscript:@"ReceivedGrandmasterID"];

  if (v27)
  {
    [v8 appendFormat:@"%016llx\n", objc_msgSend(v27, "unsignedLongLongValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Received Steps Removed: ", v7];
  v28 = [v6 objectForKeyedSubscript:@"ReceivedStepsRemoved"];

  if (v28)
  {
    [v8 appendFormat:@"%hu\n", objc_msgSend(v28, "unsignedShortValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Received Time Source: ", v7];
  v29 = [v6 objectForKeyedSubscript:@"ReceivedTimeSource"];

  if (v29)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v29, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Local Link Type: ", v7];
  v30 = [v6 objectForKeyedSubscript:@"LocalLinkType"];

  if (!v30)
  {
    v32 = @"Could not read property\n";
    goto LABEL_64;
  }

  v31 = [v30 unsignedCharValue];
  if (v31 <= 2)
  {
    if (!v31)
    {
      v32 = @"Unknown\n";
      goto LABEL_64;
    }

    if (v31 == 1)
    {
      v32 = @"AVB Ethernet\n";
      goto LABEL_64;
    }

    if (v31 != 2)
    {
      goto LABEL_190;
    }

    v32 = @"Ethernet\n";
LABEL_64:
    [v8 appendString:v32];
    goto LABEL_65;
  }

  if (v31 <= 4)
  {
    if (v31 == 3)
    {
      v32 = @"Infrastructure WiFi\n";
    }

    else
    {
      v32 = @"Peer to Peer WiFi\n";
    }

    goto LABEL_64;
  }

  if (v31 == 5)
  {
    v32 = @"Timing Measurement\n";
    goto LABEL_64;
  }

  if (v31 == 6)
  {
    v32 = @"Fine Timing Measurement\n";
    goto LABEL_64;
  }

LABEL_190:
  [v8 appendFormat:@"Undefined link type %hhu\n", objc_msgSend(v30, "unsignedCharValue")];
LABEL_65:
  [v8 appendFormat:@"%@    Remote Link Type: ", v7];
  v33 = [v6 objectForKeyedSubscript:@"RemoteLinkType"];

  if (!v33)
  {
    v35 = @"Could not read property\n";
    goto LABEL_71;
  }

  v34 = [v33 unsignedCharValue];
  if (v34 <= 2)
  {
    if (!v34)
    {
      v35 = @"Unknown\n";
      goto LABEL_71;
    }

    if (v34 == 1)
    {
      v35 = @"AVB Ethernet\n";
      goto LABEL_71;
    }

    if (v34 != 2)
    {
      goto LABEL_191;
    }

    v35 = @"Ethernet\n";
LABEL_71:
    [v8 appendString:v35];
    goto LABEL_72;
  }

  if (v34 <= 4)
  {
    if (v34 == 3)
    {
      v35 = @"Infrastructure WiFi\n";
    }

    else
    {
      v35 = @"Peer to Peer WiFi\n";
    }

    goto LABEL_71;
  }

  if (v34 == 5)
  {
    v35 = @"Timing Measurement\n";
    goto LABEL_71;
  }

  if (v34 == 6)
  {
    v35 = @"Fine Timing Measurement\n";
    goto LABEL_71;
  }

LABEL_191:
  [v8 appendFormat:@"Undefined link type %hhu\n", objc_msgSend(v33, "unsignedCharValue")];
LABEL_72:
  [v8 appendFormat:@"%@    Local Timestamping Mode: ", v7];
  v36 = [v6 objectForKeyedSubscript:@"LocalTimestampingMode"];

  if (!v36)
  {
    v38 = @"Could not read property\n";
    goto LABEL_98;
  }

  v37 = [v36 unsignedCharValue];
  if (v37 > 1)
  {
    if (v37 == 2)
    {
      v38 = @"Interrupt\n";
      goto LABEL_98;
    }

    if (v37 == 3)
    {
      v38 = @"Software\n";
      goto LABEL_98;
    }

LABEL_95:
    [v8 appendFormat:@"Undefined link type %hhu\n", objc_msgSend(v36, "unsignedCharValue")];
    goto LABEL_99;
  }

  if (!v37)
  {
    v38 = @"Unknown\n";
    goto LABEL_98;
  }

  if (v37 != 1)
  {
    goto LABEL_95;
  }

  v38 = @"Hardware\n";
LABEL_98:
  [v8 appendString:v38];
LABEL_99:
  [v8 appendFormat:@"%@    Remote Timestamping Mode: ", v7];
  v39 = [v6 objectForKeyedSubscript:@"RemoteTimestampingMode"];

  if (!v39)
  {
    v41 = @"Could not read property\n";
    goto LABEL_111;
  }

  v40 = [v39 unsignedCharValue];
  if (v40 > 1)
  {
    if (v40 == 2)
    {
      v41 = @"Interrupt\n";
      goto LABEL_111;
    }

    if (v40 == 3)
    {
      v41 = @"Software\n";
      goto LABEL_111;
    }

LABEL_108:
    [v8 appendFormat:@"Undefined link type %hhu\n", objc_msgSend(v39, "unsignedCharValue")];
    goto LABEL_112;
  }

  if (!v40)
  {
    v41 = @"Unknown\n";
    goto LABEL_111;
  }

  if (v40 != 1)
  {
    goto LABEL_108;
  }

  v41 = @"Hardware\n";
LABEL_111:
  [v8 appendString:v41];
LABEL_112:
  [v8 appendFormat:@"%@    Local Oscillator Type: ", v7];
  v42 = [v6 objectForKeyedSubscript:@"LocalOscillatorType"];

  if (!v42)
  {
    v44 = @"Could not read property\n";
    goto LABEL_119;
  }

  v43 = [v42 unsignedCharValue];
  if (v43 > 4)
  {
    if (v43 <= 6)
    {
      if (v43 == 5)
      {
        v44 = @"VCYCXO\n";
      }

      else
      {
        v44 = @"OCXO\n";
      }

      goto LABEL_119;
    }

    if (v43 == 7)
    {
      v44 = @"DOCXO\n";
      goto LABEL_119;
    }

    if (v43 == 8)
    {
      v44 = @"VCOCXO\n";
      goto LABEL_119;
    }

    if (v43 != 9)
    {
      goto LABEL_210;
    }

    v44 = @"VCDOCXO\n";
LABEL_119:
    [v8 appendString:v44];
    goto LABEL_120;
  }

  if (v43 > 1)
  {
    if (v43 == 2)
    {
      v44 = @"MEMS\n";
    }

    else if (v43 == 3)
    {
      v44 = @"TCXO\n";
    }

    else
    {
      v44 = @"VCO\n";
    }

    goto LABEL_119;
  }

  if (!v43)
  {
    v44 = @"Unknown\n";
    goto LABEL_119;
  }

  if (v43 == 1)
  {
    v44 = @"Crystal\n";
    goto LABEL_119;
  }

LABEL_210:
  [v8 appendFormat:@"Undefined oscillator type %hhu\n", objc_msgSend(v42, "unsignedCharValue")];
LABEL_120:
  [v8 appendFormat:@"%@    Remote Oscillator Type: ", v7];
  v45 = [v6 objectForKeyedSubscript:@"RemoteOscillatorType"];

  if (!v45)
  {
    v47 = @"Could not read property\n";
    goto LABEL_127;
  }

  v46 = [v45 unsignedCharValue];
  if (v46 > 4)
  {
    if (v46 <= 6)
    {
      if (v46 == 5)
      {
        v47 = @"VCYCXO\n";
      }

      else
      {
        v47 = @"OCXO\n";
      }

      goto LABEL_127;
    }

    if (v46 == 7)
    {
      v47 = @"DOCXO\n";
      goto LABEL_127;
    }

    if (v46 == 8)
    {
      v47 = @"VCOCXO\n";
      goto LABEL_127;
    }

    if (v46 != 9)
    {
      goto LABEL_211;
    }

    v47 = @"VCDOCXO\n";
LABEL_127:
    [v8 appendString:v47];
    goto LABEL_128;
  }

  if (v46 > 1)
  {
    if (v46 == 2)
    {
      v47 = @"MEMS\n";
    }

    else if (v46 == 3)
    {
      v47 = @"TCXO\n";
    }

    else
    {
      v47 = @"VCO\n";
    }

    goto LABEL_127;
  }

  if (!v46)
  {
    v47 = @"Unknown\n";
    goto LABEL_127;
  }

  if (v46 == 1)
  {
    v47 = @"Crystal\n";
    goto LABEL_127;
  }

LABEL_211:
  [v8 appendFormat:@"Undefined oscillator type %hhu\n", objc_msgSend(v45, "unsignedCharValue")];
LABEL_128:
  [v8 appendFormat:@"%@    Local Frequency Tolerance Lower: ", v7];
  v48 = [v6 objectForKeyedSubscript:@"LocalFrequencyToleranceLower"];

  if (v48)
  {
    [v8 appendFormat:@"%d ppb\n", objc_msgSend(v48, "intValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Local Frequency Tolerance Upper: ", v7];
  v49 = [v6 objectForKeyedSubscript:@"LocalFrequencyToleranceUpper"];

  if (v49)
  {
    [v8 appendFormat:@"%d ppb\n", objc_msgSend(v49, "intValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Remote Frequency Tolerance Lower: ", v7];
  v50 = [v6 objectForKeyedSubscript:@"RemoteFrequencyToleranceLower"];

  if (v50)
  {
    [v8 appendFormat:@"%d ppb\n", objc_msgSend(v50, "intValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Remote Frequency Tolerance Upper: ", v7];
  v51 = [v6 objectForKeyedSubscript:@"RemoteFrequencyToleranceUpper"];

  if (v51)
  {
    [v8 appendFormat:@"%d ppb\n", objc_msgSend(v51, "intValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Local Frequency Stability Lower: ", v7];
  v52 = [v6 objectForKeyedSubscript:@"LocalFrequencyStabilityLower"];

  if (v52)
  {
    [v8 appendFormat:@"%d ppb\n", objc_msgSend(v52, "intValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Local Frequency Stability Upper: ", v7];
  v53 = [v6 objectForKeyedSubscript:@"LocalFrequencyStabilityUpper"];

  if (v53)
  {
    [v8 appendFormat:@"%d ppb\n", objc_msgSend(v53, "intValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Remote Frequency Stability Lower: ", v7];
  v54 = [v6 objectForKeyedSubscript:@"RemoteFrequencyStabilityLower"];

  if (v54)
  {
    [v8 appendFormat:@"%d ppb\n", objc_msgSend(v54, "intValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Remote Frequency Stability Upper: ", v7];
  v55 = [v6 objectForKeyedSubscript:@"RemoteFrequencyStabilityUpper"];

  if (v55)
  {
    [v8 appendFormat:@"%d ppb\n", objc_msgSend(v55, "intValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  v56 = [v6 objectForKeyedSubscript:@"OverridenReceiveMatching"];

  if (v56)
  {
    if ([v56 BOOLValue])
    {
      v57 = @"YES";
    }

    else
    {
      v57 = @"NO";
    }

    [v8 appendFormat:@"%@    Overriden Receive Matching: %@\n", v7, v57];
    [v8 appendFormat:@"%@    Overriden Receive Clock Identity: ", v7];
    v58 = [v6 objectForKeyedSubscript:@"OverridenReceiveClockIdentity"];

    if (v58)
    {
      [v8 appendFormat:@"0x%016llx\n", objc_msgSend(v58, "unsignedLongLongValue")];
    }

    else
    {
      [v8 appendString:@"Could not read property\n"];
    }

    [v8 appendFormat:@"%@    Overriden Receive Port Number: ", v7];
    v59 = [v6 objectForKeyedSubscript:@"OverridenReceivePortNumber"];

    if (v59)
    {
      [v8 appendFormat:@"%hu\n", objc_msgSend(v59, "unsignedShortValue")];
    }

    else
    {
      [v8 appendString:@"Could not read property\n"];
    }
  }

  v60 = [v6 objectForKeyedSubscript:@"PTPPortEnabled"];
  v61 = v60;
  if (v60)
  {
    if ([v60 BOOLValue])
    {
      v62 = @"YES";
    }

    else
    {
      v62 = @"NO";
    }

    [v8 appendFormat:@"%@    PTP Port Enabled: %@\n", v7, v62];
  }

  v63 = v8;

  return v8;
}

- (void)initWithImplDC:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  v6 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_3_0();
  v5 = *MEMORY[0x277D85DE8];
}

@end