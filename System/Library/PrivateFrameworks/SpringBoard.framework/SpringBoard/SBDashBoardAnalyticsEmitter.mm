@interface SBDashBoardAnalyticsEmitter
- (BOOL)handleEvent:(id)event;
- (NSString)coverSheetIdentifier;
- (SBDashBoardAnalyticsEmitter)initWithCoverSheetViewController:(id)controller;
- (void)dealloc;
@end

@implementation SBDashBoardAnalyticsEmitter

- (SBDashBoardAnalyticsEmitter)initWithCoverSheetViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = SBDashBoardAnalyticsEmitter;
  v6 = [(SBDashBoardAnalyticsEmitter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coverSheetViewController, controller);
    [(CSCoverSheetViewController *)v7->_coverSheetViewController registerExternalEventHandler:v7];
  }

  return v7;
}

- (void)dealloc
{
  [(CSCoverSheetViewController *)self->_coverSheetViewController unregisterExternalEventHandler:self];
  v3.receiver = self;
  v3.super_class = SBDashBoardAnalyticsEmitter;
  [(SBDashBoardAnalyticsEmitter *)&v3 dealloc];
}

- (NSString)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (BOOL)handleEvent:(id)event
{
  v23[1] = *MEMORY[0x277D85DE8];
  type = [event type];
  v4 = type;
  if (type == 25)
  {
    v20 = *MEMORY[0x277D67618];
    v21 = MEMORY[0x277CBEC28];
    v5 = MEMORY[0x277CBEAC0];
    v6 = &v21;
    v7 = &v20;
  }

  else
  {
    if (type != 24)
    {
      goto LABEL_6;
    }

    v22 = *MEMORY[0x277D67618];
    v23[0] = MEMORY[0x277CBEC38];
    v5 = MEMORY[0x277CBEAC0];
    v6 = v23;
    v7 = &v22;
  }

  v8 = [v5 dictionaryWithObjects:v6 forKeys:v7 count:1];
  v9 = MEMORY[0x277D65DD0];
  v10 = v8;
  sharedInstance = [v9 sharedInstance];
  [sharedInstance emitEvent:36 withPayload:v10];

LABEL_6:
  if (CSEventShouldBeLogged())
  {
    v18 = *MEMORY[0x277D676E0];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
    v19 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v14 = MEMORY[0x277D65DD0];
    v15 = v13;
    sharedInstance2 = [v14 sharedInstance];
    [sharedInstance2 emitEvent:37 withPayload:v15];
  }

  return 0;
}

@end