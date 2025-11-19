@interface RTNetworkOfInterestManagerCellLinkQualityChangedNotification
- (RTNetworkOfInterestManagerCellLinkQualityChangedNotification)initWithLinkQuality:(unint64_t)a3;
@end

@implementation RTNetworkOfInterestManagerCellLinkQualityChangedNotification

- (RTNetworkOfInterestManagerCellLinkQualityChangedNotification)initWithLinkQuality:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = RTNetworkOfInterestManagerCellLinkQualityChangedNotification;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_linkQuality = a3;
  }

  return result;
}

@end