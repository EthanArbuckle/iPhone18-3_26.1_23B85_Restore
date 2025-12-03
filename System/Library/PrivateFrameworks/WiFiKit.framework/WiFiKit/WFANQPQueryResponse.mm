@interface WFANQPQueryResponse
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToWFANQPResponse:(id)response;
- (WFANQPQueryResponse)initWithScanResult:(id)result ANQPResponse:(id)response;
- (id)description;
- (unint64_t)hash;
@end

@implementation WFANQPQueryResponse

- (WFANQPQueryResponse)initWithScanResult:(id)result ANQPResponse:(id)response
{
  v34 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  responseCopy = response;
  v9 = responseCopy;
  if (!self)
  {
    v18 = 0;
LABEL_17:

    v26 = 0;
    self = 0;
    goto LABEL_11;
  }

  if (!resultCopy)
  {
    [WFANQPQueryResponse initWithScanResult:buf ANQPResponse:?];
LABEL_15:
    v30 = v32;
    v18 = *buf;
LABEL_16:

    goto LABEL_17;
  }

  if (!responseCopy)
  {
    [WFANQPQueryResponse initWithScanResult:buf ANQPResponse:?];
    goto LABEL_15;
  }

  objc_storeStrong(&self->_scanResult, result);
  networkName = [resultCopy networkName];
  ssid = self->_ssid;
  self->_ssid = networkName;

  v12 = [v9 objectForKey:@"ANQP_CELL_NETWORK_INFO"];
  cellNetworkInfo = self->_cellNetworkInfo;
  self->_cellNetworkInfo = v12;

  v14 = [v9 objectForKey:@"ANQP_ROAMING_CONSORTIUM_OI_LIST"];
  roamingConsortium = self->_roamingConsortium;
  self->_roamingConsortium = v14;

  v16 = [v9 objectForKey:@"ANQP_DOMAIN_NAME_LIST"];
  domains = self->_domains;
  self->_domains = v16;

  v18 = [v9 objectForKey:@"ANQP_OPERATOR_NAMES_LIST"];
  if ([v18 count])
  {
    v19 = [v18 objectAtIndex:0];
    v20 = v19;
    if (v19)
    {
      v21 = [v19 objectForKey:@"ANQP_OPERATOR_NAME"];
      operatorName = self->_operatorName;
      self->_operatorName = v21;
    }
  }

  v23 = [v9 objectForKey:@"BSSID"];
  bssid = self->_bssid;
  self->_bssid = v23;

  if (!self->_bssid)
  {
    v30 = WFLogForCategory(0);
    v31 = OSLogForWFLogLevel(1uLL);
    if (WFCurrentLogLevel() && v30 && os_log_type_enabled(v30, v31))
    {
      *buf = 138412290;
      *&buf[4] = v9;
      _os_log_impl(&dword_273ECD000, v30, v31, "BSSID was nil for ANQP response %@", buf, 0xCu);
    }

    goto LABEL_16;
  }

  v25 = [v9 objectForKey:@"CHANNEL"];
  v26 = v25;
  if (v25)
  {
    self->_channel = [v25 integerValue];
  }

LABEL_11:
  selfCopy = self;

  v28 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  bssid = [(WFANQPQueryResponse *)self bssid];
  operatorName = [(WFANQPQueryResponse *)self operatorName];
  v8 = [v3 stringWithFormat:@"%@- BSSID %@ | Operator Name %@", v5, bssid, operatorName];

  return v8;
}

- (unint64_t)hash
{
  bssid = [(WFANQPQueryResponse *)self bssid];
  v3 = [bssid hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(WFANQPQueryResponse *)self isEqualToWFANQPResponse:equalCopy];

  return v5;
}

- (BOOL)isEqualToWFANQPResponse:(id)response
{
  responseCopy = response;
  bssid = [(WFANQPQueryResponse *)self bssid];
  bssid2 = [responseCopy bssid];

  LOBYTE(responseCopy) = [bssid isEqualToString:bssid2];
  return responseCopy;
}

- (void)initWithScanResult:(NSObject *)a1 ANQPResponse:(void *)a2 .cold.1(NSObject **a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_0_13(&dword_273ECD000, v6, v7, "%s: missing response", v8, v9, v10, v11, 2u);
  }

  *a2 = 0;
  *a1 = v4;
  v12 = *MEMORY[0x277D85DE8];
}

- (void)initWithScanResult:(NSObject *)a1 ANQPResponse:(void *)a2 .cold.2(NSObject **a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_0_13(&dword_273ECD000, v6, v7, "%s: missing scan result", v8, v9, v10, v11, 2u);
  }

  *a2 = 0;
  *a1 = v4;
  v12 = *MEMORY[0x277D85DE8];
}

@end