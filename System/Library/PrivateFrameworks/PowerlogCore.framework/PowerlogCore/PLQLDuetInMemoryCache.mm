@interface PLQLDuetInMemoryCache
- (PLQLDuetInMemoryCache)init;
- (PLQLDuetInMemoryCache)initWithStartTime:(double)a3 withStartargs:(id)a4;
- (void)addDataWithCellIn:(double)a3 withCellOut:(double)a4 withWifiIn:(double)a5 withWifiOut:(double)a6;
- (void)addStartEvent:(double)a3 withArgs:(id)a4;
- (void)addStopEvent:(double)a3 withArgs:(id)a4;
- (void)clearStop;
- (void)updateDataStats:(id)a3;
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

- (PLQLDuetInMemoryCache)initWithStartTime:(double)a3 withStartargs:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PLQLDuetInMemoryCache;
  v8 = [(PLQLDuetInMemoryCache *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_startArgs, a4);
    stopArgs = v9->_stopArgs;
    v9->_stopArgs = 0;

    v9->_startTime = a3;
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

- (void)addDataWithCellIn:(double)a3 withCellOut:(double)a4 withWifiIn:(double)a5 withWifiOut:(double)a6
{
  [(PLQLDuetInMemoryCache *)self cellIn];
  [(PLQLDuetInMemoryCache *)self setCellIn:v11 + a3];
  [(PLQLDuetInMemoryCache *)self cellOut];
  [(PLQLDuetInMemoryCache *)self setCellOut:v12 + a4];
  [(PLQLDuetInMemoryCache *)self wifiIn];
  [(PLQLDuetInMemoryCache *)self setWifiIn:v13 + a5];
  [(PLQLDuetInMemoryCache *)self wifiOut];
  v15 = v14 + a6;

  [(PLQLDuetInMemoryCache *)self setWifiOut:v15];
}

- (void)addStartEvent:(double)a3 withArgs:(id)a4
{
  v6 = a4;
  [(PLQLDuetInMemoryCache *)self setStartTime:a3];
  [(PLQLDuetInMemoryCache *)self setStartArgs:v6];
  [(PLQLDuetInMemoryCache *)self updateDataStats:v6];
}

- (void)addStopEvent:(double)a3 withArgs:(id)a4
{
  v6 = a4;
  [(PLQLDuetInMemoryCache *)self setStopTime:a3];
  [(PLQLDuetInMemoryCache *)self setStopArgs:v6];
  [(PLQLDuetInMemoryCache *)self updateDataStats:v6];
}

- (void)updateDataStats:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"cellin"];
  [v5 floatValue];
  v7 = v6;
  [(PLQLDuetInMemoryCache *)self cellIn];
  [(PLQLDuetInMemoryCache *)self setCellIn:v8 + v7];

  v9 = [v4 objectForKeyedSubscript:@"cellout"];
  [v9 floatValue];
  v11 = v10;
  [(PLQLDuetInMemoryCache *)self cellOut];
  [(PLQLDuetInMemoryCache *)self setCellOut:v12 + v11];

  v13 = [v4 objectForKeyedSubscript:@"wifiin"];
  [v13 floatValue];
  v15 = v14;
  [(PLQLDuetInMemoryCache *)self wifiIn];
  [(PLQLDuetInMemoryCache *)self setWifiIn:v16 + v15];

  v20 = [v4 objectForKeyedSubscript:@"wifiout"];

  [v20 floatValue];
  v18 = v17;
  [(PLQLDuetInMemoryCache *)self wifiOut];
  [(PLQLDuetInMemoryCache *)self setWifiOut:v19 + v18];
}

@end