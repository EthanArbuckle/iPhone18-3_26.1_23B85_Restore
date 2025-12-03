@interface WBSOnDeviceModelEndpointInfo
- (WBSOnDeviceModelEndpointInfo)initWithEndpointURL:(id)l sizeInBytes:(unint64_t)bytes checksumString:(id)string;
@end

@implementation WBSOnDeviceModelEndpointInfo

- (WBSOnDeviceModelEndpointInfo)initWithEndpointURL:(id)l sizeInBytes:(unint64_t)bytes checksumString:(id)string
{
  lCopy = l;
  stringCopy = string;
  v17.receiver = self;
  v17.super_class = WBSOnDeviceModelEndpointInfo;
  v10 = [(WBSOnDeviceModelEndpointInfo *)&v17 init];
  if (v10)
  {
    v11 = [lCopy copy];
    endpointURL = v10->_endpointURL;
    v10->_endpointURL = v11;

    v10->_sizeInBytes = bytes;
    v13 = [stringCopy copy];
    checksumString = v10->_checksumString;
    v10->_checksumString = v13;

    v15 = v10;
  }

  return v10;
}

@end