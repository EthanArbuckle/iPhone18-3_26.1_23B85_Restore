@interface SBSwitcherModifierEventSnapshot
- (SBSwitcherModifierEventSnapshot)initWithEvent:(id)event;
@end

@implementation SBSwitcherModifierEventSnapshot

- (SBSwitcherModifierEventSnapshot)initWithEvent:(id)event
{
  eventCopy = event;
  if (!eventCopy)
  {
    [SBSwitcherModifierEventSnapshot initWithEvent:];
  }

  v36.receiver = self;
  v36.super_class = SBSwitcherModifierEventSnapshot;
  v5 = [(SBSwitcherModifierEventSnapshot *)&v36 init];
  if (v5)
  {
    if ([eventCopy isTransitionEvent])
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = SBStringFromTransitionPhase([eventCopy phase]);
    }

    else
    {
      if (![eventCopy isGestureEvent])
      {
        if ([eventCopy type] == 15)
        {
          v27 = MEMORY[0x277CCACA8];
          eventName = [eventCopy reason];
          [v27 stringWithFormat:@"Timer: %@", eventName];
        }

        else
        {
          if ([eventCopy type] != 24)
          {
            v34 = NSStringFromSBSwitcherModifierEventType([eventCopy type]);
            eventName = v5->_eventName;
            v5->_eventName = v34;
            goto LABEL_9;
          }

          appLayout = [eventCopy appLayout];
          v29 = [appLayout itemForLayoutRole:1];
          eventName = [v29 uniqueIdentifier];

          if ([eventName hasPrefix:@"sceneID:"])
          {
            v30 = [eventName substringFromIndex:8];

            eventName = v30;
          }

          if ([eventName hasPrefix:@"com.apple."])
          {
            v31 = [eventName substringFromIndex:10];

            eventName = v31;
          }

          [MEMORY[0x277CCACA8] stringWithFormat:@"SceneReady: %@", eventName];
        }
        v32 = ;
        v33 = v5->_eventName;
        v5->_eventName = v32;

LABEL_9:
        v12 = [eventCopy description];
        eventDescription = v5->_eventDescription;
        v5->_eventDescription = v12;

        v14 = objc_opt_class();
        v15 = SBSafeCast(v14, eventCopy);
        v16 = v15;
        if (v15)
        {
          v35 = v5->_eventDescription;
          fromAppLayout = [v15 fromAppLayout];
          toAppLayout = [v16 toAppLayout];
          fromFloatingAppLayout = [v16 fromFloatingAppLayout];
          toFloatingAppLayout = [v16 toFloatingAppLayout];
          fromShelf = [v16 fromShelf];
          toShelf = [v16 toShelf];
          debugPredicateSummary = [v16 debugPredicateSummary];
          v24 = [(NSString *)v35 stringByAppendingFormat:@"\n\nfromAppLayout:\n%@\n\ntoAppLayout:\n%@\n\nfromFloatingAppLayout:\n%@\n\ntoFloatingAppLayout:\n%@\n\nfromShelf:\n%@\n\ntoShelf:\n%@\n\nPredicate Summary:\n%@", fromAppLayout, toAppLayout, fromFloatingAppLayout, toFloatingAppLayout, fromShelf, toShelf, debugPredicateSummary];
          v25 = v5->_eventDescription;
          v5->_eventDescription = v24;
        }

        goto LABEL_12;
      }

      v6 = MEMORY[0x277CCACA8];
      v7 = SBStringFromGesturePhase([eventCopy phase]);
    }

    eventName = v7;
    v9 = NSStringFromSBSwitcherModifierEventType([eventCopy type]);
    v10 = [v6 stringWithFormat:@"%@ %@", eventName, v9];
    v11 = v5->_eventName;
    v5->_eventName = v10;

    goto LABEL_9;
  }

LABEL_12:

  return v5;
}

- (void)initWithEvent:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:@"event" object:? file:? lineNumber:? description:?];
}

@end