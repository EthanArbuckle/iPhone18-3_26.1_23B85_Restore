@interface FedStatsCohortQueryDeviceType
+ (id)cohortInstance;
- (FedStatsCohortQueryDeviceType)initWithDeviceType:(id)a3;
@end

@implementation FedStatsCohortQueryDeviceType

- (FedStatsCohortQueryDeviceType)initWithDeviceType:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FedStatsCohortQueryDeviceType;
  v6 = [(FedStatsCohortQueryDeviceType *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_deviceType, a3);
  }

  return v7;
}

+ (id)cohortInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BB58;
  block[3] = &unk_10002C5B0;
  block[4] = a1;
  if (qword_1000395E0 != -1)
  {
    dispatch_once(&qword_1000395E0, block);
  }

  v2 = qword_1000395D8;

  return v2;
}

@end