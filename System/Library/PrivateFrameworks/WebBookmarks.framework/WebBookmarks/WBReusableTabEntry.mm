@interface WBReusableTabEntry
- (WBReusableTabEntry)initWithReusableTab:(id)tab;
@end

@implementation WBReusableTabEntry

- (WBReusableTabEntry)initWithReusableTab:(id)tab
{
  tabCopy = tab;
  v12.receiver = self;
  v12.super_class = WBReusableTabEntry;
  v6 = [(WBReusableTabEntry *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reusableTab, tab);
    date = [MEMORY[0x277CBEAA8] date];
    dateCreated = v7->_dateCreated;
    v7->_dateCreated = date;

    v10 = v7;
  }

  return v7;
}

@end