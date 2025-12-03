@interface TSgPTPNetworkPort
+ (id)diagnosticDescriptionForInfo:(id)info withIndent:(id)indent;
- (TSgPTPNetworkPort)initWithImplDC:(id)c;
- (void)addClient:(id)client;
- (void)didAnnounceTimeoutForPort:(id)port;
- (void)didSyncTimeoutForPort:(id)port;
- (void)didSyncTimeoutWithMean:(int64_t)mean median:(int64_t)median standardDeviation:(unint64_t)deviation minimum:(int64_t)minimum maximum:(int64_t)maximum numberOfSamples:(unsigned int)samples forPort:(id)port;
- (void)didTerminateServiceForPort:(id)port;
- (void)didTimeoutOnMACLookupForPort:(id)port;
- (void)removeClient:(id)client;
@end

@implementation TSgPTPNetworkPort

- (TSgPTPNetworkPort)initWithImplDC:(id)c
{
  cCopy = c;
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
  v6 = [(TSgPTPPort *)&v11 initWithImplDC:cCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_impl, c);
    v7->_clientLock._os_unfair_lock_opaque = 0;
    weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    clients = v7->_clients;
    v7->_clients = weakObjectsPointerArray;
LABEL_4:
  }

  return v7;
}

- (void)addClient:(id)client
{
  v23 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = [clientCopy description];
    uTF8String = [v5 UTF8String];
    v7 = [(TSgPTPNetworkPort *)self description];
    *buf = 136315394;
    v20 = uTF8String;
    v21 = 2080;
    uTF8String2 = [v7 UTF8String];
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

        if (*(*(&v14 + 1) + 8 * v12) == clientCopy)
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

  [(NSPointerArray *)self->_clients addPointer:clientCopy, v14];
  if ([(NSPointerArray *)self->_clients count]== 1)
  {
    [(_TSF_TSDgPTPNetworkPort *)self->_impl addClient:self];
  }

LABEL_14:
  os_unfair_lock_unlock(&self->_clientLock);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)removeClient:(id)client
{
  v25 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = [clientCopy description];
    uTF8String = [v5 UTF8String];
    v7 = [(TSgPTPNetworkPort *)self description];
    *buf = 136315394;
    v22 = uTF8String;
    v23 = 2080;
    uTF8String2 = [v7 UTF8String];
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

        if (*(*(&v16 + 1) + 8 * v13) == clientCopy)
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

- (void)didTimeoutOnMACLookupForPort:(id)port
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
    clockIdentifier = [(TSgPTPPort *)self clockIdentifier];
    v22 = 1024;
    portNumber = [(TSgPTPPort *)self portNumber];
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

- (void)didAnnounceTimeoutForPort:(id)port
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
    clockIdentifier = [(TSgPTPPort *)self clockIdentifier];
    v22 = 1024;
    portNumber = [(TSgPTPPort *)self portNumber];
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

- (void)didSyncTimeoutForPort:(id)port
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
    clockIdentifier = [(TSgPTPPort *)self clockIdentifier];
    v22 = 1024;
    portNumber = [(TSgPTPPort *)self portNumber];
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

- (void)didSyncTimeoutWithMean:(int64_t)mean median:(int64_t)median standardDeviation:(unint64_t)deviation minimum:(int64_t)minimum maximum:(int64_t)maximum numberOfSamples:(unsigned int)samples forPort:(id)port
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
    clockIdentifier = [(TSgPTPPort *)self clockIdentifier];
    v34 = 1024;
    portNumber = [(TSgPTPPort *)self portNumber];
    v36 = 2048;
    meanCopy = mean;
    v38 = 2048;
    medianCopy = median;
    v40 = 2048;
    deviationCopy = deviation;
    v42 = 2048;
    minimumCopy = minimum;
    v44 = 2048;
    maximumCopy = maximum;
    v46 = 1024;
    samplesCopy = samples;
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
          [v20 didSyncTimeoutWithMean:mean median:median standardDeviation:deviation minimum:minimum maximum:maximum numberOfSamples:samples forPort:self];
        }
      }

      v17 = [(NSPointerArray *)v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v17);
  }

  os_unfair_lock_unlock(&self->_clientLock);
  v21 = *MEMORY[0x277D85DE8];
}

- (void)didTerminateServiceForPort:(id)port
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
    clockIdentifier = [(TSgPTPPort *)self clockIdentifier];
    v22 = 1024;
    portNumber = [(TSgPTPPort *)self portNumber];
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

