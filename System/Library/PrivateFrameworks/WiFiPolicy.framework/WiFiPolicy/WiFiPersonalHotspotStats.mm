@interface WiFiPersonalHotspotStats
+ (id)sharedInstance;
- (WiFiPersonalHotspotStats)init;
- (void)__resetWiFiPersonalHotspotStats;
- (void)__submitWiFiPersonalHotspotStats:(double)stats end:(double)end latencyType:(id)type;
- (void)setJoinEndedEvent:(double)event successfulJoinAttempt:(BOOL)attempt joinFailureCode:(int64_t)code failureReporter:(id)reporter band:(int64_t)band deviceName:(id)name;
- (void)setJoinStartedEvent:(double)event withReason:(unint64_t)reason deviceName:(id)name;
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

- (void)setJoinStartedEvent:(double)event withReason:(unint64_t)reason deviceName:(id)name
{
  nameCopy = name;
  [(WiFiPersonalHotspotStats *)self __resetWiFiPersonalHotspotStats];
  self->_joinStartedAt = event;
  v9 = [WiFiUsageSession joinReasonString:reason];
  joinReason = self->_joinReason;
  self->_joinReason = v9;

  deviceName = self->_deviceName;
  self->_deviceName = nameCopy;
}

- (void)setJoinEndedEvent:(double)event successfulJoinAttempt:(BOOL)attempt joinFailureCode:(int64_t)code failureReporter:(id)reporter band:(int64_t)band deviceName:(id)name
{
  reporterCopy = reporter;
  nameCopy = name;
  if (![(NSString *)self->_joinReason isEqualToString:@"Auto"]&& ![(NSString *)self->_joinReason isEqualToString:@"AskToJoin"]&& self->_joinStartedAt != 0.0 && self->_latency == 0.0 && [(NSString *)self->_deviceName isEqualToString:nameCopy])
  {
    self->_joinEndedAt = event;
    self->_successfulJoinAttempt = attempt;
    self->_joinFailureCode = code;
    objc_storeStrong(&self->_failureReporter, reporter);
    self->_band = band;
    personalHotspotDiscoveryEndedAt = self->_personalHotspotDiscoveryEndedAt;
    self->_latency = self->_joinEndedAt - self->_joinStartedAt;
    [WiFiPersonalHotspotStats __submitWiFiPersonalHotspotStats:"__submitWiFiPersonalHotspotStats:end:latencyType:" end:@"PH Enablement" latencyType:?];
    [(WiFiPersonalHotspotStats *)self __submitWiFiPersonalHotspotStats:@"WiFi" end:self->_personalHotspotDiscoveryEndedAt latencyType:self->_joinEndedAt];
    [(WiFiPersonalHotspotStats *)self __submitWiFiPersonalHotspotStats:@"Total" end:self->_joinStartedAt latencyType:self->_joinEndedAt];
  }
}

- (void)__submitWiFiPersonalHotspotStats:(double)stats end:(double)end latencyType:(id)type
{
  typeCopy = type;
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (stats != 0.0 && end != 0.0)
  {
    stats = [MEMORY[0x277CCABB0] numberWithDouble:end - stats];
    [v9 setObject:stats forKeyedSubscript:@"latency"];
  }

  if (typeCopy)
  {
    [v9 setObject:typeCopy forKeyedSubscript:@"latencyType"];
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