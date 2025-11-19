@interface PBFDataRefreshContext
+ (id)dynamicDescriptorsRefreshContextForNow:(id)a3 extension:(id)a4 lastRefreshDate:(id)a5 refreshStrategy:(int64_t)a6;
+ (id)snapshotRefreshContextForExtension:(id)a3 now:(id)a4 refreshStrategy:(int64_t)a5;
+ (id)staticDescriptorsRefreshContextForNow:(id)a3 extension:(id)a4;
- (PBFDataRefreshContext)initWithComponent:(id)a3 now:(id)a4 lastRefreshDate:(id)a5 userInfo:(id)a6;
@end

@implementation PBFDataRefreshContext

+ (id)dynamicDescriptorsRefreshContextForNow:(id)a3 extension:(id)a4 lastRefreshDate:(id)a5 refreshStrategy:(int64_t)a6
{
  v19[2] = *MEMORY[0x277D85DE8];
  v18[0] = @"refreshStrategy";
  v9 = MEMORY[0x277CCABB0];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v9 numberWithInteger:a6];
  v18[1] = @"extension";
  v19[0] = v13;
  v19[1] = v11;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  v15 = [PBFDataRefreshContext alloc];
  v16 = [(PBFDataRefreshContext *)v15 initWithComponent:@"PBFDataComponentDynamicDescriptors" now:v12 lastRefreshDate:v10 userInfo:v14];

  return v16;
}

+ (id)snapshotRefreshContextForExtension:(id)a3 now:(id)a4 refreshStrategy:(int64_t)a5
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = @"refreshStrategy";
  v7 = MEMORY[0x277CCABB0];
  v8 = a4;
  v9 = a3;
  v10 = [v7 numberWithInteger:a5];
  v15[1] = @"extension";
  v16[0] = v10;
  v16[1] = v9;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v12 = [PBFDataRefreshContext alloc];
  v13 = [(PBFDataRefreshContext *)v12 initWithComponent:@"PBFDataComponentSnapshots" now:v8 lastRefreshDate:0 userInfo:v11];

  return v13;
}

+ (id)staticDescriptorsRefreshContextForNow:(id)a3 extension:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = @"extension";
  v13[0] = a4;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v9 = [PBFDataRefreshContext alloc];

  v10 = [(PBFDataRefreshContext *)v9 initWithComponent:@"PBFDataComponentStaticDescriptors" now:v7 lastRefreshDate:0 userInfo:v8];

  return v10;
}

- (PBFDataRefreshContext)initWithComponent:(id)a3 now:(id)a4 lastRefreshDate:(id)a5 userInfo:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v25.receiver = self;
  v25.super_class = PBFDataRefreshContext;
  v15 = [(PBFDataRefreshContext *)&v25 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_component, a3);
    v17 = [v12 copy];
    now = v16->_now;
    v16->_now = v17;

    v19 = [v13 copy];
    lastRefreshDate = v16->_lastRefreshDate;
    v16->_lastRefreshDate = v19;

    v21 = [v14 copy];
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