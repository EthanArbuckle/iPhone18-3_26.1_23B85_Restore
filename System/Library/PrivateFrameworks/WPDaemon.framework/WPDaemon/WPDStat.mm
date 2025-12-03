@interface WPDStat
- (WPDStat)init;
- (void)calculateTimeUpdate;
- (void)startTime;
- (void)stopTime;
@end

@implementation WPDStat

- (void)stopTime
{
  lastTime = [(WPDStat *)self lastTime];

  if (lastTime)
  {
    date = [MEMORY[0x277CBEAA8] date];
    lastTime2 = [(WPDStat *)self lastTime];
    [date timeIntervalSinceDate:lastTime2];
    v6 = v5;
    [(WPDStat *)self currentTime];
    [(WPDStat *)self setCurrentTime:v6 + v7];

    [(WPDStat *)self setLastTime:0];
  }
}

- (void)startTime
{
  lastTime = [(WPDStat *)self lastTime];

  if (!lastTime)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(WPDStat *)self setLastTime:date];
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
  lastTime = [(WPDStat *)self lastTime];

  if (lastTime)
  {
    date = [MEMORY[0x277CBEAA8] date];
    lastTime2 = [(WPDStat *)self lastTime];
    [date timeIntervalSinceDate:lastTime2];
    v6 = v5;
    [(WPDStat *)self currentTime];
    [(WPDStat *)self setCurrentTime:v6 + v7];

    date2 = [MEMORY[0x277CBEAA8] date];
    [(WPDStat *)self setLastTime:date2];
  }
}

@end