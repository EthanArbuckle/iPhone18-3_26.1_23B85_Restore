@interface SafetyMonitorManager
- (void)dealloc;
- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result;
@end

@implementation SafetyMonitorManager

- (void)dealloc
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC9WorkoutUI20SafetyMonitorManager_manager);
  aBlock[4] = closure #1 in SafetyMonitorManager.deinit;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_53;
  v4 = _Block_copy(aBlock);
  selfCopy = self;
  v6 = v3;
  [v6 stopMonitoringSessionStateWithHandler_];
  _Block_release(v4);

  v7.receiver = selfCopy;
  v7.super_class = type metadata accessor for SafetyMonitorManager();
  [(SafetyMonitorManager *)&v7 dealloc];
}

- (void)messageComposeViewController:(id)controller didFinishWithResult:(int64_t)result
{
  controllerCopy = controller;
  selfCopy = self;
  SafetyMonitorManager.messageComposeViewController(_:didFinishWith:)(controllerCopy, result);
}

@end