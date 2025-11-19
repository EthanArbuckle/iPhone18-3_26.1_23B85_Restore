@interface STSEngagementConfiguration
+ (id)configurationWithDeviceEngagementType:(unint64_t)a3 dataRetrievalType:(unint64_t)a4 engagementData:(id)a5;
- (STSEngagementConfiguration)initWithDeviceEngagementType:(unint64_t)a3 dataRetrievalType:(unint64_t)a4 engagementData:(id)a5;
@end

@implementation STSEngagementConfiguration

+ (id)configurationWithDeviceEngagementType:(unint64_t)a3 dataRetrievalType:(unint64_t)a4 engagementData:(id)a5
{
  v7 = a5;
  v8 = [[STSEngagementConfiguration alloc] initWithDeviceEngagementType:a3 dataRetrievalType:a4 engagementData:v7];

  return v8;
}

- (STSEngagementConfiguration)initWithDeviceEngagementType:(unint64_t)a3 dataRetrievalType:(unint64_t)a4 engagementData:(id)a5
{
  v9 = a5;
  v10 = v9;
  if (a3 != 1 || v9)
  {
    v15.receiver = self;
    v15.super_class = STSEngagementConfiguration;
    v12 = [(STSEngagementConfiguration *)&v15 init];
    v13 = v12;
    if (v12)
    {
      v12->_deviceEngagementType = a3;
      v12->_dataRetrievalType = a4;
      objc_storeStrong(&v12->_engagementData, a5);
    }

    self = v13;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end