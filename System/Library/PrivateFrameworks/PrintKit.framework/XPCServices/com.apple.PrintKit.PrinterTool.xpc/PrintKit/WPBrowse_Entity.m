@interface WPBrowse_Entity
- (BOOL)parseData:(id)a3;
- (WPBrowse_Entity)initWithPuckID:(id)a3 airPrintData:(id)a4 rssi:(id)a5;
- (void)_ingestPrinterAttributes:(id)a3;
- (void)resolveOnQueue:(id)a3 completionHandler:(id)a4;
- (void)updateWithPuckID:(id)a3 rssi:(id)a4;
@end

@implementation WPBrowse_Entity

- (WPBrowse_Entity)initWithPuckID:(id)a3 airPrintData:(id)a4 rssi:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = WPBrowse_Entity;
  v12 = [(WPBrowse_Entity *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_puckID, a3);
    objc_storeStrong(&v13->_rssi, a5);
    if (![(WPBrowse_Entity *)v13 parseData:v10])
    {
      v14 = _PKLogCategory(PKLogCategoryDiscovery[0]);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v10 length];
        *buf = 67109378;
        v19 = v15;
        v20 = 2112;
        v21 = v9;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Couldn't parse data of length %d for beacon id %@", buf, 0x12u);
      }

      v13 = 0;
    }
  }

  return v13;
}

- (void)updateWithPuckID:(id)a3 rssi:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (([(NSUUID *)self->_puckID isEqual:v8]& 1) == 0)
  {
    __assert_rtn("[WPBrowse_Entity updateWithPuckID:rssi:]", "Browse_WirelessProximity.mm", 170, "[_puckID isEqual:puckID]");
  }

  rssi = self->_rssi;
  self->_rssi = v6;
}

- (void)resolveOnQueue:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Attempting to resolve %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  printerURL = self->_printerURL;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000370C0;
  v12[3] = &unk_1000A2B70;
  objc_copyWeak(&v15, buf);
  v10 = v6;
  v13 = v10;
  v11 = v7;
  v14 = v11;
  [PKPrinterBonjourEndpoint resolveWithURL:printerURL timeout:v12 completionHandler:30.0];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)_ingestPrinterAttributes:(id)a3
{
  v10 = a3;
  objc_storeStrong(&self->_txtRecordDictionary, a3);
  v6 = [v10 objectForKeyedSubscript:@"display-name"];
  v7 = v6;
  if (!v6)
  {
    v3 = [(NSURL *)self->_printerURL absoluteString];
    v7 = [NSString stringWithFormat:@"Beacon %@", v3];
  }

  objc_storeStrong(&self->_displayName, v7);
  if (!v6)
  {
  }

  v8 = [[PKPrinterBonjourEndpoint alloc] initWithURL:self->_printerURL txtRecord:v10 provenance:8 provenanceIdentifier:0];
  bonjourName = self->_bonjourName;
  self->_bonjourName = v8;
}

- (BOOL)parseData:(id)a3
{
  v4 = a3;
  if ([v4 length] < 0x16)
  {
    v5 = 0;
    goto LABEL_25;
  }

  [v4 getBytes:&v29 range:{0, 22}];
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