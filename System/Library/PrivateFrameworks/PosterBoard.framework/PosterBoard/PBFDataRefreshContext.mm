@interface PBFDataRefreshContext
+ (id)dynamicDescriptorsRefreshContextForNow:(id)now extension:(id)extension lastRefreshDate:(id)date refreshStrategy:(int64_t)strategy;
+ (id)snapshotRefreshContextForExtension:(id)extension now:(id)now refreshStrategy:(int64_t)strategy;
+ (id)staticDescriptorsRefreshContextForNow:(id)now extension:(id)extension;
- (PBFDataRefreshContext)initWithComponent:(id)component now:(id)now lastRefreshDate:(id)date userInfo:(id)info;
@end

@implementation PBFDataRefreshContext

+ (id)dynamicDescriptorsRefreshContextForNow:(id)now extension:(id)extension lastRefreshDate:(id)date refreshStrategy:(int64_t)strategy
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = @"refreshStrategy";
  v9 = MEMORY[0x277CCABB0];
  dateCopy = date;
  extensionCopy = extension;
  nowCopy = now;
  v13 = [v9 numberWithInteger:strategy];
  v18[1] = @"extension";
  v19[0] = v13;
  v19[1] = extensionCopy;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v15 = [PBFDataRefreshContext alloc];
  v16 = [(PBFDataRefreshContext *)v15 initWithComponent:@"PBFDataComponentDynamicDescriptors" now:nowCopy lastRefreshDate:dateCopy userInfo:v14];

  return v16;
}

+ (id)snapshotRefreshContextForExtension:(id)extension now:(id)now refreshStrategy:(int64_t)strategy
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = @"refreshStrategy";
  v7 = MEMORY[0x277CCABB0];
  nowCopy = now;
  extensionCopy = extension;
  v10 = [v7 numberWithInteger:strategy];
  v15[1] = @"extension";
  v16[0] = v10;
  v16[1] = extensionCopy;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v12 = [PBFDataRefreshContext alloc];
  v13 = [(PBFDataRefreshContext *)v12 initWithComponent:@"PBFDataComponentSnapshots" now:nowCopy lastRefreshDate:0 userInfo:v11];

  return v13;
}

+ (id)staticDescriptorsRefreshContextForNow:(id)now extension:(id)extension
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = @"extension";
  v13[0] = extension;
  v5 = MEMORY[0x277CBEAC0];
  extensionCopy = extension;
  nowCopy = now;
  v8 = [v5 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [PBFDataRefreshContext alloc];

  v10 = [(PBFDataRefreshContext *)v9 initWithComponent:@"PBFDataComponentStaticDescriptors" now:nowCopy lastRefreshDate:0 userInfo:v8];

  return v10;
}

- (PBFDataRefreshContext)initWithComponent:(id)component now:(id)now lastRefreshDate:(id)date userInfo:(id)info
{
  componentCopy = component;
  nowCopy = now;
  dateCopy = date;
  infoCopy = info;
  v25.receiver = self;
  v25.super_class = PBFDataRefreshContext;
  v15 = [(PBFDataRefreshContext *)&v25 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_component, component);
    v17 = [nowCopy copy];
    now = v16->_now;
    v16->_now = v17;

    v19 = [dateCopy copy];
    lastRefreshDate = v16->_lastRefreshDate;
    v16->_lastRefreshDate = v19;

    v21 = [infoCopy copy];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = MEMORY[0x277CBEC10];
    }

    objc_storeStrong(&v16->_userInfo, v23);
  }

  return v16;
}

@end