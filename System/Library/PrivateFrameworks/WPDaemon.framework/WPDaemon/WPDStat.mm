@interface WPDStat
- (WPDStat)init;
- (void)calculateTimeUpdate;
- (void)startTime;
- (void)stopTime;
@end

@implementation WPDStat

- (void)stopTime
{
  v3 = [(WPDStat *)self lastTime];

  if (v3)
  {
    v8 = [MEMORY[0x277CBEAA8] date];
    v4 = [(WPDStat *)self lastTime];
    [v8 timeIntervalSinceDate:v4];
    v6 = v5;
    [(WPDStat *)self currentTime];
    [(WPDStat *)self setCurrentTime:v6 + v7];

    [(WPDStat *)self setLastTime:0];
  }
}

- (void)startTime
{
  v3 = [(WPDStat *)self lastTime];

  if (!v3)
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    [(WPDStat *)self setLastTime:v4];
  }
}

- (WPDStat)init
{
  v5.receiver = self;
  v5.super_class = WPDStat;
  v2 = [(WPDStat *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(WPDStat *)v2 setCurrentTime:0.0];
    [(WPDStat *)v3 setLastTime:0];
  }

  return v3;
}

- (void)calculateTimeUpdate
{
  v3 = [(WPDStat *)self lastTime];

  if (v3)
  {
    v9 = [MEMORY[0x277CBEAA8] date];
    v4 = [(WPDStat *)self lastTime];
    [v9 timeIntervalSinceDate:v4];
    v6 = v5;
    [(WPDStat *)self currentTime];
    [(WPDStat *)self setCurrentTime:v6 + v7];

    v8 = [MEMORY[0x277CBEAA8] date];
    [(WPDStat *)self setLastTime:v8];
  }
}

@end