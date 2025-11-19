@interface WPDObjectDiscoveryData
+ (id)addressFromNearbyToken:(id)a3;
+ (id)addressesFromNearbyTokens:(id)a3;
+ (id)objectDiscoveryReportFromAdvReport:(id)a3;
+ (unsigned)applyMaskToAddress:(id)a3;
- (WPDObjectDiscoveryData)init;
- (id)updateWithKey:(id)a3 Status:(unsigned __int8)a4 Reserved:(id)a5;
- (void)wipeout;
@end

@implementation WPDObjectDiscoveryData

+ (id)objectDiscoveryReportFromAdvReport:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"kDeviceTime"];
  v5 = MEMORY[0x277CBEAA8];
  [v4 doubleValue];
  v6 = [v5 dateWithTimeIntervalSinceReferenceDate:?];
  v7 = MEMORY[0x277CBEB28];
  v8 = [v3 objectForKeyedSubscript:@"kDeviceAddress"];
  v9 = [v7 dataWithData:v8];

  v45 = [v3 objectForKeyedSubscript:@"kDeviceRSSI"];
  v10 = [v3 objectForKeyedSubscript:@"kDeviceChannel"];
  v44 = [v3 objectForKeyedSubscript:@"kDeviceDataSaturated"];
  v11 = [v3 objectForKeyedSubscript:@"kDeviceAdvertisingData"];
  v12 = [v11 length];
  v13 = v12 - 4;
  if (v12 == 6)
  {
    if (WPLogInitOnce != -1)
    {
      +[WPDObjectDiscoveryData objectDiscoveryReportFromAdvReport:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      +[WPDObjectDiscoveryData objectDiscoveryReportFromAdvReport:];
    }

    v14 = 0;
LABEL_13:
    v42 = v4;
    if (WPLogInitOnce != -1)
    {
      +[WPDObjectDiscoveryData objectDiscoveryReportFromAdvReport:];
    }

    v15 = v13 + ~v14;
    v16 = WiProxLog;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218752;
      v49 = v13;
      v50 = 1024;
      v51 = 1;
      v52 = 2048;
      v53 = v14;
      v54 = 2048;
      v55 = v13 + ~v14;
      _os_log_debug_impl(&dword_274327000, v16, OS_LOG_TYPE_DEBUG, "ObjectDiscovery length payload:%ld state:%d data:%ld optional:%ld", buf, 0x26u);
    }

    v17 = [v11 subdataWithRange:{4, v13, v11}];
    if (WPLogInitOnce != -1)
    {
      +[WPDObjectDiscoveryData objectDiscoveryReportFromAdvReport:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      +[WPDObjectDiscoveryData objectDiscoveryReportFromAdvReport:];
    }

    v18 = [v17 bytes];
    v43 = [MEMORY[0x277CCABB0] numberWithChar:*v18];
    v19 = [MEMORY[0x277CBEA90] data];
    if (v13 >= 1)
    {
      v20 = MEMORY[0x277CBEA90];
      [v17 subdataWithRange:{1, v14}];
      v21 = v9;
      v23 = v22 = v6;
      v24 = [v20 dataWithData:v23];

      v6 = v22;
      v9 = v21;
      v19 = v24;
    }

    v25 = MEMORY[0x277CBEB28];
    v26 = [v17 subdataWithRange:{v14 | 1, v15}];
    v27 = [v25 dataWithData:v26];

    v28 = [v27 mutableBytes];
    LOBYTE(v26) = *v28;
    *v28 &= 0xFCu;
    v29 = [v9 mutableBytes];
    *v29 = *v29 & 0x3F | (v26 << 6);
    v46[0] = @"kSPDeviceAddress";
    v30 = v9;
    v31 = [MEMORY[0x277CBEA90] dataWithData:v9];
    v47[0] = v31;
    v47[1] = v6;
    v32 = v6;
    v46[1] = @"kSPScanDate";
    v46[2] = @"kSPrssi";
    v47[2] = v45;
    v47[3] = v19;
    v46[3] = @"kSPAdvertisementData";
    v46[4] = @"kSPStatus";
    v47[4] = v43;
    v46[5] = @"kSPOptional";
    v33 = [MEMORY[0x277CBEA90] dataWithData:v27];
    v34 = v33;
    v35 = &unk_28835C708;
    if (v10)
    {
      v35 = v10;
    }

    v47[5] = v33;
    v47[6] = v35;
    v46[6] = @"kSPChannel";
    v46[7] = @"kSPSaturated";
    v36 = v44;
    if (!v44)
    {
      v36 = MEMORY[0x277CBEC28];
    }

    v47[7] = v36;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:8];

    if (WPLogInitOnce != -1)
    {
      +[WPDObjectDiscoveryData objectDiscoveryReportFromAdvReport:];
    }

    v6 = v32;
    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      +[WPDObjectDiscoveryData objectDiscoveryReportFromAdvReport:];
    }

    v9 = v30;
    if (WPLogInitOnce != -1)
    {
      +[WPDObjectDiscoveryData objectDiscoveryReportFromAdvReport:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      +[WPDObjectDiscoveryData objectDiscoveryReportFromAdvReport:];
    }

    v4 = v42;
    v11 = v41;
    goto LABEL_41;
  }

  if ((v12 & 0xFFFFFFFFFFFFFFFELL) == 0x1C)
  {
    if (WPLogInitOnce != -1)
    {
      +[WPDObjectDiscoveryData objectDiscoveryReportFromAdvReport:];
    }

    if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
    {
      +[WPDObjectDiscoveryData objectDiscoveryReportFromAdvReport:];
    }

    v14 = 22;
    goto LABEL_13;
  }

  if (WPLogInitOnce != -1)
  {
    +[WPDObjectDiscoveryData objectDiscoveryReportFromAdvReport:];
  }

  v38 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_ERROR))
  {
    [WPDObjectDiscoveryData objectDiscoveryReportFromAdvReport:v38];
  }

  v37 = 0;
