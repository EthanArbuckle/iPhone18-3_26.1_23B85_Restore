@interface WCAFetchBeaconDBParameters
- (void)fetchWithCompletion:(id)completion;
@end

@implementation WCAFetchBeaconDBParameters

- (void)fetchWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  v40 = objc_alloc_init(WCAFetchSQLiteRequest);
  [v40 setTableName:@"prof_clean"];
  [v40 setColumnNames:&off_100012A10];
  [v40 setLimit:1];
  v39 = objc_opt_new();
  [(WCAFetchBeaconDBParameters *)selfCopy wlanTimDtimPeriod];
  if (v3 != 0.0)
  {
    [(WCAFetchBeaconDBParameters *)selfCopy wlanTimDtimPeriod];
    v32 = [NSNumber numberWithFloat:?];
    [v39 setValue:? forKey:?];
  }

  wlanHTCapabilities = [(WCAFetchBeaconDBParameters *)selfCopy wlanHTCapabilities];

  if (wlanHTCapabilities)
  {
    wlanHTCapabilities2 = [(WCAFetchBeaconDBParameters *)selfCopy wlanHTCapabilities];
    [v39 setValue:? forKey:?];
  }

  wlanWfaIeWmeQosInfo = [(WCAFetchBeaconDBParameters *)selfCopy wlanWfaIeWmeQosInfo];

  if (wlanWfaIeWmeQosInfo)
  {
    wlanWfaIeWmeQosInfo2 = [(WCAFetchBeaconDBParameters *)selfCopy wlanWfaIeWmeQosInfo];
    [v39 setValue:? forKey:?];
  }

  wlanHtexCapabilities = [(WCAFetchBeaconDBParameters *)selfCopy wlanHtexCapabilities];

  if (wlanHtexCapabilities)
  {
    wlanHtexCapabilities2 = [(WCAFetchBeaconDBParameters *)selfCopy wlanHtexCapabilities];
    [v39 setValue:? forKey:?];
  }

  wlanHTAmpduparam = [(WCAFetchBeaconDBParameters *)selfCopy wlanHTAmpduparam];

  if (wlanHTAmpduparam)
  {
    wlanHTAmpduparam2 = [(WCAFetchBeaconDBParameters *)selfCopy wlanHTAmpduparam];
    [v39 setValue:? forKey:?];
  }

  wlanVhtCapabilities = [(WCAFetchBeaconDBParameters *)selfCopy wlanVhtCapabilities];

  if (wlanVhtCapabilities)
  {
    wlanVhtCapabilities2 = [(WCAFetchBeaconDBParameters *)selfCopy wlanVhtCapabilities];
    [v39 setValue:? forKey:?];
  }

  wlanTxbf = [(WCAFetchBeaconDBParameters *)selfCopy wlanTxbf];

  if (wlanTxbf)
  {
    wlanTxbf2 = [(WCAFetchBeaconDBParameters *)selfCopy wlanTxbf];
    [v39 setValue:? forKey:?];
  }

  wlanAsel = [(WCAFetchBeaconDBParameters *)selfCopy wlanAsel];

  if (wlanAsel)
  {
    wlanAsel2 = [(WCAFetchBeaconDBParameters *)selfCopy wlanAsel];
    [v39 setValue:? forKey:?];
  }

  wlanFixedCapabilities = [(WCAFetchBeaconDBParameters *)selfCopy wlanFixedCapabilities];

  if (wlanFixedCapabilities)
  {
    wlanFixedCapabilities2 = [(WCAFetchBeaconDBParameters *)selfCopy wlanFixedCapabilities];
    [v39 setValue:? forKey:?];
  }

  if ([(WCAFetchBeaconDBParameters *)selfCopy beaconInterval])
  {
    v15 = [NSNumber numberWithLong:[(WCAFetchBeaconDBParameters *)selfCopy beaconInterval]];
    [v39 setValue:? forKey:?];
  }

  if ([(WCAFetchBeaconDBParameters *)selfCopy QBSS_Load])
  {
    v14 = [NSNumber numberWithBool:[(WCAFetchBeaconDBParameters *)selfCopy QBSS_Load]];
    [v39 setValue:? forKey:?];
  }

  if ([(WCAFetchBeaconDBParameters *)selfCopy has_11krm])
  {
    v13 = [NSNumber numberWithBool:[(WCAFetchBeaconDBParameters *)selfCopy has_11krm]];
    [v39 setValue:? forKey:?];
  }

  if ([(WCAFetchBeaconDBParameters *)selfCopy UAPSD])
  {
    v12 = [NSNumber numberWithBool:[(WCAFetchBeaconDBParameters *)selfCopy UAPSD]];
    [v39 setValue:? forKey:?];
  }

  [(WCAFetchBeaconDBParameters *)selfCopy antennas11c];
  if (v4 != 0.0)
  {
    [(WCAFetchBeaconDBParameters *)selfCopy antennas11c];
    v11 = [NSNumber numberWithFloat:?];
    [v39 setValue:? forKey:?];
  }

  antennas11n = [(WCAFetchBeaconDBParameters *)selfCopy antennas11n];

  if (antennas11n)
  {
    antennas11n2 = [(WCAFetchBeaconDBParameters *)selfCopy antennas11n];
    [v39 setValue:? forKey:?];
  }

  [(WCAFetchBeaconDBParameters *)selfCopy max_rates];
  if (v5 != 0.0)
  {
    [(WCAFetchBeaconDBParameters *)selfCopy max_rates];
    v8 = [NSNumber numberWithFloat:?];
    [v39 setValue:? forKey:?];
  }

  [v40 setParameters:v39];
  v6 = +[WCAAsset beaconsDataAsset];
  [v40 setAsset:?];

  v33 = _NSConcreteStackBlock;
  v34 = -1073741824;
  v35 = 0;
  v36 = sub_100001820;
  v37 = &unk_100010638;
  v38 = location[0];
  [v40 setCompletionHandler:&v33];
  v7 = +[WCAClient sharedClient];
  [v7 executeFetchRequest:v40];

  objc_storeStrong(&v38, 0);
  objc_storeStrong(&v39, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
}

@end