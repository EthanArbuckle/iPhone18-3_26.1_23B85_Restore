@interface WCAFetchBeaconDBParameters
- (void)fetchWithCompletion:(id)a3;
@end

@implementation WCAFetchBeaconDBParameters

- (void)fetchWithCompletion:(id)a3
{
  v42 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v40 = objc_alloc_init(WCAFetchSQLiteRequest);
  [v40 setTableName:@"prof_clean"];
  [v40 setColumnNames:&off_100012A10];
  [v40 setLimit:1];
  v39 = objc_opt_new();
  [(WCAFetchBeaconDBParameters *)v42 wlanTimDtimPeriod];
  if (v3 != 0.0)
  {
    [(WCAFetchBeaconDBParameters *)v42 wlanTimDtimPeriod];
    v32 = [NSNumber numberWithFloat:?];
    [v39 setValue:? forKey:?];
  }

  v31 = [(WCAFetchBeaconDBParameters *)v42 wlanHTCapabilities];

  if (v31)
  {
    v30 = [(WCAFetchBeaconDBParameters *)v42 wlanHTCapabilities];
    [v39 setValue:? forKey:?];
  }

  v29 = [(WCAFetchBeaconDBParameters *)v42 wlanWfaIeWmeQosInfo];

  if (v29)
  {
    v28 = [(WCAFetchBeaconDBParameters *)v42 wlanWfaIeWmeQosInfo];
    [v39 setValue:? forKey:?];
  }

  v27 = [(WCAFetchBeaconDBParameters *)v42 wlanHtexCapabilities];

  if (v27)
  {
    v26 = [(WCAFetchBeaconDBParameters *)v42 wlanHtexCapabilities];
    [v39 setValue:? forKey:?];
  }

  v25 = [(WCAFetchBeaconDBParameters *)v42 wlanHTAmpduparam];

  if (v25)
  {
    v24 = [(WCAFetchBeaconDBParameters *)v42 wlanHTAmpduparam];
    [v39 setValue:? forKey:?];
  }

  v23 = [(WCAFetchBeaconDBParameters *)v42 wlanVhtCapabilities];

  if (v23)
  {
    v22 = [(WCAFetchBeaconDBParameters *)v42 wlanVhtCapabilities];
    [v39 setValue:? forKey:?];
  }

  v21 = [(WCAFetchBeaconDBParameters *)v42 wlanTxbf];

  if (v21)
  {
    v20 = [(WCAFetchBeaconDBParameters *)v42 wlanTxbf];
    [v39 setValue:? forKey:?];
  }

  v19 = [(WCAFetchBeaconDBParameters *)v42 wlanAsel];

  if (v19)
  {
    v18 = [(WCAFetchBeaconDBParameters *)v42 wlanAsel];
    [v39 setValue:? forKey:?];
  }

  v17 = [(WCAFetchBeaconDBParameters *)v42 wlanFixedCapabilities];

  if (v17)
  {
    v16 = [(WCAFetchBeaconDBParameters *)v42 wlanFixedCapabilities];
    [v39 setValue:? forKey:?];
  }

  if ([(WCAFetchBeaconDBParameters *)v42 beaconInterval])
  {
    v15 = [NSNumber numberWithLong:[(WCAFetchBeaconDBParameters *)v42 beaconInterval]];
    [v39 setValue:? forKey:?];
  }

  if ([(WCAFetchBeaconDBParameters *)v42 QBSS_Load])
  {
    v14 = [NSNumber numberWithBool:[(WCAFetchBeaconDBParameters *)v42 QBSS_Load]];
    [v39 setValue:? forKey:?];
  }

  if ([(WCAFetchBeaconDBParameters *)v42 has_11krm])
  {
    v13 = [NSNumber numberWithBool:[(WCAFetchBeaconDBParameters *)v42 has_11krm]];
    [v39 setValue:? forKey:?];
  }

  if ([(WCAFetchBeaconDBParameters *)v42 UAPSD])
  {
    v12 = [NSNumber numberWithBool:[(WCAFetchBeaconDBParameters *)v42 UAPSD]];
    [v39 setValue:? forKey:?];
  }

  [(WCAFetchBeaconDBParameters *)v42 antennas11c];
  if (v4 != 0.0)
  {
    [(WCAFetchBeaconDBParameters *)v42 antennas11c];
    v11 = [NSNumber numberWithFloat:?];
    [v39 setValue:? forKey:?];
  }

  v10 = [(WCAFetchBeaconDBParameters *)v42 antennas11n];

  if (v10)
  {
    v9 = [(WCAFetchBeaconDBParameters *)v42 antennas11n];
    [v39 setValue:? forKey:?];
  }

  [(WCAFetchBeaconDBParameters *)v42 max_rates];
  if (v5 != 0.0)
  {
    [(WCAFetchBeaconDBParameters *)v42 max_rates];
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