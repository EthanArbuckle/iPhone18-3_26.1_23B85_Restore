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
  block[2] = sub_10001BEB4;
  block[3] = &unk_1000305B8;
  block[4] = a1;
  if (qword_10003D5E8 != -1)
  {
    dispatch_once(&qword_10003D5E8, block);
  }

  v2 = qword_10003D5E0;

  return v2;
}

@end