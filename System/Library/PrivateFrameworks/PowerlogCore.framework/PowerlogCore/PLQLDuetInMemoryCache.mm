@interface PLQLDuetInMemoryCache
- (PLQLDuetInMemoryCache)init;
- (PLQLDuetInMemoryCache)initWithStartTime:(double)time withStartargs:(id)startargs;
- (void)addDataWithCellIn:(double)in withCellOut:(double)out withWifiIn:(double)wifiIn withWifiOut:(double)wifiOut;
- (void)addStartEvent:(double)event withArgs:(id)args;
- (void)addStopEvent:(double)event withArgs:(id)args;
- (void)clearStop;
- (void)updateDataStats:(id)stats;
@end

@implementation PLQLDuetInMemoryCache

- (PLQLDuetInMemoryCache)init
{
  v7.receiver = self;
  v7.super_class = PLQLDuetInMemoryCache;
  v2 = [(PLQLDuetInMemoryCache *)&v7 init];
  v3 = v2;
  if (v2)
  {
    startArgs = v2->_startArgs;
    v2->_startArgs = 0;

    stopArgs = v3->_stopArgs;
    v3->_stopArgs = 0;

    v3->_refCount = 0;
    *&v3->_startTime = 0u;
    *&v3->_cellIn = 0u;
    *&v3->_wifiIn = 0u;
  }

  return v3;
}

- (PLQLDuetInMemoryCache)initWithStartTime:(double)time withStartargs:(id)startargs
{
  startargsCopy = startargs;
  v12.receiver = self;
  v12.super_class = PLQLDuetInMemoryCache;
  v8 = [(PLQLDuetInMemoryCache *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_startArgs, startargs);
    stopArgs = v9->_stopArgs;
    v9->_stopArgs = 0;

    v9->_startTime = time;
    v9->_refCount = 0;
    *&v9->_stopTime = 0u;
    *&v9->_cellOut = 0u;
    v9->_wifiOut = 0.0;
  }

  return v9;
}

- (void)clearStop
{
  [(PLQLDuetInMemoryCache *)self setStopTime:0.0];

  [(PLQLDuetInMemoryCache *)self setStopArgs:0];
}

- (void)addDataWithCellIn:(double)in withCellOut:(double)out withWifiIn:(double)wifiIn withWifiOut:(double)wifiOut
{
  [(PLQLDuetInMemoryCache *)self cellIn];
  [(PLQLDuetInMemoryCache *)self setCellIn:v11 + in];
  [(PLQLDuetInMemoryCache *)self cellOut];
  [(PLQLDuetInMemoryCache *)self setCellOut:v12 + out];
  [(PLQLDuetInMemoryCache *)self wifiIn];
  [(PLQLDuetInMemoryCache *)self setWifiIn:v13 + wifiIn];
  [(PLQLDuetInMemoryCache *)self wifiOut];
  v15 = v14 + wifiOut;

  [(PLQLDuetInMemoryCache *)self setWifiOut:v15];
}

- (void)addStartEvent:(double)event withArgs:(id)args
{
  argsCopy = args;
  [(PLQLDuetInMemoryCache *)self setStartTime:event];
  [(PLQLDuetInMemoryCache *)self setStartArgs:argsCopy];
  [(PLQLDuetInMemoryCache *)self updateDataStats:argsCopy];
}

- (void)addStopEvent:(double)event withArgs:(id)args
{
  argsCopy = args;
  [(PLQLDuetInMemoryCache *)self setStopTime:event];
  [(PLQLDuetInMemoryCache *)self setStopArgs:argsCopy];
  [(PLQLDuetInMemoryCache *)self updateDataStats:argsCopy];
}

- (void)updateDataStats:(id)stats
{
  statsCopy = stats;
  v5 = [statsCopy objectForKeyedSubscript:@"cellin"];
  [v5 floatValue];
  v7 = v6;
  [(PLQLDuetInMemoryCache *)self cellIn];
  [(PLQLDuetInMemoryCache *)self setCellIn:v8 + v7];

  v9 = [statsCopy objectForKeyedSubscript:@"cellout"];
  [v9 floatValue];
  v11 = v10;
  [(PLQLDuetInMemoryCache *)self cellOut];
  [(PLQLDuetInMemoryCache *)self setCellOut:v12 + v11];

  v13 = [statsCopy objectForKeyedSubscript:@"wifiin"];
  [v13 floatValue];
  v15 = v14;
  [(PLQLDuetInMemoryCache *)self wifiIn];
  [(PLQLDuetInMemoryCache *)self setWifiIn:v16 + v15];

  v20 = [statsCopy objectForKeyedSubscript:@"wifiout"];

  [v20 floatValue];
  v18 = v17;
  [(PLQLDuetInMemoryCache *)self wifiOut];
  [(PLQLDuetInMemoryCache *)self setWifiOut:v19 + v18];
}

@end