@interface WiFi3BarsTileFetcher
- (WiFi3BarsTileFetcher)initWithDataSourceMediator:(id)mediator;
- (void)_handleLocationManagerVisitCallbackWithVisit:(id)visit;
- (void)dealloc;
@end

@implementation WiFi3BarsTileFetcher

- (WiFi3BarsTileFetcher)initWithDataSourceMediator:(id)mediator
{
  mediatorCopy = mediator;
  v13.receiver = self;
  v13.super_class = WiFi3BarsTileFetcher;
  v5 = [(WiFi3BarsTileFetcher *)&v13 init];
  dataSourceMediator = v5->_dataSourceMediator;
  v5->_dataSourceMediator = mediatorCopy;
  v7 = mediatorCopy;

  v8 = +[WiFiLocationManager sharedWiFiLocationManager];
  [v8 setShouldMonitorVisits:1];

  v9 = +[WiFiLocationManager sharedWiFiLocationManager];
  [v9 registerVisitCallbackFunctionPtr:__WiFiManagerLocationManagerVisitCallback withContext:v5];

  v10 = [[WiFi3BarsTileCacheObserver alloc] initWithDataSourceMediator:v7];
  tileCacheObserver = v5->_tileCacheObserver;
  v5->_tileCacheObserver = v10;

  return v5;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connectionToService invalidate];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = WiFi3BarsTileFetcher;
  [(WiFi3BarsTileFetcher *)&v4 dealloc];
}

- (void)_handleLocationManagerVisitCallbackWithVisit:(id)visit
{
  visitCopy = visit;
  v4 = objc_autoreleasePoolPush();
  departureDate = [visitCopy departureDate];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];

  if (departureDate == distantFuture)
  {
    [visitCopy horizontalAccuracy];
    if (v7 <= 2000.0)
    {
      v9 = [TBGloriaTile alloc];
      [visitCopy coordinate];
      v11 = v10;
      [visitCopy coordinate];
      v13 = [(TBGloriaTile *)v9 initWithLat:+[TBGloriaTile lng:"defaultZoomLevel"]zoom:v11, v12];
      if ([(TBGloriaTile *)v13 key])
      {
        v14 = [(TBGloriaTile *)v13 key];
        NSLog(&cfstr_SFetchingNetwo.isa, "[WiFi3BarsTileFetcher _handleLocationManagerVisitCallbackWithVisit:]", v14, +[TBGloriaTile defaultZoomLevel]);
        NSLog(&cfstr_SLastFetchedTi.isa, "[WiFi3BarsTileFetcher _handleLocationManagerVisitCallbackWithVisit:]", self->_lastFetchedKey, v14);
        date = [MEMORY[0x277CBEAA8] date];
        v16 = [date dateByAddingDays:-7];

        v17 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.wifi.ThreeBarsXPCService"];
        connectionToService = self->_connectionToService;
        self->_connectionToService = v17;

        if (self->_connectionToService)
        {
          v19 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2848EA258];
          [(NSXPCConnection *)self->_connectionToService setRemoteObjectInterface:v19];

          [(NSXPCConnection *)self->_connectionToService resume];
          v20 = [(NSXPCConnection *)self->_connectionToService synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_0];
          if (v20)
          {
            [v20 fetchTileFromVisitedCallback:-[TBGloriaTile key](v13 cacheAge:{"key"), v16}];
          }

          else
          {
            NSLog(&cfstr_SProxyIsNull.isa, "[WiFi3BarsTileFetcher _handleLocationManagerVisitCallbackWithVisit:]");
          }
        }

        else
        {
          NSLog(&cfstr_SConnectiontos.isa, "[WiFi3BarsTileFetcher _handleLocationManagerVisitCallbackWithVisit:]");
        }
      }

      else
      {
        NSLog(&cfstr_SInvalidTileke.isa, "[WiFi3BarsTileFetcher _handleLocationManagerVisitCallbackWithVisit:]", +[TBGloriaTile defaultZoomLevel]);
      }
    }

    else
    {
      [visitCopy horizontalAccuracy];
      NSLog(&cfstr_SVisitAccuracy.isa, "[WiFi3BarsTileFetcher _handleLocationManagerVisitCallbackWithVisit:]", v8);
    }
  }

  else
  {
    NSLog(&cfstr_SVisitIsADepar.isa, "[WiFi3BarsTileFetcher _handleLocationManagerVisitCallbackWithVisit:]");
  }

  objc_autoreleasePoolPop(v4);
}

@end