+ (id)diagnosticDescriptionForInfo:(id)info withIndent:(id)indent
{
  infoCopy = info;
  indentCopy = indent;
  v65.receiver = self;
  v65.super_class = &OBJC_METACLASS___TSgPTPNetworkPort;
  v8 = objc_msgSendSuper2(&v65, sel_diagnosticDescriptionForInfo_withIndent_, infoCopy, indentCopy);
  v9 = [infoCopy objectForKeyedSubscript:@"InterfaceName"];
  [v8 appendFormat:@"%@    Interface: ", indentCopy];
  if (v9)
  {
    [v8 appendFormat:@"%@\n", v9];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Source Address: ", indentCopy];
  v10 = [infoCopy objectForKeyedSubscript:@"SourceAddress"];
  v11 = v10;
  if (v10)
  {
    [v8 appendFormat:@"%@\n", v10];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Destination Address: ", indentCopy];
  v12 = [infoCopy objectForKeyedSubscript:@"DestinationAddress"];

  if (v12)
  {
    [v8 appendFormat:@"%@\n", v12];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Announce Clock Priority 1: ", indentCopy];
  v13 = [infoCopy objectForKeyedSubscript:@"ClockPriority1"];
  v14 = v13;
  if (v13)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v13, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Announce Clock Class: ", indentCopy];
  v15 = [infoCopy objectForKeyedSubscript:@"ClockClass"];

  if (v15)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v15, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Announce Clock Accuracy: ", indentCopy];
  v16 = [infoCopy objectForKeyedSubscript:@"ClockAccuracy"];

  if (v16)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v16, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Announce Offset Scaled Log Variance: ", indentCopy];
  v17 = [infoCopy objectForKeyedSubscript:@"OffsetScaledLogVariance"];

  if (v17)
  {
    [v8 appendFormat:@"%hu\n", objc_msgSend(v17, "unsignedShortValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Announce Clock Priority 2: ", indentCopy];
  v18 = [infoCopy objectForKeyedSubscript:@"ClockPriority2"];

  if (v18)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v18, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Announce Grandmaster Identity: ", indentCopy];
  v19 = [infoCopy objectForKeyedSubscript:@"GrandmasterID"];

  if (v19)
  {
    [v8 appendFormat:@"%016llx\n", objc_msgSend(v19, "unsignedLongLongValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Announce Steps Removed: ", indentCopy];
  v20 = [infoCopy objectForKeyedSubscript:@"StepsRemoved"];

  if (v20)
  {
    [v8 appendFormat:@"%hu\n", objc_msgSend(v20, "unsignedShortValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Announce Time Source: ", indentCopy];
  v21 = [infoCopy objectForKeyedSubscript:@"TimeSource"];

  if (v21)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v21, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Received Clock Priority 1: ", indentCopy];
  v22 = [infoCopy objectForKeyedSubscript:@"ReceivedClockPriority1"];

  if (v22)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v22, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Received Clock Class: ", indentCopy];
  v23 = [infoCopy objectForKeyedSubscript:@"ReceivedClockClass"];

  if (v23)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v23, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Received Clock Accuracy: ", indentCopy];
  v24 = [infoCopy objectForKeyedSubscript:@"ReceivedClockAccuracy"];

  if (v24)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v24, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Received Offset Scaled Log Variance: ", indentCopy];
  v25 = [infoCopy objectForKeyedSubscript:@"ReceivedOffsetScaledLogVariance"];

  if (v25)
  {
    [v8 appendFormat:@"%hu\n", objc_msgSend(v25, "unsignedShortValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Received Clock Priority 2: ", indentCopy];
  v26 = [infoCopy objectForKeyedSubscript:@"ReceivedClockPriority2"];

  if (v26)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v26, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Received Grandmaster Identity: ", indentCopy];
  v27 = [infoCopy objectForKeyedSubscript:@"ReceivedGrandmasterID"];

  if (v27)
  {
    [v8 appendFormat:@"%016llx\n", objc_msgSend(v27, "unsignedLongLongValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Received Steps Removed: ", indentCopy];
  v28 = [infoCopy objectForKeyedSubscript:@"ReceivedStepsRemoved"];

  if (v28)
  {
    [v8 appendFormat:@"%hu\n", objc_msgSend(v28, "unsignedShortValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Received Time Source: ", indentCopy];
  v29 = [infoCopy objectForKeyedSubscript:@"ReceivedTimeSource"];

  if (v29)
  {
    [v8 appendFormat:@"%hhu\n", objc_msgSend(v29, "unsignedCharValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Local Link Type: ", indentCopy];
  v30 = [infoCopy objectForKeyedSubscript:@"LocalLinkType"];

  if (!v30)
  {
    v32 = @"Could not read property\n";
    goto LABEL_64;
  }

  unsignedCharValue = [v30 unsignedCharValue];
  if (unsignedCharValue <= 2)
  {
    if (!unsignedCharValue)
    {
      v32 = @"Unknown\n";
      goto LABEL_64;
    }

    if (unsignedCharValue == 1)
    {
      v32 = @"AVB Ethernet\n";
      goto LABEL_64;
    }

    if (unsignedCharValue != 2)
    {
      goto LABEL_190;
    }

    v32 = @"Ethernet\n";
LABEL_64:
    [v8 appendString:v32];
    goto LABEL_65;
  }

  if (unsignedCharValue <= 4)
  {
    if (unsignedCharValue == 3)
    {
      v32 = @"Infrastructure WiFi\n";
    }

    else
    {
      v32 = @"Peer to Peer WiFi\n";
    }

    goto LABEL_64;
  }

  if (unsignedCharValue == 5)
  {
    v32 = @"Timing Measurement\n";
    goto LABEL_64;
  }

  if (unsignedCharValue == 6)
  {
    v32 = @"Fine Timing Measurement\n";
    goto LABEL_64;
  }

LABEL_190:
  [v8 appendFormat:@"Undefined link type %hhu\n", objc_msgSend(v30, "unsignedCharValue")];
LABEL_65:
  [v8 appendFormat:@"%@    Remote Link Type: ", indentCopy];
  v33 = [infoCopy objectForKeyedSubscript:@"RemoteLinkType"];

  if (!v33)
  {
    v35 = @"Could not read property\n";
    goto LABEL_71;
  }

  unsignedCharValue2 = [v33 unsignedCharValue];
  if (unsignedCharValue2 <= 2)
  {
    if (!unsignedCharValue2)
    {
      v35 = @"Unknown\n";
      goto LABEL_71;
    }

    if (unsignedCharValue2 == 1)
    {
      v35 = @"AVB Ethernet\n";
      goto LABEL_71;
    }

    if (unsignedCharValue2 != 2)
    {
      goto LABEL_191;
    }

    v35 = @"Ethernet\n";
LABEL_71:
    [v8 appendString:v35];
    goto LABEL_72;
  }

  if (unsignedCharValue2 <= 4)
  {
    if (unsignedCharValue2 == 3)
    {
      v35 = @"Infrastructure WiFi\n";
    }

    else
    {
      v35 = @"Peer to Peer WiFi\n";
    }

    goto LABEL_71;
  }

  if (unsignedCharValue2 == 5)
  {
    v35 = @"Timing Measurement\n";
    goto LABEL_71;
  }

  if (unsignedCharValue2 == 6)
  {
    v35 = @"Fine Timing Measurement\n";
    goto LABEL_71;
  }

LABEL_191:
  [v8 appendFormat:@"Undefined link type %hhu\n", objc_msgSend(v33, "unsignedCharValue")];
LABEL_72:
  [v8 appendFormat:@"%@    Local Timestamping Mode: ", indentCopy];
  v36 = [infoCopy objectForKeyedSubscript:@"LocalTimestampingMode"];

  if (!v36)
  {
    v38 = @"Could not read property\n";
    goto LABEL_98;
  }

  unsignedCharValue3 = [v36 unsignedCharValue];
  if (unsignedCharValue3 > 1)
  {
    if (unsignedCharValue3 == 2)
    {
      v38 = @"Interrupt\n";
      goto LABEL_98;
    }

    if (unsignedCharValue3 == 3)
    {
      v38 = @"Software\n";
      goto LABEL_98;
    }

LABEL_95:
    [v8 appendFormat:@"Undefined link type %hhu\n", objc_msgSend(v36, "unsignedCharValue")];
    goto LABEL_99;
  }

  if (!unsignedCharValue3)
  {
    v38 = @"Unknown\n";
    goto LABEL_98;
  }

  if (unsignedCharValue3 != 1)
  {
    goto LABEL_95;
  }

  v38 = @"Hardware\n";
LABEL_98:
  [v8 appendString:v38];
LABEL_99:
  [v8 appendFormat:@"%@    Remote Timestamping Mode: ", indentCopy];
  v39 = [infoCopy objectForKeyedSubscript:@"RemoteTimestampingMode"];

  if (!v39)
  {
    v41 = @"Could not read property\n";
    goto LABEL_111;
  }

  unsignedCharValue4 = [v39 unsignedCharValue];
  if (unsignedCharValue4 > 1)
  {
    if (unsignedCharValue4 == 2)
    {
      v41 = @"Interrupt\n";
      goto LABEL_111;
    }

    if (unsignedCharValue4 == 3)
    {
      v41 = @"Software\n";
      goto LABEL_111;
    }

LABEL_108:
    [v8 appendFormat:@"Undefined link type %hhu\n", objc_msgSend(v39, "unsignedCharValue")];
    goto LABEL_112;
  }

  if (!unsignedCharValue4)
  {
    v41 = @"Unknown\n";
    goto LABEL_111;
  }

  if (unsignedCharValue4 != 1)
  {
    goto LABEL_108;
  }

  v41 = @"Hardware\n";
LABEL_111:
  [v8 appendString:v41];
LABEL_112:
  [v8 appendFormat:@"%@    Local Oscillator Type: ", indentCopy];
  v42 = [infoCopy objectForKeyedSubscript:@"LocalOscillatorType"];

  if (!v42)
  {
    v44 = @"Could not read property\n";
    goto LABEL_119;
  }

  unsignedCharValue5 = [v42 unsignedCharValue];
  if (unsignedCharValue5 > 4)
  {
    if (unsignedCharValue5 <= 6)
    {
      if (unsignedCharValue5 == 5)
      {
        v44 = @"VCYCXO\n";
      }

      else
      {
        v44 = @"OCXO\n";
      }

      goto LABEL_119;
    }

    if (unsignedCharValue5 == 7)
    {
      v44 = @"DOCXO\n";
      goto LABEL_119;
    }

    if (unsignedCharValue5 == 8)
    {
      v44 = @"VCOCXO\n";
      goto LABEL_119;
    }

    if (unsignedCharValue5 != 9)
    {
      goto LABEL_210;
    }

    v44 = @"VCDOCXO\n";
LABEL_119:
    [v8 appendString:v44];
    goto LABEL_120;
  }

  if (unsignedCharValue5 > 1)
  {
    if (unsignedCharValue5 == 2)
    {
      v44 = @"MEMS\n";
    }

    else if (unsignedCharValue5 == 3)
    {
      v44 = @"TCXO\n";
    }

    else
    {
      v44 = @"VCO\n";
    }

    goto LABEL_119;
  }

  if (!unsignedCharValue5)
  {
    v44 = @"Unknown\n";
    goto LABEL_119;
  }

  if (unsignedCharValue5 == 1)
  {
    v44 = @"Crystal\n";
    goto LABEL_119;
  }

LABEL_210:
  [v8 appendFormat:@"Undefined oscillator type %hhu\n", objc_msgSend(v42, "unsignedCharValue")];
LABEL_120:
  [v8 appendFormat:@"%@    Remote Oscillator Type: ", indentCopy];
  v45 = [infoCopy objectForKeyedSubscript:@"RemoteOscillatorType"];

  if (!v45)
  {
    v47 = @"Could not read property\n";
    goto LABEL_127;
  }

  unsignedCharValue6 = [v45 unsignedCharValue];
  if (unsignedCharValue6 > 4)
  {
    if (unsignedCharValue6 <= 6)
    {
      if (unsignedCharValue6 == 5)
      {
        v47 = @"VCYCXO\n";
      }

      else
      {
        v47 = @"OCXO\n";
      }

      goto LABEL_127;
    }

    if (unsignedCharValue6 == 7)
    {
      v47 = @"DOCXO\n";
      goto LABEL_127;
    }

    if (unsignedCharValue6 == 8)
    {
      v47 = @"VCOCXO\n";
      goto LABEL_127;
    }

    if (unsignedCharValue6 != 9)
    {
      goto LABEL_211;
    }

    v47 = @"VCDOCXO\n";
LABEL_127:
    [v8 appendString:v47];
    goto LABEL_128;
  }

  if (unsignedCharValue6 > 1)
  {
    if (unsignedCharValue6 == 2)
    {
      v47 = @"MEMS\n";
    }

    else if (unsignedCharValue6 == 3)
    {
      v47 = @"TCXO\n";
    }

    else
    {
      v47 = @"VCO\n";
    }

    goto LABEL_127;
  }

  if (!unsignedCharValue6)
  {
    v47 = @"Unknown\n";
    goto LABEL_127;
  }

  if (unsignedCharValue6 == 1)
  {
    v47 = @"Crystal\n";
    goto LABEL_127;
  }

LABEL_211:
  [v8 appendFormat:@"Undefined oscillator type %hhu\n", objc_msgSend(v45, "unsignedCharValue")];
LABEL_128:
  [v8 appendFormat:@"%@    Local Frequency Tolerance Lower: ", indentCopy];
  v48 = [infoCopy objectForKeyedSubscript:@"LocalFrequencyToleranceLower"];

  if (v48)
  {
    [v8 appendFormat:@"%d ppb\n", objc_msgSend(v48, "intValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Local Frequency Tolerance Upper: ", indentCopy];
  v49 = [infoCopy objectForKeyedSubscript:@"LocalFrequencyToleranceUpper"];

  if (v49)
  {
    [v8 appendFormat:@"%d ppb\n", objc_msgSend(v49, "intValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Remote Frequency Tolerance Lower: ", indentCopy];
  v50 = [infoCopy objectForKeyedSubscript:@"RemoteFrequencyToleranceLower"];

  if (v50)
  {
    [v8 appendFormat:@"%d ppb\n", objc_msgSend(v50, "intValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Remote Frequency Tolerance Upper: ", indentCopy];
  v51 = [infoCopy objectForKeyedSubscript:@"RemoteFrequencyToleranceUpper"];

  if (v51)
  {
    [v8 appendFormat:@"%d ppb\n", objc_msgSend(v51, "intValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Local Frequency Stability Lower: ", indentCopy];
  v52 = [infoCopy objectForKeyedSubscript:@"LocalFrequencyStabilityLower"];

  if (v52)
  {
    [v8 appendFormat:@"%d ppb\n", objc_msgSend(v52, "intValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Local Frequency Stability Upper: ", indentCopy];
  v53 = [infoCopy objectForKeyedSubscript:@"LocalFrequencyStabilityUpper"];

  if (v53)
  {
    [v8 appendFormat:@"%d ppb\n", objc_msgSend(v53, "intValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Remote Frequency Stability Lower: ", indentCopy];
  v54 = [infoCopy objectForKeyedSubscript:@"RemoteFrequencyStabilityLower"];

  if (v54)
  {
    [v8 appendFormat:@"%d ppb\n", objc_msgSend(v54, "intValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  [v8 appendFormat:@"%@    Remote Frequency Stability Upper: ", indentCopy];
  v55 = [infoCopy objectForKeyedSubscript:@"RemoteFrequencyStabilityUpper"];

  if (v55)
  {
    [v8 appendFormat:@"%d ppb\n", objc_msgSend(v55, "intValue")];
  }

  else
  {
    [v8 appendString:@"Could not read property\n"];
  }

  v56 = [infoCopy objectForKeyedSubscript:@"OverridenReceiveMatching"];

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

    [v8 appendFormat:@"%@    Overriden Receive Matching: %@\n", indentCopy, v57];
    [v8 appendFormat:@"%@    Overriden Receive Clock Identity: ", indentCopy];
    v58 = [infoCopy objectForKeyedSubscript:@"OverridenReceiveClockIdentity"];

    if (v58)
    {
      [v8 appendFormat:@"0x%016llx\n", objc_msgSend(v58, "unsignedLongLongValue")];
    }

    else
    {
      [v8 appendString:@"Could not read property\n"];
    }

    [v8 appendFormat:@"%@    Overriden Receive Port Number: ", indentCopy];
    v59 = [infoCopy objectForKeyedSubscript:@"OverridenReceivePortNumber"];

    if (v59)
    {
      [v8 appendFormat:@"%hu\n", objc_msgSend(v59, "unsignedShortValue")];
    }

    else
    {
      [v8 appendString:@"Could not read property\n"];
    }
  }

  v60 = [infoCopy objectForKeyedSubscript:@"PTPPortEnabled"];
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

    [v8 appendFormat:@"%@    PTP Port Enabled: %@\n", indentCopy, v62];
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