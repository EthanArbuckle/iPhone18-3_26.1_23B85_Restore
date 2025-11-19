@interface WFConfiguredTrigger
- (BOOL)isEqual:(id)a3;
- (WFConfiguredTrigger)initWithCoder:(id)a3;
- (WFConfiguredTrigger)initWithIdentifier:(id)a3 workflowID:(id)a4 trigger:(id)a5 shouldPrompt:(BOOL)a6 shouldNotify:(BOOL)a7 shouldRecur:(BOOL)a8 potentialLoopDetected:(BOOL)a9 enabled:(BOOL)a10 disablementReason:(id)a11 triggerSource:(int)a12 notificationLevel:(int)a13 editableShortcut:(BOOL)a14 selectedEntryMetadata:(id)a15;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFConfiguredTrigger

- (unint64_t)hash
{
  v28.receiver = self;
  v28.super_class = WFConfiguredTrigger;
  v3 = [(WFConfiguredTrigger *)&v28 hash];
  v4 = [(WFConfiguredTrigger *)self workflowID];
  v5 = [v4 hash];
  v6 = [(WFConfiguredTrigger *)self trigger];
  v7 = [v6 serializedData];
  v8 = v5 ^ [v7 hash];
  v9 = [(WFConfiguredTrigger *)self selectedEntryMetadata];
  v10 = v8 ^ [v9 hash];
  v11 = [(WFConfiguredTrigger *)self identifier];
  v12 = v10 ^ [v11 hash] ^ v3;
  if ([(WFConfiguredTrigger *)self shouldPrompt])
  {
    v13 = 3203381950;
  }

  else
  {
    v13 = 3133065982;
  }

  v14 = [(WFConfiguredTrigger *)self isEnabled];
  v15 = 3405774846;
  if (v14)
  {
    v15 = 3133079551;
  }

  v16 = v13 ^ v15;
  v17 = [(WFConfiguredTrigger *)self shouldNotify];
  v18 = 3203332814;
  if (v17)
  {
    v18 = 4282069247;
  }

  v19 = v16 ^ v18;
  v20 = [(WFConfiguredTrigger *)self shouldRecur];
  v21 = 3741249005;
  if (v20)
  {
    v21 = 3735928559;
  }

  v22 = v19 ^ v21;
  v23 = [(WFConfiguredTrigger *)self potentialLoopDetected];
  v24 = 3203391149;
  if (v23)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v17) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v32.receiver = self;
      v32.super_class = WFConfiguredTrigger;
      if (![(WFConfiguredTrigger *)&v32 isEqual:v5])
      {
        LOBYTE(v17) = 0;
LABEL_32:

        goto LABEL_33;
      }

      v6 = [(WFConfiguredTrigger *)v5 trigger];
      v7 = [v6 serializedData];
      v8 = [(WFConfiguredTrigger *)self trigger];
      v9 = [v8 serializedData];
      if (![v7 isEqual:v9])
      {
        LOBYTE(v17) = 0;
LABEL_31:

        goto LABEL_32;
      }

      v10 = [(WFConfiguredTrigger *)v5 selectedEntryMetadata];
      v11 = [(WFConfiguredTrigger *)self selectedEntryMetadata];
      if (![v10 isEqual:v11])
      {
        LOBYTE(v17) = 0;
LABEL_30:

        goto LABEL_31;
      }

      v30 = v10;
      v31 = v11;
      v12 = [(WFConfiguredTrigger *)self workflowID];
      v13 = [(WFConfiguredTrigger *)v5 workflowID];
      v14 = v12;
      v15 = v13;
      v16 = v15;
      v29 = v14;
      if (v14 == v15)
      {
      }

      else
      {
        LOBYTE(v17) = 0;
        v28 = v15;
        if (!v14)
        {
LABEL_21:
          v18 = v14;
          goto LABEL_28;
        }

        v18 = v14;
        if (!v15)
        {
LABEL_28:

          v11 = v31;
          v16 = v28;
          goto LABEL_29;
        }

        v16 = v15;
        v17 = [v14 isEqualToString:v15];

        if (!v17)
        {
          v11 = v31;
LABEL_29:

          v10 = v30;
          goto LABEL_30;
        }
      }

      v19 = [(WFConfiguredTrigger *)self isEnabled];
      v11 = v31;
      if (v19 != [(WFConfiguredTrigger *)v5 isEnabled])
      {
        LOBYTE(v17) = 0;
        goto LABEL_29;
      }

      v14 = [(WFConfiguredTrigger *)self disablementReason];
      v15 = [(WFConfiguredTrigger *)v5 disablementReason];
      v28 = v16;
      if (v14 == v15)
      {
        v27 = v15;
        v20 = [(WFConfiguredTrigger *)self shouldPrompt];
        if (v20 == [(WFConfiguredTrigger *)v5 shouldPrompt]&& (v21 = [(WFConfiguredTrigger *)self shouldNotify], v21 == [(WFConfiguredTrigger *)v5 shouldNotify]) && (v22 = [(WFConfiguredTrigger *)self shouldRecur], v22 == [(WFConfiguredTrigger *)v5 shouldRecur]) && (v23 = [(WFConfiguredTrigger *)self potentialLoopDetected], v23 == [(WFConfiguredTrigger *)v5 potentialLoopDetected]))
        {
          v18 = v14;
          v25 = [(WFConfiguredTrigger *)self notificationLevel];
          if (v25 == [(WFConfiguredTrigger *)v5 notificationLevel])
          {
            v26 = [(WFConfiguredTrigger *)self editableShortcut];
            v17 = v26 ^ [(WFConfiguredTrigger *)v5 editableShortcut]^ 1;
          }

          else
          {
            LOBYTE(v17) = 0;
          }
        }

        else
        {
          LOBYTE(v17) = 0;
          v18 = v14;
        }

        v15 = v27;
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

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFConfiguredTrigger;
  v4 = a3;
  [(WFConfiguredTrigger *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_workflowID forKey:{@"workflowID", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_trigger forKey:@"trigger"];
  [v4 encodeBool:self->_shouldPrompt forKey:@"shouldPrompt"];
  [v4 encodeBool:self->_enabled forKey:@"enabled"];
  [v4 encodeObject:self->_disablementReason forKey:@"disablementReason"];
  [v4 encodeInt:self->_source forKey:@"source"];
  [v4 encodeInt:self->_notificationLevel forKey:@"notificationLevel"];
  [v4 encodeBool:self->_shouldNotify forKey:@"shouldNotify"];
  [v4 encodeBool:self->_shouldRecur forKey:@"shouldRecur"];
  [v4 encodeBool:self->_potentialLoopDetected forKey:@"potentialLoopDetected"];
  [v4 encodeBool:self->_editableShortcut forKey:@"editableShortcut"];
  [v4 encodeObject:self->_selectedEntryMetadata forKey:@"selectedEntryMetadata"];
}

- (WFConfiguredTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = WFConfiguredTrigger;
  v5 = [(WFConfiguredTrigger *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"workflowID"];
    workflowID = v5->_workflowID;
    v5->_workflowID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"trigger"];
    trigger = v5->_trigger;
    v5->_trigger = v8;

    v5->_shouldPrompt = [v4 decodeBoolForKey:@"shouldPrompt"];
    v5->_enabled = [v4 decodeBoolForKey:@"enabled"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"disablementReason"];
    disablementReason = v5->_disablementReason;
    v5->_disablementReason = v10;

    v5->_source = [v4 decodeIntForKey:@"source"];
    v5->_notificationLevel = [v4 decodeIntForKey:@"notificationLevel"];
    v5->_shouldNotify = [v4 decodeBoolForKey:@"shouldNotify"];
    v5->_shouldRecur = [v4 decodeBoolForKey:@"shouldRecur"];
    v5->_potentialLoopDetected = [v4 decodeBoolForKey:@"potentialLoopDetected"];
    v5->_editableShortcut = [v4 decodeBoolForKey:@"editableShortcut"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selectedEntryMetadata"];
    selectedEntryMetadata = v5->_selectedEntryMetadata;
    v5->_selectedEntryMetadata = v12;

    v14 = v5;
  }

  return v5;
}

- (WFConfiguredTrigger)initWithIdentifier:(id)a3 workflowID:(id)a4 trigger:(id)a5 shouldPrompt:(BOOL)a6 shouldNotify:(BOOL)a7 shouldRecur:(BOOL)a8 potentialLoopDetected:(BOOL)a9 enabled:(BOOL)a10 disablementReason:(id)a11 triggerSource:(int)a12 notificationLevel:(int)a13 editableShortcut:(BOOL)a14 selectedEntryMetadata:(id)a15
{
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a11;
  v23 = a15;
  if (!v21)
  {
    goto LABEL_6;
  }

  if (!v19)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"WFConfiguredTrigger.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v32.receiver = self;
  v32.super_class = WFConfiguredTrigger;
  self = [(WFConfiguredTrigger *)&v32 initWithIdentifier:v19 objectType:1];
  if (self)
  {
    v24 = [v20 copy];
    workflowID = self->_workflowID;
    self->_workflowID = v24;

    objc_storeStrong(&self->_trigger, a5);
    self->_shouldPrompt = a6;
    self->_enabled = a10;
    objc_storeStrong(&self->_disablementReason, a11);
    self->_source = a12;
    self->_notificationLevel = a13;
    self->_shouldNotify = a7;
    self->_shouldRecur = a8;
    self->_potentialLoopDetected = a9;
    self->_editableShortcut = a14;
    objc_storeStrong(&self->_selectedEntryMetadata, a15);
    self = self;
    v26 = self;
  }

  else
  {
LABEL_6:
    v26 = 0;
  }

  return v26;
}

@end