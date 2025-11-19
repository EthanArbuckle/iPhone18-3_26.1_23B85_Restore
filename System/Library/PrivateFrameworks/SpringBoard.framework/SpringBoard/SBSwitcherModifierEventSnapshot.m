@interface SBSwitcherModifierEventSnapshot
- (SBSwitcherModifierEventSnapshot)initWithEvent:(id)a3;
@end

@implementation SBSwitcherModifierEventSnapshot

- (SBSwitcherModifierEventSnapshot)initWithEvent:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [SBSwitcherModifierEventSnapshot initWithEvent:];
  }

  v36.receiver = self;
  v36.super_class = SBSwitcherModifierEventSnapshot;
  v5 = [(SBSwitcherModifierEventSnapshot *)&v36 init];
  if (v5)
  {
    if ([v4 isTransitionEvent])
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = SBStringFromTransitionPhase([v4 phase]);
    }

    else
    {
      if (![v4 isGestureEvent])
      {
        if ([v4 type] == 15)
        {
          v27 = MEMORY[0x277CCACA8];
          eventName = [v4 reason];
          [v27 stringWithFormat:@"Timer: %@", eventName];
        }

        else
        {
          if ([v4 type] != 24)
          {
            v34 = NSStringFromSBSwitcherModifierEventType([v4 type]);
            eventName = v5->_eventName;
            v5->_eventName = v34;
            goto LABEL_9;
          }

          v28 = [v4 appLayout];
          v29 = [v28 itemForLayoutRole:1];
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
        v12 = [v4 description];
        eventDescription = v5->_eventDescription;
        v5->_eventDescription = v12;

        v14 = objc_opt_class();
        v15 = SBSafeCast(v14, v4);
        v16 = v15;
        if (v15)
        {
          v35 = v5->_eventDescription;
          v17 = [v15 fromAppLayout];
          v18 = [v16 toAppLayout];
          v19 = [v16 fromFloatingAppLayout];
          v20 = [v16 toFloatingAppLayout];
          v21 = [v16 fromShelf];
          v22 = [v16 toShelf];
          v23 = [v16 debugPredicateSummary];
          v24 = [(NSString *)v35 stringByAppendingFormat:@"\n\nfromAppLayout:\n%@\n\ntoAppLayout:\n%@\n\nfromFloatingAppLayout:\n%@\n\ntoFloatingAppLayout:\n%@\n\nfromShelf:\n%@\n\ntoShelf:\n%@\n\nPredicate Summary:\n%@", v17, v18, v19, v20, v21, v22, v23];
          v25 = v5->_eventDescription;
          v5->_eventDescription = v24;
        }

        goto LABEL_12;
      }

      v6 = MEMORY[0x277CCACA8];
      v7 = SBStringFromGesturePhase([v4 phase]);
    }

    eventName = v7;
    v9 = NSStringFromSBSwitcherModifierEventType([v4 type]);
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