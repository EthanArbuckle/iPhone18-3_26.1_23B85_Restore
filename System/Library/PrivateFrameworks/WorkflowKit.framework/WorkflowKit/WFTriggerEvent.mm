@interface WFTriggerEvent
- (WFTriggerEvent)initWithIdentifier:(id)a3 triggerID:(id)a4 eventInfo:(id)a5 confirmed:(BOOL)a6 paused:(BOOL)a7 dateCreated:(id)a8;
@end

@implementation WFTriggerEvent

- (WFTriggerEvent)initWithIdentifier:(id)a3 triggerID:(id)a4 eventInfo:(id)a5 confirmed:(BOOL)a6 paused:(BOOL)a7 dateCreated:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  if (v15)
  {
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"WFTriggerEvent.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (v16)
    {
LABEL_3:
      if (v17)
      {
        goto LABEL_4;
      }

LABEL_10:
      v28 = [MEMORY[0x1E696AAA8] currentHandler];
      [v28 handleFailureInMethod:a2 object:self file:@"WFTriggerEvent.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"eventInfo"}];

      if (v18)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  v27 = [MEMORY[0x1E696AAA8] currentHandler];
  [v27 handleFailureInMethod:a2 object:self file:@"WFTriggerEvent.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"triggerID"}];

  if (!v17)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v18)
  {
    goto LABEL_5;
  }

LABEL_11:
  v29 = [MEMORY[0x1E696AAA8] currentHandler];
  [v29 handleFailureInMethod:a2 object:self file:@"WFTriggerEvent.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"date"}];

LABEL_5:
  v30.receiver = self;
  v30.super_class = WFTriggerEvent;
  v19 = [(WFTriggerEvent *)&v30 initWithIdentifier:v15 objectType:4];
  if (v19)
  {
    v20 = [v16 copy];
    triggerID = v19->_triggerID;
    v19->_triggerID = v20;

    v22 = [v17 copy];
    eventInfo = v19->_eventInfo;
    v19->_eventInfo = v22;

    objc_storeStrong(&v19->_dateCreated, a8);
    v19->_confirmed = a6;
    v19->_paused = a7;
    v24 = v19;
  }

  return v19;
}

@end