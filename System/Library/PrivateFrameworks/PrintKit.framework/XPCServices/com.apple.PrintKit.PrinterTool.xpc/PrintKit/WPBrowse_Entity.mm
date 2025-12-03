@interface WPBrowse_Entity
- (BOOL)parseData:(id)data;
- (WPBrowse_Entity)initWithPuckID:(id)d airPrintData:(id)data rssi:(id)rssi;
- (void)_ingestPrinterAttributes:(id)attributes;
- (void)resolveOnQueue:(id)queue completionHandler:(id)handler;
- (void)updateWithPuckID:(id)d rssi:(id)rssi;
@end

@implementation WPBrowse_Entity

- (WPBrowse_Entity)initWithPuckID:(id)d airPrintData:(id)data rssi:(id)rssi
{
  dCopy = d;
  dataCopy = data;
  rssiCopy = rssi;
  v17.receiver = self;
  v17.super_class = WPBrowse_Entity;
  v12 = [(WPBrowse_Entity *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_puckID, d);
    objc_storeStrong(&v13->_rssi, rssi);
    if (![(WPBrowse_Entity *)v13 parseData:dataCopy])
    {
      v14 = _PKLogCategory(PKLogCategoryDiscovery[0]);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [dataCopy length];
        *buf = 67109378;
        v19 = v15;
        v20 = 2112;
        v21 = dCopy;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Couldn't parse data of length %d for beacon id %@", buf, 0x12u);
      }

      v13 = 0;
    }
  }

  return v13;
}

- (void)updateWithPuckID:(id)d rssi:(id)rssi
{
  dCopy = d;
  rssiCopy = rssi;
  if (([(NSUUID *)self->_puckID isEqual:dCopy]& 1) == 0)
  {
    __assert_rtn("[WPBrowse_Entity updateWithPuckID:rssi:]", "Browse_WirelessProximity.mm", 170, "[_puckID isEqual:puckID]");
  }

  rssi = self->_rssi;
  self->_rssi = rssiCopy;
}

- (void)resolveOnQueue:(id)queue completionHandler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v8 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Attempting to resolve %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  printerURL = self->_printerURL;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000370C0;
  v12[3] = &unk_1000A2B70;
  objc_copyWeak(&v15, buf);
  v10 = queueCopy;
  v13 = v10;
  v11 = handlerCopy;
  v14 = v11;
  [PKPrinterBonjourEndpoint resolveWithURL:printerURL timeout:v12 completionHandler:30.0];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)_ingestPrinterAttributes:(id)attributes
{
  attributesCopy = attributes;
  objc_storeStrong(&self->_txtRecordDictionary, attributes);
  v6 = [attributesCopy objectForKeyedSubscript:@"display-name"];
  v7 = v6;
  if (!v6)
  {
    absoluteString = [(NSURL *)self->_printerURL absoluteString];
    v7 = [NSString stringWithFormat:@"Beacon %@", absoluteString];
  }

  objc_storeStrong(&self->_displayName, v7);
  if (!v6)
  {
  }

  v8 = [[PKPrinterBonjourEndpoint alloc] initWithURL:self->_printerURL txtRecord:attributesCopy provenance:8 provenanceIdentifier:0];
  bonjourName = self->_bonjourName;
  self->_bonjourName = v8;
}

- (BOOL)parseData:(id)data
{
  dataCopy = data;
  if ([dataCopy length] < 0x16)
  {
    v5 = 0;
    goto LABEL_25;
  }

  [dataCopy getBytes:&v29 range:{0, 22}];
  v6 = sub_100037AC4(&v29);
  if ((v29 & 3) == 1)
  {
    v7 = @"ipps";
  }

  else
  {
    v7 = @"ipp";
  }

  v8 = v7;
  v9 = v8;
  v10 = __rev16(v31);
  v11 = __rev16(v30);
  if ((v29 & 0xC) == 0)
  {
    v14 = v8;
    v15 = v6;
    if (v11 - 1 > 5)
    {
      v16 = @"/ipp/print";
      if (v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v16 = off_1000A2C48[(v11 - 1)];
      if (v10)
      {
LABEL_12:
        v17 = [NSNumber numberWithInt:v10];
LABEL_16:
        v18 = PKURLWithComponents(v14, v15, v17, v16);
        if (v10)
        {
        }

        goto LABEL_23;
      }
    }

    v17 = 0;
    goto LABEL_16;
  }

  if ((v29 & 0xC) == 4)
  {
    v25 = v8;
    v12 = v6;
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x3032000000;
    v28[3] = sub_100037B80;
    v28[4] = sub_100037B90;
    v28[5] = 0;
    if (v10)
    {
      v13 = [NSNumber numberWithInt:v10];
    }

    else
    {
      v13 = 0;
    }

    v26 = PKURLWithComponents(v25, v12, v13, @"/ipp/print");
    if (v10)
    {
    }

    v19 = [device_http_t alloc];
    v20 = +[IPPSession globalSession];
    v21 = [v20 ippURL:v26];
    [(device_http_t *)v19 initWithSessionURL:v21 displayNameForCertTrust:0];

    sub_100037D40(v27, 0x4Fu, @"printerURLFromPrintServer");
  }

  v18 = 0;
LABEL_23:

  printerURL = self->_printerURL;
  self->_printerURL = v18;

  v23 = self->_printerURL;
  v5 = v23 != 0;
  if (v23)
  {
    self->_measuredPower = v32;
  }

LABEL_25:

  return v5;
}

@end