LABEL_41:

  v39 = *MEMORY[0x277D85DE8];

  return v37;
}

+ (unsigned)applyMaskToAddress:(id)a3
{
  v3 = [a3 mutableBytes];
  v4 = *v3;
  *v3 = v4 | 0xC0;
  if (WPLogInitOnce != -1)
  {
    +[WPDObjectDiscoveryData applyMaskToAddress:];
  }

  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEBUG))
  {
    [WPDObjectDiscoveryData applyMaskToAddress:v3];
  }

  return v4 >> 6;
}

+ (id)addressFromNearbyToken:(id)a3
{
  v3 = [MEMORY[0x277CBEB28] dataWithData:a3];
  [WPDObjectDiscoveryData applyMaskToAddress:v3];
  v4 = [MEMORY[0x277CBEA90] dataWithData:v3];

  return v4;
}

+ (id)addressesFromNearbyTokens:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __52__WPDObjectDiscoveryData_addressesFromNearbyTokens___block_invoke;
    v9[3] = &unk_279ED7520;
    v10 = v5;
    v6 = v5;
    [v3 enumerateObjectsUsingBlock:v9];
    v7 = [MEMORY[0x277CBEA60] arrayWithArray:v6];

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __52__WPDObjectDiscoveryData_addressesFromNearbyTokens___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [WPDObjectDiscoveryData addressFromNearbyToken:a2];
  [*(a1 + 32) setObject:v5 atIndexedSubscript:a3];
}

- (WPDObjectDiscoveryData)init
{
  v8.receiver = self;
  v8.super_class = WPDObjectDiscoveryData;
  v2 = [(WPDObjectDiscoveryData *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB28] dataWithLength:6];
    address = v2->_address;
    v2->_address = v3;

    [(NSMutableData *)v2->_address resetBytesInRange:0, [(NSMutableData *)v2->_address length]];
    v5 = [MEMORY[0x277CBEB28] dataWithLength:25];
    payload = v2->_payload;
    v2->_payload = v5;

    [(NSMutableData *)v2->_payload resetBytesInRange:0, [(NSMutableData *)v2->_payload length]];
    v2->_length = 0;
  }

  return v2;
}

- (void)wipeout
{
  self->_length = 0;
  [(NSMutableData *)self->_address resetBytesInRange:0, [(NSMutableData *)self->_address length]];
  payload = self->_payload;
  v4 = [(NSMutableData *)payload length];

  [(NSMutableData *)payload resetBytesInRange:0, v4];
}

- (id)updateWithKey:(id)a3 Status:(unsigned __int8)a4 Reserved:(id)a5
{
  v35[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [v8 length];
  v11 = v10 - 6;
  if ((v10 - 6) >= 0x17)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"bad ObjectDiscovery key of length %lu", objc_msgSend(v8, "length")];
    v13 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA450];
    v35[0] = v12;
    v14 = MEMORY[0x277CBEAC0];
    v15 = v35;
    v16 = &v34;
LABEL_6:
    v18 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];
    v19 = [v13 errorWithDomain:@"WPErrorDomain" code:8 userInfo:v18];

    goto LABEL_16;
  }

  v17 = v10;
  if (v9 && [v9 length] >= 3)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"bad ObjectDiscovery reserved bytes length %lu", objc_msgSend(v9, "length")];
    v13 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA450];
    v33 = v12;
    v14 = MEMORY[0x277CBEAC0];
    v15 = &v33;
    v16 = &v32;
    goto LABEL_6;
  }

  v20 = [(WPDObjectDiscoveryData *)self address];
  [v20 replaceBytesInRange:0 withBytes:{6, objc_msgSend(v8, "bytes")}];

  v21 = [(WPDObjectDiscoveryData *)self address];
  v22 = [WPDObjectDiscoveryData applyMaskToAddress:v21];

  v23 = [(WPDObjectDiscoveryData *)self payload];
  v24 = [(WPDObjectDiscoveryData *)self payload];
  [v23 resetBytesInRange:{0, objc_msgSend(v24, "length")}];

  if (v11)
  {
    v25 = [(WPDObjectDiscoveryData *)self payload];
    [v25 replaceBytesInRange:1 withBytes:{v11, objc_msgSend(v8, "bytes") + 6}];
  }

  v26 = [(WPDObjectDiscoveryData *)self payload];
  v27 = [v26 mutableBytes];

  *v27 = a4;
  if (v9 && [v9 length])
  {
    v28 = [(WPDObjectDiscoveryData *)self payload];
    [v28 replaceBytesInRange:v11 withBytes:{objc_msgSend(v9, "length"), objc_msgSend(v9, "bytes")}];
  }

  v27[v17 - 5] = v27[v17 - 5] & 0xFC | v22;
  if (v11)
  {
    v29 = v17 - 3;
  }

  else
  {
    v29 = 2;
  }

  [(WPDObjectDiscoveryData *)self setLength:v29];
  v19 = 0;
LABEL_16:

  v30 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (void)objectDiscoveryReportFromAdvReport:.cold.9()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)objectDiscoveryReportFromAdvReport:.cold.11()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)objectDiscoveryReportFromAdvReport:.cold.13()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)applyMaskToAddress:(_BYTE *)a1 .cold.2(_BYTE *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = (*a1 & 0xC0) != 128;
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

@end