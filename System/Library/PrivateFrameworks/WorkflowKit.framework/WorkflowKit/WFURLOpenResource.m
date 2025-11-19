@interface WFURLOpenResource
- (WFURLOpenResource)initWithDefinition:(id)a3;
- (void)dealloc;
- (void)refreshAvailability;
@end

@implementation WFURLOpenResource

- (void)refreshAvailability
{
  v3 = +[(WFResource *)WFUserInteractionResource];
  -[WFResource updateAvailability:withError:](self, "updateAvailability:withError:", [v3 isAvailable], 0);
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = +[(WFResource *)WFUserInteractionResource];
  [v3 removeObserver:self name:@"WFResourceAvailabilityChangedNotification" object:v4];

  v5.receiver = self;
  v5.super_class = WFURLOpenResource;
  [(WFResource *)&v5 dealloc];
}

- (WFURLOpenResource)initWithDefinition:(id)a3
{
  v8.receiver = self;
  v8.super_class = WFURLOpenResource;
  v3 = [(WFResource *)&v8 initWithDefinition:a3];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    v5 = +[(WFResource *)WFUserInteractionResource];
    [v4 addObserver:v3 selector:sel_refreshAvailabilityWithNotification name:@"WFResourceAvailabilityChangedNotification" object:v5];

    v6 = v3;
  }

  return v3;
}

@end