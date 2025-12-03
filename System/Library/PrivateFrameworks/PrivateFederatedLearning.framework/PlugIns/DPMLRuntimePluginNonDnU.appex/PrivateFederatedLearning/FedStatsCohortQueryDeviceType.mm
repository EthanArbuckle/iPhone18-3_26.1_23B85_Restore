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
  block[2] = sub_10001BEB4;
  block[3] = &unk_1000305B8;
  block[4] = self;
  if (qword_10003D5E8 != -1)
  {
    dispatch_once(&qword_10003D5E8, block);
  }

  v2 = qword_10003D5E0;

  return v2;
}

@end