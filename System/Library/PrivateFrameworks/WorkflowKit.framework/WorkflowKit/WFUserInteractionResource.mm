@interface WFUserInteractionResource
- (WFUserInteractionResource)initWithDefinition:(id)definition;
- (void)dealloc;
- (void)refreshAvailability;
@end

@implementation WFUserInteractionResource

- (void)refreshAvailability
{
  mEMORY[0x1E6996CA8] = [MEMORY[0x1E6996CA8] sharedContext];
  -[WFResource updateAvailability:withError:](self, "updateAvailability:withError:", [mEMORY[0x1E6996CA8] applicationState] == 0, 0);
}

- (void)dealloc
{
  mEMORY[0x1E6996CA8] = [MEMORY[0x1E6996CA8] sharedContext];
  [mEMORY[0x1E6996CA8] removeApplicationStateObserver:self forEvent:0];
  [mEMORY[0x1E6996CA8] removeApplicationStateObserver:self forEvent:1];

  v4.receiver = self;
  v4.super_class = WFUserInteractionResource;
  [(WFResource *)&v4 dealloc];
}

- (WFUserInteractionResource)initWithDefinition:(id)definition
{
  v7.receiver = self;
  v7.super_class = WFUserInteractionResource;
  v3 = [(WFResource *)&v7 initWithDefinition:definition];
  if (v3)
  {
    mEMORY[0x1E6996CA8] = [MEMORY[0x1E6996CA8] sharedContext];
    [mEMORY[0x1E6996CA8] addApplicationStateObserver:v3 forEvent:0];
    [mEMORY[0x1E6996CA8] addApplicationStateObserver:v3 forEvent:1];
    v5 = v3;
  }

  return v3;
}

@end