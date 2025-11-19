@interface WiFiPersonalHotspotStats
+ (id)sharedInstance;
- (WiFiPersonalHotspotStats)init;
- (void)__resetWiFiPersonalHotspotStats;
- (void)__submitWiFiPersonalHotspotStats:(double)a3 end:(double)a4 latencyType:(id)a5;
- (void)setJoinEndedEvent:(double)a3 successfulJoinAttempt:(BOOL)a4 joinFailureCode:(int64_t)a5 failureReporter:(id)a6 band:(int64_t)a7 deviceName:(id)a8;
- (void)setJoinStartedEvent:(double)a3 withReason:(unint64_t)a4 deviceName:(id)a5;
@end

@implementation WiFiPersonalHotspotStats

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[WiFiPersonalHotspotStats sharedInstance];
  }

  v3 = sharedInstance_sharedPersonalHotspotStats;

  return v3;
}

uint64_t __42__WiFiPersonalHotspotStats_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(WiFiPersonalHotspotStats);
  v1 = sharedInstance_sharedPersonalHotspotStats;
  sharedInstance_sharedPersonalHotspotStats = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (WiFiPersonalHotspotStats)init
{
  v5.receiver = self;
  v5.super_class = WiFiPersonalHotspotStats;
  v2 = [(WiFiPersonalHotspotStats *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(WiFiPersonalHotspotStats *)v2 __resetWiFiPersonalHotspotStats];
  }

  return v3;
}

- (void)__resetWiFiPersonalHotspotStats
{
  self->_successfulJoinAttempt = 0;
  *&self->_joinStartedAt = 0u;
  *&self->_joinEndedAt = 0u;
  joinReason = self->_joinReason;
  self->_joinReason = 0;

  failureReporter = self->_failureReporter;
  self->_failureReporter = 0;

  self->_joinFailureCode = 0;
  deviceName = self->_deviceName;
  self->_deviceName = 0;

  self->_band = 0;
}

- (void)setJoinStartedEvent:(double)a3 withReason:(unint64_t)a4 deviceName:(id)a5
{
  v8 = a5;
  [(WiFiPersonalHotspotStats *)self __resetWiFiPersonalHotspotStats];
  self->_joinStartedAt = a3;
  v9 = [WiFiUsageSession joinReasonString:a4];
  joinReason = self->_joinReason;
  self->_joinReason = v9;

  deviceName = self->_deviceName;
  self->_deviceName = v8;
}

- (void)setJoinEndedEvent:(double)a3 successfulJoinAttempt:(BOOL)a4 joinFailureCode:(int64_t)a5 failureReporter:(id)a6 band:(int64_t)a7 deviceName:(id)a8
{
  v17 = a6;
  v15 = a8;
  if (![(NSString *)self->_joinReason isEqualToString:@"Auto"]&& ![(NSString *)self->_joinReason isEqualToString:@"AskToJoin"]&& self->_joinStartedAt != 0.0 && self->_latency == 0.0 && [(NSString *)self->_deviceName isEqualToString:v15])
  {
    self->_joinEndedAt = a3;
    self->_successfulJoinAttempt = a4;
    self->_joinFailureCode = a5;
    objc_storeStrong(&self->_failureReporter, a6);
    self->_band = a7;
    personalHotspotDiscoveryEndedAt = self->_personalHotspotDiscoveryEndedAt;
    self->_latency = self->_joinEndedAt - self->_joinStartedAt;
    [WiFiPersonalHotspotStats __submitWiFiPersonalHotspotStats:"__submitWiFiPersonalHotspotStats:end:latencyType:" end:@"PH Enablement" latencyType:?];
    [(WiFiPersonalHotspotStats *)self __submitWiFiPersonalHotspotStats:@"WiFi" end:self->_personalHotspotDiscoveryEndedAt latencyType:self->_joinEndedAt];
    [(WiFiPersonalHotspotStats *)self __submitWiFiPersonalHotspotStats:@"Total" end:self->_joinStartedAt latencyType:self->_joinEndedAt];
  }
}

- (void)__submitWiFiPersonalHotspotStats:(double)a3 end:(double)a4 latencyType:(id)a5
{
  v8 = a5;
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (a3 != 0.0 && a4 != 0.0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:a4 - a3];
    [v9 setObject:v10 forKeyedSubscript:@"latency"];
  }

  if (v8)
  {
    [v9 setObject:v8 forKeyedSubscript:@"latencyType"];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_successfulJoinAttempt];
  [v9 setObject:v11 forKeyedSubscript:@"successfulJoinAttempt"];

  joinReason = self->_joinReason;
  if (joinReason)
  {
    [v9 setObject:joinReason forKeyedSubscript:@"joinReason"];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:self->_band];
  [v9 setObject:v13 forKeyedSubscript:@"band"];

  failureReporter = self->_failureReporter;
  if (failureReporter)
  {
    [v9 setObject:failureReporter forKeyedSubscript:@"failureReporter"];
  }

  v15 = [MEMORY[0x277CCABB0] numberWithInteger:self->_joinFailureCode];
  [v9 setObject:v15 forKeyedSubscript:@"joinFailureCode"];

  v17 = v9;
  v16 = v9;
  AnalyticsSendEventLazy();
}

@end