@interface TSPDataDownloadObserverInfo
- (BOOL)shouldClearObserverForStatus:(int64_t)a3;
- (BOOL)shouldNotifyStatus:(int64_t)a3;
- (TSPDataDownloadObserverInfo)initWithDownloadObserver:(id)a3 data:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6;
@end

@implementation TSPDataDownloadObserverInfo

- (TSPDataDownloadObserverInfo)initWithDownloadObserver:(id)a3 data:(id)a4 options:(unint64_t)a5 completionHandler:(id)a6
{
  v7.receiver = self;
  v7.super_class = TSPDataDownloadObserverInfo;
  return [(TSPDataObserverInfo *)&v7 initWithObserver:a3 data:a4 options:a5 completionHandler:a6];
}

- (BOOL)shouldNotifyStatus:(int64_t)a3
{
  if (a3 > 4)
  {
    v3 = -1;
  }

  else
  {
    v3 = qword_276C16898[a3];
  }

  return (objc_msgSend_options(self, a2, a3) | v3) == -1;
}

- (BOOL)shouldClearObserverForStatus:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = TSPDataDownloadObserverInfo;
  if ([(TSPDataObserverInfo *)&v8 shouldClearObserverForStatus:?])
  {
    return 1;
  }

  if (a3 == 1)
  {
    return (objc_msgSend_options(self, v5, v6) & 0x10) == 0;
  }

  return 0;
}

@end