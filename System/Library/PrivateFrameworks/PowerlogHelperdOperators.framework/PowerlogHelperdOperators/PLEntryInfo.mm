@interface PLEntryInfo
- (PLEntryInfo)initWithNotificationComposition:(id)a3 minRequestInterval:(double)a4;
@end

@implementation PLEntryInfo

- (PLEntryInfo)initWithNotificationComposition:(id)a3 minRequestInterval:(double)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = PLEntryInfo;
  v8 = [(PLEntryInfo *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_notificationComposition, a3);
    v9->_minRequestInterval = a4;
    v10 = [MEMORY[0x277CBEAA8] distantPast];
    lastQueryDate = v9->_lastQueryDate;
    v9->_lastQueryDate = v10;
  }

  return v9;
}

@end