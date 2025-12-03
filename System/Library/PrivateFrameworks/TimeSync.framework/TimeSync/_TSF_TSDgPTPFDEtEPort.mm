@interface _TSF_TSDgPTPFDEtEPort
- (id)_statistics;
- (void)updateProperties;
@end

@implementation _TSF_TSDgPTPFDEtEPort

- (void)updateProperties
{
  v8.receiver = self;
  v8.super_class = _TSF_TSDgPTPFDEtEPort;
  [(_TSF_TSDgPTPNetworkPort *)&v8 updateProperties];
  _statistics = [(_TSF_TSDgPTPFDEtEPort *)self _statistics];
  propertyUpdateQueue = [(_TSF_TSDgPTPPort *)self propertyUpdateQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41___TSF_TSDgPTPFDEtEPort_updateProperties__block_invoke;
  v6[3] = &unk_279DBD738;
  v6[4] = self;
  v7 = _statistics;
  v5 = _statistics;
  dispatch_async(propertyUpdateQueue, v6);
}

- (id)_statistics
{
  v2 = [[_TSF_TSDgPTPPortStatistics alloc] initWithPort:self];

  return v2;
}

@end