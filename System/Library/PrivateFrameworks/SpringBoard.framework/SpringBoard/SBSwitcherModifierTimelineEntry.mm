@interface SBSwitcherModifierTimelineEntry
- (SBSwitcherModifierTimelineEntry)initWithEventSnapshot:(id)snapshot responseSnapshot:(id)responseSnapshot stackSnapshotAfterEvent:(id)event;
@end

@implementation SBSwitcherModifierTimelineEntry

- (SBSwitcherModifierTimelineEntry)initWithEventSnapshot:(id)snapshot responseSnapshot:(id)responseSnapshot stackSnapshotAfterEvent:(id)event
{
  snapshotCopy = snapshot;
  responseSnapshotCopy = responseSnapshot;
  eventCopy = event;
  v12 = eventCopy;
  if (snapshotCopy)
  {
    if (eventCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBSwitcherModifierTimelineEntry initWithEventSnapshot:responseSnapshot:stackSnapshotAfterEvent:];
    if (v12)
    {
      goto LABEL_3;
    }
  }

  [SBSwitcherModifierTimelineEntry initWithEventSnapshot:responseSnapshot:stackSnapshotAfterEvent:];
LABEL_3:
  v16.receiver = self;
  v16.super_class = SBSwitcherModifierTimelineEntry;
  v13 = [(SBSwitcherModifierTimelineEntry *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_eventSnapshot, snapshot);
    objc_storeStrong(&v14->_responseSnapshot, responseSnapshot);
    objc_storeStrong(&v14->_stackSnapshotAfterEvent, event);
  }

  return v14;
}

- (void)initWithEventSnapshot:responseSnapshot:stackSnapshotAfterEvent:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"eventSnapshot" object:? file:? lineNumber:? description:?];
}

- (void)initWithEventSnapshot:responseSnapshot:stackSnapshotAfterEvent:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"stackSnapshotAfterEvent" object:? file:? lineNumber:? description:?];
}

@end