@interface MDDeviceIsMutedHeuristic
- (MDDeviceIsMutedHeuristic)init;
- (MDDeviceIsMutedHeuristic)initWithRingerStateObserver:(id)a3;
- (id)determineCurrentMode;
@end

@implementation MDDeviceIsMutedHeuristic

- (MDDeviceIsMutedHeuristic)init
{
  v3 = dispatch_queue_create("com.apple.siri.mode.MDDeviceIsMutedHeuristic", 0);
  v4 = [objc_alloc(MEMORY[0x277CEF338]) initWithName:@"com.apple.springboard.ringerstate" options:1 queue:v3 delegate:0];
  v5 = [(MDDeviceIsMutedHeuristic *)self initWithRingerStateObserver:v4];

  return v5;
}

- (MDDeviceIsMutedHeuristic)initWithRingerStateObserver:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = MDDeviceIsMutedHeuristic;
  v6 = [(MDDeviceIsMutedHeuristic *)&v10 init];
  if (v6)
  {
    v7 = [[MDModeDecision alloc] initWithMode:2];
    displayOnlyModeDecision = v6->_displayOnlyModeDecision;
    v6->_displayOnlyModeDecision = v7;

    objc_storeStrong(&v6->_ringerStateObserver, a3);
  }

  return v6;
}

- (id)determineCurrentMode
{
  if ([(MDDeviceIsMutedHeuristic *)self isDeviceSilentMode])
  {
    v3 = self->_displayOnlyModeDecision;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end