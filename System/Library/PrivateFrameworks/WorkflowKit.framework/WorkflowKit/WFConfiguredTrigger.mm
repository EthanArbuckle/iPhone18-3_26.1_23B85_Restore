@interface WFConfiguredTrigger
- (BOOL)isEqual:(id)equal;
- (WFConfiguredTrigger)initWithCoder:(id)coder;
- (WFConfiguredTrigger)initWithIdentifier:(id)identifier workflowID:(id)d trigger:(id)trigger shouldPrompt:(BOOL)prompt shouldNotify:(BOOL)notify shouldRecur:(BOOL)recur potentialLoopDetected:(BOOL)detected enabled:(BOOL)self0 disablementReason:(id)self1 triggerSource:(int)self2 notificationLevel:(int)self3 editableShortcut:(BOOL)self4 selectedEntryMetadata:(id)self5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFConfiguredTrigger

- (unint64_t)hash
{
  v28.receiver = self;
  v28.super_class = WFConfiguredTrigger;
  v3 = [(WFConfiguredTrigger *)&v28 hash];
  workflowID = [(WFConfiguredTrigger *)self workflowID];
  v5 = [workflowID hash];
  trigger = [(WFConfiguredTrigger *)self trigger];
  serializedData = [trigger serializedData];
  v8 = v5 ^ [serializedData hash];
  selectedEntryMetadata = [(WFConfiguredTrigger *)self selectedEntryMetadata];
  v10 = v8 ^ [selectedEntryMetadata hash];
  identifier = [(WFConfiguredTrigger *)self identifier];
  v12 = v10 ^ [identifier hash] ^ v3;
  if ([(WFConfiguredTrigger *)self shouldPrompt])
  {
    v13 = 3203381950;
  }

  else
  {
    v13 = 3133065982;
  }

  isEnabled = [(WFConfiguredTrigger *)self isEnabled];
  v15 = 3405774846;
  if (isEnabled)
  {
    v15 = 3133079551;
  }

  v16 = v13 ^ v15;
  shouldNotify = [(WFConfiguredTrigger *)self shouldNotify];
  v18 = 3203332814;
  if (shouldNotify)
  {
    v18 = 4282069247;
  }

  v19 = v16 ^ v18;
  shouldRecur = [(WFConfiguredTrigger *)self shouldRecur];
  v21 = 3741249005;
  if (shouldRecur)
  {
    v21 = 3735928559;
  }

  v22 = v19 ^ v21;
  potentialLoopDetected = [(WFConfiguredTrigger *)self potentialLoopDetected];
  v24 = 3203391149;
  if (potentialLoopDetected)
  {
    v24 = 3405691582;
  }

  v25 = v12 ^ v22 ^ v24;
  if ([(WFConfiguredTrigger *)self editableShortcut])
  {
    v26 = 3131817919;
  }

  else
  {
    v26 = 3131817405;
  }

  return v25 ^ v26;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v17) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v32.receiver = self;
      v32.super_class = WFConfiguredTrigger;
      if (![(WFConfiguredTrigger *)&v32 isEqual:v5])
      {
        LOBYTE(v17) = 0;
LABEL_32:

        goto LABEL_33;
      }

      trigger = [(WFConfiguredTrigger *)v5 trigger];
      serializedData = [trigger serializedData];
      trigger2 = [(WFConfiguredTrigger *)self trigger];
      serializedData2 = [trigger2 serializedData];
      if (![serializedData isEqual:serializedData2])
      {
        LOBYTE(v17) = 0;
LABEL_31:

        goto LABEL_32;
      }

      selectedEntryMetadata = [(WFConfiguredTrigger *)v5 selectedEntryMetadata];
      selectedEntryMetadata2 = [(WFConfiguredTrigger *)self selectedEntryMetadata];
      if (![selectedEntryMetadata isEqual:selectedEntryMetadata2])
      {
        LOBYTE(v17) = 0;
LABEL_30:

        goto LABEL_31;
      }

      v30 = selectedEntryMetadata;
      v31 = selectedEntryMetadata2;
      workflowID = [(WFConfiguredTrigger *)self workflowID];
      workflowID2 = [(WFConfiguredTrigger *)v5 workflowID];
      disablementReason = workflowID;
      disablementReason2 = workflowID2;
      v16 = disablementReason2;
      v29 = disablementReason;
      if (disablementReason == disablementReason2)
      {
      }

      else
      {
        LOBYTE(v17) = 0;
        v28 = disablementReason2;
        if (!disablementReason)
        {
LABEL_21:
          v18 = disablementReason;
          goto LABEL_28;
        }

        v18 = disablementReason;
        if (!disablementReason2)
        {
LABEL_28:

          selectedEntryMetadata2 = v31;
          v16 = v28;
          goto LABEL_29;
        }

        v16 = disablementReason2;
        v17 = [disablementReason isEqualToString:disablementReason2];

        if (!v17)
        {
          selectedEntryMetadata2 = v31;
LABEL_29:

          selectedEntryMetadata = v30;
          goto LABEL_30;
        }
      }

      isEnabled = [(WFConfiguredTrigger *)self isEnabled];
      selectedEntryMetadata2 = v31;
      if (isEnabled != [(WFConfiguredTrigger *)v5 isEnabled])
      {
        LOBYTE(v17) = 0;
        goto LABEL_29;
      }

      disablementReason = [(WFConfiguredTrigger *)self disablementReason];
      disablementReason2 = [(WFConfiguredTrigger *)v5 disablementReason];
      v28 = v16;
      if (disablementReason == disablementReason2)
      {
        v27 = disablementReason2;
        shouldPrompt = [(WFConfiguredTrigger *)self shouldPrompt];
        if (shouldPrompt == [(WFConfiguredTrigger *)v5 shouldPrompt]&& (v21 = [(WFConfiguredTrigger *)self shouldNotify], v21 == [(WFConfiguredTrigger *)v5 shouldNotify]) && (v22 = [(WFConfiguredTrigger *)self shouldRecur], v22 == [(WFConfiguredTrigger *)v5 shouldRecur]) && (v23 = [(WFConfiguredTrigger *)self potentialLoopDetected], v23 == [(WFConfiguredTrigger *)v5 potentialLoopDetected]))
        {
          v18 = disablementReason;
          notificationLevel = [(WFConfiguredTrigger *)self notificationLevel];
          if (notificationLevel == [(WFConfiguredTrigger *)v5 notificationLevel])
          {
            editableShortcut = [(WFConfiguredTrigger *)self editableShortcut];
            v17 = editableShortcut ^ [(WFConfiguredTrigger *)v5 editableShortcut]^ 1;
          }

          else
          {
            LOBYTE(v17) = 0;
          }
        }

        else
        {
          LOBYTE(v17) = 0;
          v18 = disablementReason;
        }

        disablementReason2 = v27;
        goto LABEL_28;
      }

      LOBYTE(v17) = 0;
      goto LABEL_21;
    }

    LOBYTE(v17) = 0;
  }

