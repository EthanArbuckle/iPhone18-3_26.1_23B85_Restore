@interface AppHistoryScreener
+ (id)_sharedInstance;
+ (id)description;
- (AppHistoryScreener)init;
- (void)_makeLabelWith:(id)with inbound:(BOOL)inbound fullLabel:(id *)label exportLabel:(id *)exportLabel;
@end

@implementation AppHistoryScreener

+ (id)_sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__AppHistoryScreener__sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_sharedInstance_pred_1 != -1)
  {
    dispatch_once(&_sharedInstance_pred_1, block);
  }

  v2 = _sharedInstance_sharedInstance_1;

  return v2;
}

void __37__AppHistoryScreener__sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = _sharedInstance_sharedInstance_1;
  _sharedInstance_sharedInstance_1 = v1;

  [MEMORY[0x277D6B400] setLogHandle:nwPVarLogHandle];
  v3 = MEMORY[0x277D6B400];
  v4 = [NWPVarStoreImpoExpo alloc];
  v6 = [MEMORY[0x277D6B400] _serviceQueue];
  v5 = [(NWPVarStoreImpoExpo *)v4 initWithQueue:v6];
  [v3 setBackingStore:v5];
}

- (AppHistoryScreener)init
{
  v6.receiver = self;
  v6.super_class = AppHistoryScreener;
  v2 = [(AppHistoryScreener *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAB00] mapTableWithKeyOptions:0 valueOptions:5];
    episodes = v2->episodes;
    v2->episodes = v3;
  }

  return v2;
}

+ (id)description
{
  v2 = +[AppHistoryScreener _sharedInstance];
  v3 = [v2 description];

  return v3;
}

- (void)_makeLabelWith:(id)with inbound:(BOOL)inbound fullLabel:(id *)label exportLabel:(id *)exportLabel
{
  inboundCopy = inbound;
  withCopy = with;
  if ([NetworkAnalyticsEngine hasAnyNetworkAttachmenOnLOI:0])
  {
    v10 = @"Home";
  }

  else if ([NetworkAnalyticsEngine hasAnyNetworkAttachmenOnLOI:1])
  {
    v10 = @"Work";
  }

  else
  {
    v10 = @"Unknown";
  }

  v11 = objc_alloc(MEMORY[0x277CCACA8]);
  if (inboundCopy)
  {
    v12 = "DL";
  }

  else
  {
    v12 = "UL";
  }

  *label = [v11 initWithFormat:@"%s-%s-%@-%@", "AHSv5", v12, withCopy, v10];
  withCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%s-%s-%@", "AHSv5", v12, withCopy];

  v14 = withCopy;
  *exportLabel = withCopy;
}

@end