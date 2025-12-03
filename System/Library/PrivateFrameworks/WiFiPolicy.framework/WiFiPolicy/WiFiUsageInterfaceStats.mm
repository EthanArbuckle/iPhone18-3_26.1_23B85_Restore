@interface WiFiUsageInterfaceStats
+ (id)_statsFromMIB:(id)b;
+ (id)_statsFromNetIF:(id)f;
+ (id)statsForInterfaceName:(id)name;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToInterfaceStats:(id)stats;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation WiFiUsageInterfaceStats

+ (id)_statsFromNetIF:(id)f
{
  fCopy = f;
  v5 = objc_alloc_init(self);
  v13 = 0;
  [v5 setTxBytes:0];
  [v5 setRxBytes:0];
  if (fCopy)
  {
    v6 = getifaddrs(&v13);
    v7 = v13;
    if (!v6 && v13)
    {
      do
      {
        ifa_addr = v7->ifa_addr;
        if (ifa_addr)
        {
          if (ifa_addr->sa_family == 18)
          {
            ifa_data = v7->ifa_data;
            if (ifa_data)
            {
              ifa_name = v7->ifa_name;
              if (ifa_name)
              {
                if (!strcmp(ifa_name, [fCopy UTF8String]))
                {
                  [v5 setTxBytes:ifa_data[11]];
                  [v5 setRxBytes:ifa_data[10]];
                  [v5 setTxL3Packets:ifa_data[7]];
                  [v5 setRxL3Packets:ifa_data[5]];
                  date = [MEMORY[0x277CBEAA8] date];
                  [v5 setTimestamp:date];
                }
              }
            }
          }
        }

        v7 = v7->ifa_next;
      }

      while (v7);
      v7 = v13;
    }

    if (v7)
    {
      MEMORY[0x23839DD20](v7);
    }
  }

  return v5;
}

+ (id)_statsFromMIB:(id)b
{
  v40 = *MEMORY[0x277D85DE8];
  bCopy = b;
  v5 = objc_alloc_init(self);
  *v37 = xmmword_2333AB5C0;
  v38 = 6;
  uTF8String = [bCopy UTF8String];

  v39 = if_nametoindex(uTF8String);
  size = 0;
  sysctl(v37, 6u, 0, &size, 0, 0);
  if (size)
  {
    v7 = malloc_type_malloc(size, 0xAABAB2C8uLL);
    if (v7)
    {
      v8 = v7;
      if (sysctl(v37, 6u, v7, &size, 0, 0) < 0)
      {
        v26 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v26)
        {
          [(WiFiUsageInterfaceStats *)v26 _statsFromMIB:v27, v28, v29, v30, v31, v32, v33];
        }
      }

      else
      {
        [v5 setTxBytes:v8[13]];
        [v5 setRxBytes:v8[12]];
        [v5 setTxL3Packets:v8[9]];
        [v5 setRxL3Packets:v8[7]];
        date = [MEMORY[0x277CBEAA8] date];
        [v5 setTimestamp:date];
      }

      free(v8);
    }

    else
    {
      v18 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v18)
      {
        [(WiFiUsageInterfaceStats *)v18 _statsFromMIB:v19, v20, v21, v22, v23, v24, v25];
      }
    }
  }

  else
  {
    v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v10)
    {
      [(WiFiUsageInterfaceStats *)v10 _statsFromMIB:v11, v12, v13, v14, v15, v16, v17];
    }
  }

  v34 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)statsForInterfaceName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if (nameCopy && [nameCopy UTF8String])
  {
    v6 = [self _statsFromMIB:v5];
    if (!v6)
    {
      v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v7)
      {
        [(WiFiUsageInterfaceStats *)v7 statsForInterfaceName:v8, v9, v10, v11, v12, v13, v14];
      }

      v6 = [self _statsFromNetIF:v5];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setRxBytes:{-[WiFiUsageInterfaceStats rxBytes](self, "rxBytes")}];
  [v4 setTxBytes:{-[WiFiUsageInterfaceStats txBytes](self, "txBytes")}];
  [v4 setRxL3Packets:{-[WiFiUsageInterfaceStats rxL3Packets](self, "rxL3Packets")}];
  [v4 setTxL3Packets:{-[WiFiUsageInterfaceStats txL3Packets](self, "txL3Packets")}];
  timestamp = [(WiFiUsageInterfaceStats *)self timestamp];
  [v4 setTimestamp:timestamp];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p ", v5, self];

  [v6 appendFormat:@"Rx: Packets=%lu ", -[WiFiUsageInterfaceStats rxL3Packets](self, "rxL3Packets")];
  [v6 appendFormat:@"Bytes=%lu ", -[WiFiUsageInterfaceStats rxBytes](self, "rxBytes")];
  [v6 appendFormat:@"Tx: Packets=%lu ", -[WiFiUsageInterfaceStats txL3Packets](self, "txL3Packets")];
  [v6 appendFormat:@"Bytes=%lu ", -[WiFiUsageInterfaceStats txBytes](self, "txBytes")];
  timestamp = [(WiFiUsageInterfaceStats *)self timestamp];
  [v6 appendFormat:@"Ts: %@>", timestamp];

  return v6;
}

- (BOOL)isEqualToInterfaceStats:(id)stats
{
  statsCopy = stats;
  rxBytes = self->_rxBytes;
  if (rxBytes == [statsCopy rxBytes] && (txBytes = self->_txBytes, txBytes == objc_msgSend(statsCopy, "txBytes")) && (rxL3Packets = self->_rxL3Packets, rxL3Packets == objc_msgSend(statsCopy, "rxL3Packets")))
  {
    txL3Packets = self->_txL3Packets;
    v9 = txL3Packets == [statsCopy txL3Packets];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(WiFiUsageInterfaceStats *)self isEqualToInterfaceStats:v5];
  }

  return v6;
}

+ (void)_statsFromMIB:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_7(&dword_2332D7000, MEMORY[0x277D86220], a3, "%s: sysctl failed", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_statsFromMIB:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_7(&dword_2332D7000, MEMORY[0x277D86220], a3, "%s: null reqBuf", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)_statsFromMIB:(uint64_t)a3 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_7(&dword_2332D7000, MEMORY[0x277D86220], a3, "%s: failed to get mib length.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)statsForInterfaceName:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_7(&dword_2332D7000, MEMORY[0x277D86220], a3, "%s: falling back to NetIF", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end