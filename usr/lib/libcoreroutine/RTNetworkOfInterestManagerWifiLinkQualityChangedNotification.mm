@interface RTNetworkOfInterestManagerWifiLinkQualityChangedNotification
- (RTNetworkOfInterestManagerWifiLinkQualityChangedNotification)initWithLinkQuality:(unint64_t)quality;
@end

@implementation RTNetworkOfInterestManagerWifiLinkQualityChangedNotification

- (RTNetworkOfInterestManagerWifiLinkQualityChangedNotification)initWithLinkQuality:(unint64_t)quality
{
  v5.receiver = self;
  v5.super_class = RTNetworkOfInterestManagerWifiLinkQualityChangedNotification;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_linkQuality = quality;
  }

  return result;
}

@end