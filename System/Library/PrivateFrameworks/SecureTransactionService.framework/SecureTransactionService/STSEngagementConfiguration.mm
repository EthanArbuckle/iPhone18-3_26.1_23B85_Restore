@interface STSEngagementConfiguration
+ (id)configurationWithDeviceEngagementType:(unint64_t)type dataRetrievalType:(unint64_t)retrievalType engagementData:(id)data;
- (STSEngagementConfiguration)initWithDeviceEngagementType:(unint64_t)type dataRetrievalType:(unint64_t)retrievalType engagementData:(id)data;
@end

@implementation STSEngagementConfiguration

+ (id)configurationWithDeviceEngagementType:(unint64_t)type dataRetrievalType:(unint64_t)retrievalType engagementData:(id)data
{
  dataCopy = data;
  v8 = [[STSEngagementConfiguration alloc] initWithDeviceEngagementType:type dataRetrievalType:retrievalType engagementData:dataCopy];

  return v8;
}

- (STSEngagementConfiguration)initWithDeviceEngagementType:(unint64_t)type dataRetrievalType:(unint64_t)retrievalType engagementData:(id)data
{
  dataCopy = data;
  v10 = dataCopy;
  if (type != 1 || dataCopy)
  {
    v15.receiver = self;
    v15.super_class = STSEngagementConfiguration;
    v12 = [(STSEngagementConfiguration *)&v15 init];
    v13 = v12;
    if (v12)
    {
      v12->_deviceEngagementType = type;
      v12->_dataRetrievalType = retrievalType;
      objc_storeStrong(&v12->_engagementData, data);
    }

    self = v13;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end