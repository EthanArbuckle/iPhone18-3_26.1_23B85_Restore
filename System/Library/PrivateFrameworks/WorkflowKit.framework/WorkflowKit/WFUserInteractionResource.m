@interface WFUserInteractionResource
- (WFUserInteractionResource)initWithDefinition:(id)a3;
- (void)dealloc;
- (void)refreshAvailability;
@end

@implementation WFUserInteractionResource

- (void)refreshAvailability
{
  v3 = [MEMORY[0x1E6996CA8] sharedContext];
  -[WFResource updateAvailability:withError:](self, "updateAvailability:withError:", [v3 applicationState] == 0, 0);
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E6996CA8] sharedContext];
  [v3 removeApplicationStateObserver:self forEvent:0];
  [v3 removeApplicationStateObserver:self forEvent:1];

  v4.receiver = self;
  v4.super_class = WFUserInteractionResource;
  [(WFResource *)&v4 dealloc];
}

- (WFUserInteractionResource)initWithDefinition:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFUserInteractionResource;
  v3 = [(WFResource *)&v7 initWithDefinition:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E6996CA8] sharedContext];
    [v4 addApplicationStateObserver:v3 forEvent:0];
    [v4 addApplicationStateObserver:v3 forEvent:1];
    v5 = v3;
  }

  return v3;
}

@end