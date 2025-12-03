@interface SPRepairDeviceContext
- (SPRepairDeviceContext)initWithMatchingBeaconIdentifiers:(id)identifiers type:(id)type;
- (SPRepairDeviceContext)initWithMatchingFindMyIds:(id)ids type:(id)type;
- (SPRepairDeviceContext)initWithMatchingSerialNumbers:(id)numbers type:(id)type;
@end

@implementation SPRepairDeviceContext

- (SPRepairDeviceContext)initWithMatchingFindMyIds:(id)ids type:(id)type
{
  idsCopy = ids;
  typeCopy = type;
  v16.receiver = self;
  v16.super_class = SPRepairDeviceContext;
  v9 = [(SPRepairDeviceContext *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_findMyIds, ids);
    v11 = objc_opt_new();
    serialNumbers = v10->_serialNumbers;
    v10->_serialNumbers = v11;

    v13 = objc_opt_new();
    beaconIdentifiers = v10->_beaconIdentifiers;
    v10->_beaconIdentifiers = v13;

    objc_storeStrong(&v10->_type, type);
  }

  return v10;
}

- (SPRepairDeviceContext)initWithMatchingSerialNumbers:(id)numbers type:(id)type
{
  numbersCopy = numbers;
  typeCopy = type;
  v15.receiver = self;
  v15.super_class = SPRepairDeviceContext;
  v9 = [(SPRepairDeviceContext *)&v15 init];
  if (v9)
  {
    v10 = objc_opt_new();
    findMyIds = v9->_findMyIds;
    v9->_findMyIds = v10;

    objc_storeStrong(&v9->_serialNumbers, numbers);
    v12 = objc_opt_new();
    beaconIdentifiers = v9->_beaconIdentifiers;
    v9->_beaconIdentifiers = v12;

    objc_storeStrong(&v9->_type, type);
  }

  return v9;
}

- (SPRepairDeviceContext)initWithMatchingBeaconIdentifiers:(id)identifiers type:(id)type
{
  identifiersCopy = identifiers;
  typeCopy = type;
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

    objc_storeStrong(&v9->_beaconIdentifiers, identifiers);
    objc_storeStrong(&v9->_type, type);
  }

  return v9;
}

@end