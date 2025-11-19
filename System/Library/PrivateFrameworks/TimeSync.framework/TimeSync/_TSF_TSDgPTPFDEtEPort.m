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
  v3 = [(_TSF_TSDgPTPFDEtEPort *)self _statistics];
  v4 = [(_TSF_TSDgPTPPort *)self propertyUpdateQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41___TSF_TSDgPTPFDEtEPort_updateProperties__block_invoke;
  v6[3] = &unk_279DBD738;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

- (id)_statistics
{
  v2 = [[_TSF_TSDgPTPPortStatistics alloc] initWithPort:self];

  return v2;
}

@end