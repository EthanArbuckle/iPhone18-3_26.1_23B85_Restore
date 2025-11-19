@interface WBSOnDeviceModelEndpointInfo
- (WBSOnDeviceModelEndpointInfo)initWithEndpointURL:(id)a3 sizeInBytes:(unint64_t)a4 checksumString:(id)a5;
@end

@implementation WBSOnDeviceModelEndpointInfo

- (WBSOnDeviceModelEndpointInfo)initWithEndpointURL:(id)a3 sizeInBytes:(unint64_t)a4 checksumString:(id)a5
{
  v8 = a3;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = WBSOnDeviceModelEndpointInfo;
  v10 = [(WBSOnDeviceModelEndpointInfo *)&v17 init];
  if (v10)
  {
    v11 = [v8 copy];
    endpointURL = v10->_endpointURL;
    v10->_endpointURL = v11;

    v10->_sizeInBytes = a4;
    v13 = [v9 copy];
    checksumString = v10->_checksumString;
    v10->_checksumString = v13;

    v15 = v10;
  }

  return v10;
}

@end