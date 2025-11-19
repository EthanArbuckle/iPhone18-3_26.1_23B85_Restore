@interface WPDAdvertisingData
- (BOOL)isEqualToData:(id)a3;
- (BOOL)isValidWithAdditionalRequest:(id)a3;
- (NSData)getData;
- (WPDAdvertisingData)init;
- (id)description;
- (void)addAdvertisingRequest:(id)a3;
@end

@implementation WPDAdvertisingData

- (NSData)getData
{
  v3 = [(WPDAdvertisingData *)self internalData];
  v4 = [v3 length];

  if (v4 >= 0x1D)
  {
    [MEMORY[0x277CBEAD8] raise:@"Invalid Data Length" format:{@"Data length %ld is invalid", v4}];
  }

  v5 = [MEMORY[0x277CBEB28] data];
  v6 = [MEMORY[0x277CBEA90] dataWithBytes:&advertisingHeader length:4];
  [v5 setData:v6];

  v7 = [(WPDAdvertisingData *)self internalData];
  [v5 appendData:v7];

  v8 = [v5 length];
  v11 = v8;
  if (v8 < 5)
  {
    v9 = 0;
  }

  else
  {
    v11 = v8 - 1;
    [v5 replaceBytesInRange:0 withBytes:{1, &v11}];
    v9 = v5;
  }

  return v9;
}

- (WPDAdvertisingData)init
{
  v10.receiver = self;
  v10.super_class = WPDAdvertisingData;
  v2 = [(WPDAdvertisingData *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB28] dataWithCapacity:28];
    internalData = v2->_internalData;
    v2->_internalData = v3;

    v5 = [MEMORY[0x277CBEB38] dictionary];
    advDataPerType = v2->_advDataPerType;
    v2->_advDataPerType = v5;

    v7 = [MEMORY[0x277CBEB58] set];
    types = v2->_types;
    v2->_types = v7;

    v2->_advertRate = 0x4000;
    v2->_assertPower = 0;
    *&v2->_enableEPAForAdvertisement = 0;
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(WPDAdvertisingData *)self internalData];
  v5 = [(WPDAdvertisingData *)self advertRate];
  v6 = [(WPDAdvertisingData *)self advertRate]* 0.625;
  v7 = "no";
  if ([(WPDAdvertisingData *)self isRanging])
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  if ([(WPDAdvertisingData *)self assertPower])
  {
    v7 = "yes";
  }

  v9 = [v3 stringWithFormat:@"data %@ rate %ld (%.2f ms) ranging %s assert power %s EPA:%d", v4, v5, *&v6, v8, v7, -[WPDAdvertisingData isEnableEPAForAdvertisement](self, "isEnableEPAForAdvertisement")];

  return v9;
}

- (void)addAdvertisingRequest:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 clientType];
  v27 = v5;
  v6 = [v4 advertisingData];
  v7 = [v4 advertisingRate];
  v8 = [v4 enableEPAForAdvertising];

  if (WPLogInitOnce != -1)
  {
    [WPDAdvertisingData addAdvertisingRequest:];
  }

  v9 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    v29 = v5;
    v30 = 2114;
    v31 = v6;
    v32 = 2048;
    v33 = v7;
    v34 = 1024;
    v35 = v8;
    _os_log_impl(&dword_272965000, v9, OS_LOG_TYPE_DEFAULT, "Adding data of type: %ld, advData: %{public}@ advInterval: %ld EPA:%d", buf, 0x26u);
  }

  v26 = [v6 length];
  v10 = [MEMORY[0x277CBEB28] dataWithCapacity:v26 + 2];
  [v10 appendBytes:&v27 length:1];
  [v10 appendBytes:&v26 length:1];
  [v10 appendData:v6];
  if (v27 < 0xFu)
  {
    v12 = MEMORY[0x277CBEA90];
    v13 = [(WPDAdvertisingData *)self internalData];
    v11 = [v12 dataWithData:v13];

    v14 = [(WPDAdvertisingData *)self internalData];
    [v14 setData:v10];

    v15 = [(WPDAdvertisingData *)self internalData];
    [v15 appendData:v11];
  }

  else
  {
    v11 = [(WPDAdvertisingData *)self internalData];
    [v11 appendData:v10];
  }

  v16 = [(WPDAdvertisingData *)self advDataPerType];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v27];
  [v16 setObject:v6 forKeyedSubscript:v17];

  v18 = [(WPDAdvertisingData *)self types];
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v27];
  [v18 addObject:v19];

  if (v7 < [(WPDAdvertisingData *)self advertRate])
  {
    [(WPDAdvertisingData *)self setAdvertRate:v7];
  }

  [(WPDAdvertisingData *)self setEnableEPAForAdvertisement:v8 | [(WPDAdvertisingData *)self enableEPAForAdvertisement]];
  if (WPLogInitOnce != -1)
  {
    [WPDAdvertisingData addAdvertisingRequest:];
  }

  v20 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v20;
    v22 = [(WPDAdvertisingData *)self internalData];
    v23 = [(WPDAdvertisingData *)self advertRate];
    v24 = [(WPDAdvertisingData *)self isEnableEPAForAdvertisement];
    *buf = 138543874;
    v29 = v22;
    v30 = 2048;
    v31 = v23;
    v32 = 1024;
    LODWORD(v33) = v24;
    _os_log_impl(&dword_272965000, v21, OS_LOG_TYPE_DEFAULT, "Current advertisement packet: %{public}@ advertRate: %ld EPA:%d", buf, 0x1Cu);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqualToData:(id)a3
{
  v4 = a3;
  v5 = [v4 internalData];
  v6 = [(WPDAdvertisingData *)self internalData];
  if (![v5 isEqualToData:v6] || (v7 = objc_msgSend(v4, "advertRate"), v7 != -[WPDAdvertisingData advertRate](self, "advertRate")))
  {

    goto LABEL_6;
  }

  v8 = [v4 isRanging];
  v9 = [(WPDAdvertisingData *)self isRanging];

  if (v8 != v9)
  {
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v10 = 1;
LABEL_7:

  return v10;
}

- (BOOL)isValidWithAdditionalRequest:(id)a3
{
  v4 = a3;
  v5 = [(WPDAdvertisingData *)self internalData];
  v6 = [v5 length];
  v7 = [v4 advertisingData];

  v8 = v6 + [v7 length] + 6;
  return v8 < 0x1D;
}

@end