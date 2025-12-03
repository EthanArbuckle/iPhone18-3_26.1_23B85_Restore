@interface TSPDataDownloadObserverInfo
- (BOOL)shouldClearObserverForStatus:(int64_t)status;
- (BOOL)shouldNotifyStatus:(int64_t)status;
- (TSPDataDownloadObserverInfo)initWithDownloadObserver:(id)observer data:(id)data options:(unint64_t)options completionHandler:(id)handler;
@end

@implementation TSPDataDownloadObserverInfo

- (TSPDataDownloadObserverInfo)initWithDownloadObserver:(id)observer data:(id)data options:(unint64_t)options completionHandler:(id)handler
{
  v7.receiver = self;
  v7.super_class = TSPDataDownloadObserverInfo;
  return [(TSPDataObserverInfo *)&v7 initWithObserver:observer data:data options:options completionHandler:handler];
}

- (BOOL)shouldNotifyStatus:(int64_t)status
{
  if (status > 4)
  {
    v3 = -1;
  }

  else
  {
    v3 = qword_276C16898[status];
  }

  return (objc_msgSend_options(self, a2, status) | v3) == -1;
}

- (BOOL)shouldClearObserverForStatus:(int64_t)status
{
  v8.receiver = self;
  v8.super_class = TSPDataDownloadObserverInfo;
  if ([(TSPDataObserverInfo *)&v8 shouldClearObserverForStatus:?])
  {
    return 1;
  }

  if (status == 1)
  {
    return (objc_msgSend_options(self, v5, v6) & 0x10) == 0;
  }

  return 0;
}

@end