LABEL_33:

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WFConfiguredTrigger;
  coderCopy = coder;
  [(WFConfiguredTrigger *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_workflowID forKey:{@"workflowID", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_trigger forKey:@"trigger"];
  [coderCopy encodeBool:self->_shouldPrompt forKey:@"shouldPrompt"];
  [coderCopy encodeBool:self->_enabled forKey:@"enabled"];
  [coderCopy encodeObject:self->_disablementReason forKey:@"disablementReason"];
  [coderCopy encodeInt:self->_source forKey:@"source"];
  [coderCopy encodeInt:self->_notificationLevel forKey:@"notificationLevel"];
  [coderCopy encodeBool:self->_shouldNotify forKey:@"shouldNotify"];
  [coderCopy encodeBool:self->_shouldRecur forKey:@"shouldRecur"];
  [coderCopy encodeBool:self->_potentialLoopDetected forKey:@"potentialLoopDetected"];
  [coderCopy encodeBool:self->_editableShortcut forKey:@"editableShortcut"];
  [coderCopy encodeObject:self->_selectedEntryMetadata forKey:@"selectedEntryMetadata"];
}

- (WFConfiguredTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = WFConfiguredTrigger;
  v5 = [(WFConfiguredTrigger *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"workflowID"];
    workflowID = v5->_workflowID;
    v5->_workflowID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trigger"];
    trigger = v5->_trigger;
    v5->_trigger = v8;

    v5->_shouldPrompt = [coderCopy decodeBoolForKey:@"shouldPrompt"];
    v5->_enabled = [coderCopy decodeBoolForKey:@"enabled"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"disablementReason"];
    disablementReason = v5->_disablementReason;
    v5->_disablementReason = v10;

    v5->_source = [coderCopy decodeIntForKey:@"source"];
    v5->_notificationLevel = [coderCopy decodeIntForKey:@"notificationLevel"];
    v5->_shouldNotify = [coderCopy decodeBoolForKey:@"shouldNotify"];
    v5->_shouldRecur = [coderCopy decodeBoolForKey:@"shouldRecur"];
    v5->_potentialLoopDetected = [coderCopy decodeBoolForKey:@"potentialLoopDetected"];
    v5->_editableShortcut = [coderCopy decodeBoolForKey:@"editableShortcut"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedEntryMetadata"];
    selectedEntryMetadata = v5->_selectedEntryMetadata;
    v5->_selectedEntryMetadata = v12;

    v14 = v5;
  }

  return v5;
}

- (WFConfiguredTrigger)initWithIdentifier:(id)identifier workflowID:(id)d trigger:(id)trigger shouldPrompt:(BOOL)prompt shouldNotify:(BOOL)notify shouldRecur:(BOOL)recur potentialLoopDetected:(BOOL)detected enabled:(BOOL)self0 disablementReason:(id)self1 triggerSource:(int)self2 notificationLevel:(int)self3 editableShortcut:(BOOL)self4 selectedEntryMetadata:(id)self5
{
  identifierCopy = identifier;
  dCopy = d;
  triggerCopy = trigger;
  reasonCopy = reason;
  metadataCopy = metadata;
  if (!triggerCopy)
  {
    goto LABEL_6;
  }

  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFConfiguredTrigger.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v32.receiver = self;
  v32.super_class = WFConfiguredTrigger;
  self = [(WFConfiguredTrigger *)&v32 initWithIdentifier:identifierCopy objectType:1];
  if (self)
  {
    v24 = [dCopy copy];
    workflowID = self->_workflowID;
    self->_workflowID = v24;

    objc_storeStrong(&self->_trigger, trigger);
    self->_shouldPrompt = prompt;
    self->_enabled = enabled;
    objc_storeStrong(&self->_disablementReason, reason);
    self->_source = source;
    self->_notificationLevel = level;
    self->_shouldNotify = notify;
    self->_shouldRecur = recur;
    self->_potentialLoopDetected = detected;
    self->_editableShortcut = shortcut;
    objc_storeStrong(&self->_selectedEntryMetadata, metadata);
    self = self;
    selfCopy = self;
  }

  else
  {
LABEL_6:
    selfCopy = 0;
  }

  return selfCopy;
}

@end