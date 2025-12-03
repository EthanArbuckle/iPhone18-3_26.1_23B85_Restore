@interface WPDAdvertisingData
- (BOOL)isEqualToData:(id)data;
- (BOOL)isValidWithAdditionalRequest:(id)request;
- (NSData)getData;
- (WPDAdvertisingData)init;
- (id)description;
- (void)addAdvertisingRequest:(id)request;
@end

@implementation WPDAdvertisingData

- (NSData)getData
{
  internalData = [(WPDAdvertisingData *)self internalData];
  v4 = [internalData length];

  if (v4 >= 0x1D)
  {
    [MEMORY[0x277CBEAD8] raise:@"Invalid Data Length" format:{@"Data length %ld is invalid", v4}];
  }

  data = [MEMORY[0x277CBEB28] data];
  v6 = [MEMORY[0x277CBEA90] dataWithBytes:&advertisingHeader length:4];
  [data setData:v6];

  internalData2 = [(WPDAdvertisingData *)self internalData];
  [data appendData:internalData2];

  v8 = [data length];
  v11 = v8;
  if (v8 < 5)
  {
    v9 = 0;
  }

  else
  {
    v11 = v8 - 1;
    [data replaceBytesInRange:0 withBytes:{1, &v11}];
    v9 = data;
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

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    advDataPerType = v2->_advDataPerType;
    v2->_advDataPerType = dictionary;

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
  internalData = [(WPDAdvertisingData *)self internalData];
  advertRate = [(WPDAdvertisingData *)self advertRate];
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

  v9 = [v3 stringWithFormat:@"data %@ rate %ld (%.2f ms) ranging %s assert power %s EPA:%d", internalData, advertRate, *&v6, v8, v7, -[WPDAdvertisingData isEnableEPAForAdvertisement](self, "isEnableEPAForAdvertisement")];

  return v9;
}

- (void)addAdvertisingRequest:(id)request
{
  v36 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  clientType = [requestCopy clientType];
  v27 = clientType;
  advertisingData = [requestCopy advertisingData];
  advertisingRate = [requestCopy advertisingRate];
  enableEPAForAdvertising = [requestCopy enableEPAForAdvertising];

  if (WPLogInitOnce != -1)
  {
    [WPDAdvertisingData addAdvertisingRequest:];
  }

  v9 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    v29 = clientType;
    v30 = 2114;
    v31 = advertisingData;
    v32 = 2048;
    v33 = advertisingRate;
    v34 = 1024;
    v35 = enableEPAForAdvertising;
    _os_log_impl(&dword_272965000, v9, OS_LOG_TYPE_DEFAULT, "Adding data of type: %ld, advData: %{public}@ advInterval: %ld EPA:%d", buf, 0x26u);
  }

  v26 = [advertisingData length];
  v10 = [MEMORY[0x277CBEB28] dataWithCapacity:v26 + 2];
  [v10 appendBytes:&v27 length:1];
  [v10 appendBytes:&v26 length:1];
  [v10 appendData:advertisingData];
  if (v27 < 0xFu)
  {
    v12 = MEMORY[0x277CBEA90];
    internalData = [(WPDAdvertisingData *)self internalData];
    internalData4 = [v12 dataWithData:internalData];

    internalData2 = [(WPDAdvertisingData *)self internalData];
    [internalData2 setData:v10];

    internalData3 = [(WPDAdvertisingData *)self internalData];
    [internalData3 appendData:internalData4];
  }

  else
  {
    internalData4 = [(WPDAdvertisingData *)self internalData];
    [internalData4 appendData:v10];
  }

  advDataPerType = [(WPDAdvertisingData *)self advDataPerType];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v27];
  [advDataPerType setObject:advertisingData forKeyedSubscript:v17];

  types = [(WPDAdvertisingData *)self types];
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v27];
  [types addObject:v19];

  if (advertisingRate < [(WPDAdvertisingData *)self advertRate])
  {
    [(WPDAdvertisingData *)self setAdvertRate:advertisingRate];
  }

  [(WPDAdvertisingData *)self setEnableEPAForAdvertisement:enableEPAForAdvertising | [(WPDAdvertisingData *)self enableEPAForAdvertisement]];
  if (WPLogInitOnce != -1)
  {
    [WPDAdvertisingData addAdvertisingRequest:];
  }

  v20 = WiProxLog;
  if (os_log_type_enabled(WiProxLog, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v20;
    internalData5 = [(WPDAdvertisingData *)self internalData];
    advertRate = [(WPDAdvertisingData *)self advertRate];
    isEnableEPAForAdvertisement = [(WPDAdvertisingData *)self isEnableEPAForAdvertisement];
    *buf = 138543874;
    v29 = internalData5;
    v30 = 2048;
    v31 = advertRate;
    v32 = 1024;
    LODWORD(v33) = isEnableEPAForAdvertisement;
    _os_log_impl(&dword_272965000, v21, OS_LOG_TYPE_DEFAULT, "Current advertisement packet: %{public}@ advertRate: %ld EPA:%d", buf, 0x1Cu);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqualToData:(id)data
{
  dataCopy = data;
  internalData = [dataCopy internalData];
  internalData2 = [(WPDAdvertisingData *)self internalData];
  if (![internalData isEqualToData:internalData2] || (v7 = objc_msgSend(dataCopy, "advertRate"), v7 != -[WPDAdvertisingData advertRate](self, "advertRate")))
  {

    goto LABEL_6;
  }

  isRanging = [dataCopy isRanging];
  isRanging2 = [(WPDAdvertisingData *)self isRanging];

  if (isRanging != isRanging2)
  {
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v10 = 1;
LABEL_7:

  return v10;
}

- (BOOL)isValidWithAdditionalRequest:(id)request
{
  requestCopy = request;
  internalData = [(WPDAdvertisingData *)self internalData];
  v6 = [internalData length];
  advertisingData = [requestCopy advertisingData];

  v8 = v6 + [advertisingData length] + 6;
  return v8 < 0x1D;
}

@end