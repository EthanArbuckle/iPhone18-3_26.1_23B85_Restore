@interface RTNetworkOfInterestManagerCellLinkQualityChangedNotification
- (RTNetworkOfInterestManagerCellLinkQualityChangedNotification)initWithLinkQuality:(unint64_t)quality;
@end

@implementation RTNetworkOfInterestManagerCellLinkQualityChangedNotification

- (RTNetworkOfInterestManagerCellLinkQualityChangedNotification)initWithLinkQuality:(unint64_t)quality
{
  v5.receiver = self;
  v5.super_class = RTNetworkOfInterestManagerCellLinkQualityChangedNotification;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_linkQuality = quality;
  }

  return result;
}

@end