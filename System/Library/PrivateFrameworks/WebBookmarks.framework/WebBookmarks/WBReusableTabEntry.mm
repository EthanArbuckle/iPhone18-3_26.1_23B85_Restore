@interface WBReusableTabEntry
- (WBReusableTabEntry)initWithReusableTab:(id)a3;
@end

@implementation WBReusableTabEntry

- (WBReusableTabEntry)initWithReusableTab:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = WBReusableTabEntry;
  v6 = [(WBReusableTabEntry *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reusableTab, a3);
    v8 = [MEMORY[0x277CBEAA8] date];
    dateCreated = v7->_dateCreated;
    v7->_dateCreated = v8;

    v10 = v7;
  }

  return v7;
}

@end