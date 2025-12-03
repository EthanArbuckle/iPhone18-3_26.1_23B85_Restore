@interface BYSIMRegionService
- (BYSIMRegionService)init;
- (id)cellularNetworkInformation;
- (id)isoCodeForMCC:(int64_t)c;
- (id)subregionISOCodesForMCC:(int64_t)c MNC:(int64_t)nC;
- (void)cellularNetworkInformation;
- (void)logTelephonyError:(id)error;
@end

@implementation BYSIMRegionService

- (BYSIMRegionService)init
{
  v5.receiver = self;
  v5.super_class = BYSIMRegionService;
  v2 = [(BYSIMRegionService *)&v5 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:0];
    [(BYSIMRegionService *)v2 setTelephonyClient:v3];
  }

  return v2;
}

- (id)cellularNetworkInformation
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  telephonyClient = [(BYSIMRegionService *)self telephonyClient];
  v45 = 0;
  v5 = [telephonyClient getActiveContexts:&v45];
  v6 = v45;

  if (v6)
  {
    v7 = _BYLoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(BYSIMRegionService *)v6 cellularNetworkInformation];
    }
  }

  v8 = v3;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [v5 subscriptions];
  v9 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v42;
    do
    {
      v12 = 0;
      do
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v41 + 1) + 8 * v12);
        v14 = objc_alloc_init(BYCellularNetworkInformation);
        v15 = [objc_alloc(MEMORY[0x1E6965090]) initWithSlot:{objc_msgSend(v13, "slotID")}];
        if (v15)
        {

          telephonyClient2 = [(BYSIMRegionService *)self telephonyClient];
          v40 = 0;
          v17 = [telephonyClient2 copyMobileSubscriberCountryCode:v15 error:&v40];
          v18 = v40;
          -[BYCellularNetworkInformation setHomeMCC:](v14, "setHomeMCC:", [v17 integerValue]);

          [(BYSIMRegionService *)self logTelephonyError:v18];
          telephonyClient3 = [(BYSIMRegionService *)self telephonyClient];
          v39 = 0;
          v20 = [telephonyClient3 copyMobileSubscriberNetworkCode:v15 error:&v39];
          v21 = v39;
          -[BYCellularNetworkInformation setHomeMNC:](v14, "setHomeMNC:", [v20 integerValue]);

          [(BYSIMRegionService *)self logTelephonyError:v21];
          telephonyClient4 = [(BYSIMRegionService *)self telephonyClient];
          v38 = 0;
          v23 = [telephonyClient4 copyMobileCountryCode:v15 error:&v38];
          v24 = v38;
          -[BYCellularNetworkInformation setNetworkMCC:](v14, "setNetworkMCC:", [v23 integerValue]);

          [(BYSIMRegionService *)self logTelephonyError:v24];
          telephonyClient5 = [(BYSIMRegionService *)self telephonyClient];
          v37 = 0;
          v26 = [telephonyClient5 copyMobileNetworkCode:v15 error:&v37];
          v6 = v37;
          -[BYCellularNetworkInformation setNetworkMNC:](v14, "setNetworkMNC:", [v26 integerValue]);

          [(BYSIMRegionService *)self logTelephonyError:v6];
          v27 = [(BYSIMRegionService *)self isoCodeForMCC:[(BYCellularNetworkInformation *)v14 homeMCC]];
          [(BYCellularNetworkInformation *)v14 setHomeCountryISOCode:v27];

          v28 = [(BYSIMRegionService *)self subregionISOCodesForMCC:[(BYCellularNetworkInformation *)v14 homeMCC] MNC:[(BYCellularNetworkInformation *)v14 homeMNC]];
          [(BYCellularNetworkInformation *)v14 setHomeSubregionISOCodes:v28];

          v29 = [(BYSIMRegionService *)self isoCodeForMCC:[(BYCellularNetworkInformation *)v14 networkMCC]];
          [(BYCellularNetworkInformation *)v14 setNetworkCountryISOCode:v29];

          v30 = [(BYSIMRegionService *)self subregionISOCodesForMCC:[(BYCellularNetworkInformation *)v14 networkMCC] MNC:[(BYCellularNetworkInformation *)v14 networkMNC]];
          [(BYCellularNetworkInformation *)v14 setNetworkSubregionISOCodes:v30];

          [v8 addObject:v14];
        }

        else
        {
          v31 = _BYLoggingFacility();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            [(BYSIMRegionService *)v46 cellularNetworkInformation:v13];
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v41 objects:v48 count:16];
    }

    while (v10);
  }

  v32 = v8;
  v33 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)logTelephonyError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v4 = _BYLoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(BYSIMRegionService *)errorCopy logTelephonyError:v4];
    }
  }
}

- (id)isoCodeForMCC:(int64_t)c
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:c];
  stringValue = [v4 stringValue];

  telephonyClient = [(BYSIMRegionService *)self telephonyClient];
  v12 = 0;
  v7 = [telephonyClient copyMobileSubscriberIsoCountryCode:stringValue error:&v12];
  v8 = v12;
  uppercaseString = [v7 uppercaseString];

  if (v8)
  {
    v10 = _BYLoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(BYSIMRegionService *)stringValue isoCodeForMCC:v8, v10];
    }
  }

  return uppercaseString;
}

- (id)subregionISOCodesForMCC:(int64_t)c MNC:(int64_t)nC
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:c];
  stringValue = [v6 stringValue];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:nC];
  stringValue2 = [v8 stringValue];

  telephonyClient = [(BYSIMRegionService *)self telephonyClient];
  v16 = 0;
  v11 = [telephonyClient copyMobileSubscriberIsoSubregionCode:stringValue MNC:stringValue2 error:&v16];
  v12 = v16;

  if (v12)
  {
    v13 = _BYLoggingFacility();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v18 = stringValue;
      v19 = 2112;
      v20 = stringValue2;
      v21 = 2112;
      v22 = v12;
      _os_log_error_impl(&dword_1B862F000, v13, OS_LOG_TYPE_ERROR, "Error getting subregion ISO code from MCC: %@, MNC: %@, error: %@", buf, 0x20u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)cellularNetworkInformation
{
  slotID = [a2 slotID];
  *self = 134217984;
  *a3 = slotID;
  _os_log_error_impl(&dword_1B862F000, a4, OS_LOG_TYPE_ERROR, "Unable to find selected context to load telephony network information { slot: %ld }", self, 0xCu);
}

- (void)logTelephonyError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B862F000, a2, OS_LOG_TYPE_ERROR, "Error reading telephony network information { error: %@ }", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)isoCodeForMCC:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1B862F000, log, OS_LOG_TYPE_ERROR, "Error getting ISO code from MCC: %@, error: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end