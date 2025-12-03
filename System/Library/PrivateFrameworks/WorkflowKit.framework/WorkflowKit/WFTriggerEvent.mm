@interface WFTriggerEvent
- (WFTriggerEvent)initWithIdentifier:(id)identifier triggerID:(id)d eventInfo:(id)info confirmed:(BOOL)confirmed paused:(BOOL)paused dateCreated:(id)created;
@end

@implementation WFTriggerEvent

- (WFTriggerEvent)initWithIdentifier:(id)identifier triggerID:(id)d eventInfo:(id)info confirmed:(BOOL)confirmed paused:(BOOL)paused dateCreated:(id)created
{
  identifierCopy = identifier;
  dCopy = d;
  infoCopy = info;
  createdCopy = created;
  if (identifierCopy)
  {
    if (dCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFTriggerEvent.m" lineNumber:17 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

    if (dCopy)
    {
LABEL_3:
      if (infoCopy)
      {
        goto LABEL_4;
      }

LABEL_10:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFTriggerEvent.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"eventInfo"}];

      if (createdCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFTriggerEvent.m" lineNumber:18 description:{@"Invalid parameter not satisfying: %@", @"triggerID"}];

  if (!infoCopy)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (createdCopy)
  {
    goto LABEL_5;
  }

LABEL_11:
  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"WFTriggerEvent.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"date"}];

LABEL_5:
  v30.receiver = self;
  v30.super_class = WFTriggerEvent;
  v19 = [(WFTriggerEvent *)&v30 initWithIdentifier:identifierCopy objectType:4];
  if (v19)
  {
    v20 = [dCopy copy];
    triggerID = v19->_triggerID;
    v19->_triggerID = v20;

    v22 = [infoCopy copy];
    eventInfo = v19->_eventInfo;
    v19->_eventInfo = v22;

    objc_storeStrong(&v19->_dateCreated, created);
    v19->_confirmed = confirmed;
    v19->_paused = paused;
    v24 = v19;
  }

  return v19;
}

@end