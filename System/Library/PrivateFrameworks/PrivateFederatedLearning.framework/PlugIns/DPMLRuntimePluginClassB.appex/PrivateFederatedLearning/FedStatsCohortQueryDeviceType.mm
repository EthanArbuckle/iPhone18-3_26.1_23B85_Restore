@interface FedStatsCohortQueryDeviceType
+ (id)cohortInstance;
- (FedStatsCohortQueryDeviceType)initWithDeviceType:(id)type;
@end

@implementation FedStatsCohortQueryDeviceType

- (FedStatsCohortQueryDeviceType)initWithDeviceType:(id)type
{
  typeCopy = type;
  v9.receiver = self;
  v9.super_class = FedStatsCohortQueryDeviceType;
  v6 = [(FedStatsCohortQueryDeviceType *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deviceType, type);
  }

  return v7;
}

+ (id)cohortInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BB58;
  block[3] = &unk_10002C5B0;
  block[4] = self;
  if (qword_1000395E0 != -1)
  {
    dispatch_once(&qword_1000395E0, block);
  }

  v2 = qword_1000395D8;

  return v2;
}

@end