@interface TSDgPTPFDEtEPort
- (id)_statistics;
- (void)updateProperties;
@end

@implementation TSDgPTPFDEtEPort

- (void)updateProperties
{
  v8.receiver = self;
  v8.super_class = TSDgPTPFDEtEPort;
  [(TSDgPTPNetworkPort *)&v8 updateProperties];
  v3 = [(TSDgPTPFDEtEPort *)self _statistics];
  v4 = [(TSDgPTPPort *)self propertyUpdateQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000130F0;
  v6[3] = &unk_10004C808;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

- (id)_statistics
{
  v2 = [[TSDgPTPPortStatistics alloc] initWithPort:self];

  return v2;
}

@end