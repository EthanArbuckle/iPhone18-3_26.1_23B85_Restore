@interface PLEntryInfo
- (PLEntryInfo)initWithNotificationComposition:(id)composition minRequestInterval:(double)interval;
@end

@implementation PLEntryInfo

- (PLEntryInfo)initWithNotificationComposition:(id)composition minRequestInterval:(double)interval
{
  compositionCopy = composition;
  v13.receiver = self;
  v13.super_class = PLEntryInfo;
  v8 = [(PLEntryInfo *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_notificationComposition, composition);
    v9->_minRequestInterval = interval;
    distantPast = [MEMORY[0x277CBEAA8] distantPast];
    lastQueryDate = v9->_lastQueryDate;
    v9->_lastQueryDate = distantPast;
  }

  return v9;
}

@end