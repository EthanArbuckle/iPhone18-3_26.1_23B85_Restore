@interface SPRepairDeviceContext
- (SPRepairDeviceContext)initWithMatchingBeaconIdentifiers:(id)a3 type:(id)a4;
- (SPRepairDeviceContext)initWithMatchingFindMyIds:(id)a3 type:(id)a4;
- (SPRepairDeviceContext)initWithMatchingSerialNumbers:(id)a3 type:(id)a4;
@end

@implementation SPRepairDeviceContext

- (SPRepairDeviceContext)initWithMatchingFindMyIds:(id)a3 type:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = SPRepairDeviceContext;
  v9 = [(SPRepairDeviceContext *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_findMyIds, a3);
    v11 = objc_opt_new();
    serialNumbers = v10->_serialNumbers;
    v10->_serialNumbers = v11;

    v13 = objc_opt_new();
    beaconIdentifiers = v10->_beaconIdentifiers;
    v10->_beaconIdentifiers = v13;

    objc_storeStrong(&v10->_type, a4);
  }

  return v10;
}

- (SPRepairDeviceContext)initWithMatchingSerialNumbers:(id)a3 type:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = SPRepairDeviceContext;
  v9 = [(SPRepairDeviceContext *)&v15 init];
  if (v9)
  {
    v10 = objc_opt_new();
    findMyIds = v9->_findMyIds;
    v9->_findMyIds = v10;

    objc_storeStrong(&v9->_serialNumbers, a3);
    v12 = objc_opt_new();
    beaconIdentifiers = v9->_beaconIdentifiers;
    v9->_beaconIdentifiers = v12;

    objc_storeStrong(&v9->_type, a4);
  }

  return v9;
}

- (SPRepairDeviceContext)initWithMatchingBeaconIdentifiers:(id)a3 type:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = SPRepairDeviceContext;
  v9 = [(SPRepairDeviceContext *)&v15 init];
  if (v9)
  {
    v10 = objc_opt_new();
    findMyIds = v9->_findMyIds;
    v9->_findMyIds = v10;

    v12 = objc_opt_new();
    serialNumbers = v9->_serialNumbers;
    v9->_serialNumbers = v12;

    objc_storeStrong(&v9->_beaconIdentifiers, a3);
    objc_storeStrong(&v9->_type, a4);
  }

  return v9;
}

@end