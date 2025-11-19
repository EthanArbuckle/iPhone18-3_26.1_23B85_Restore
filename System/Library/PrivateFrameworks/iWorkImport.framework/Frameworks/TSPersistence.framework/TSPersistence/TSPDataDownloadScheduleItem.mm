@interface TSPDataDownloadScheduleItem
- (TSPData)data;
@end

@implementation TSPDataDownloadScheduleItem

- (TSPData)data
{
  WeakRetained = objc_loadWeakRetained(&self->_data);

  return WeakRetained;
}

@end