@interface WFToggleAlarmContextualAction
- (BOOL)isEqual:(id)equal;
- (WFToggleAlarmContextualAction)initWithAlarmIdentifier:(id)identifier alarmName:(id)name alarmData:(id)data operation:(unint64_t)operation;
- (WFToggleAlarmContextualAction)initWithCoder:(id)coder;
- (id)_staticDisplayStringForDecoding;
- (id)displayStringFromOperation:(unint64_t)operation alarmName:(id)name;
- (id)settingBiomeStreamIdentifier;
- (id)uniqueIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFToggleAlarmContextualAction

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WFToggleAlarmContextualAction;
  coderCopy = coder;
  [(WFContextualAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_alarmIdentifier forKey:{@"alarmIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_alarmName forKey:@"alarmName"];
  [coderCopy encodeInteger:self->_operation forKey:@"operation"];
}

- (WFToggleAlarmContextualAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = WFToggleAlarmContextualAction;
  v5 = [(WFContextualAction *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alarmIdentifier"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alarmName"];
    v8 = [coderCopy decodeIntegerForKey:@"operation"];
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v11 = 0;
    }

    else
    {
      v10 = v8;
      objc_storeStrong(&v5->_alarmIdentifier, v6);
      objc_storeStrong(&v5->_alarmName, v7);
      v5->_operation = v10;
      v11 = v5;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v19.receiver = self;
  v19.super_class = WFToggleAlarmContextualAction;
  if ([(WFContextualAction *)&v19 isEqual:equalCopy])
  {
    v5 = equalCopy;
    if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(operation) = 0;
LABEL_22:

      goto LABEL_23;
    }

    alarmIdentifier = [v5 alarmIdentifier];
    alarmIdentifier2 = [(WFToggleAlarmContextualAction *)self alarmIdentifier];
    v8 = alarmIdentifier;
    v9 = alarmIdentifier2;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      LOBYTE(operation) = 0;
      v12 = v9;
      v13 = v8;
      if (!v8 || !v9)
      {
        goto LABEL_20;
      }

      v14 = [v8 isEqualToString:v9];

      if (!v14)
      {
        LOBYTE(operation) = 0;
LABEL_21:

        goto LABEL_22;
      }
    }

    alarmName = [v5 alarmName];
    alarmName2 = [(WFToggleAlarmContextualAction *)self alarmName];
    v13 = alarmName;
    v17 = alarmName2;
    v12 = v17;
    if (v13 == v17)
    {
    }

    else
    {
      if (!v13 || !v17)
      {

        LOBYTE(operation) = 0;
        goto LABEL_20;
      }

      LODWORD(operation) = [v13 isEqualToString:v17];

      if (!operation)
      {
        goto LABEL_20;
      }
    }

    operation = [v5 operation];
    LOBYTE(operation) = operation == [(WFToggleAlarmContextualAction *)self operation];
LABEL_20:

    goto LABEL_21;
  }

  LOBYTE(operation) = 0;
LABEL_23:

  return operation;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v12.receiver = self;
  v12.super_class = WFToggleAlarmContextualAction;
  v4 = [v3 combineInteger:{-[WFContextualAction hash](&v12, sel_hash)}];
  alarmIdentifier = [(WFToggleAlarmContextualAction *)self alarmIdentifier];
  v6 = [v3 combineContentsOfPropertyListObject:alarmIdentifier];

  alarmName = [(WFToggleAlarmContextualAction *)self alarmName];
  v8 = [v3 combineContentsOfPropertyListObject:alarmName];

  v9 = [v3 combineInteger:{-[WFToggleAlarmContextualAction operation](self, "operation")}];
  v10 = [v3 finalize];

  return v10;
}

- (id)uniqueIdentifier
{
  v11[3] = *MEMORY[0x1E69E9840];
  operation = [(WFToggleAlarmContextualAction *)self operation];
  if (operation > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E7B026E8[operation];
  }

  identifier = [(WFContextualAction *)self identifier];
  alarmIdentifier = [(WFToggleAlarmContextualAction *)self alarmIdentifier];
  v11[1] = alarmIdentifier;
  v11[2] = v4;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];

  v8 = [v7 componentsJoinedByString:@"."];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)settingBiomeStreamIdentifier
{
  if ([(WFToggleAlarmContextualAction *)self operation]== 2)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v2 = getBiomeLibrarySymbolLoc_ptr_20386;
    v14 = getBiomeLibrarySymbolLoc_ptr_20386;
    if (!getBiomeLibrarySymbolLoc_ptr_20386)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __getBiomeLibrarySymbolLoc_block_invoke_20387;
      v10[3] = &unk_1E7B02C60;
      v10[4] = &v11;
      __getBiomeLibrarySymbolLoc_block_invoke_20387(v10);
      v2 = v12[3];
    }

    _Block_object_dispose(&v11, 8);
    if (!v2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id<BMRootLibrary> WFBiomeLibrary(void)"];
      [currentHandler handleFailureInFunction:v9 file:@"WFToggleAlarmContextualAction.m" lineNumber:19 description:{@"%s", dlerror()}];

      __break(1u);
      return result;
    }

    v3 = v2();
    clock = [v3 Clock];
    alarm = [clock Alarm];
    identifier = [alarm identifier];
  }

  else
  {
    identifier = 0;
  }

  return identifier;
}

- (id)_staticDisplayStringForDecoding
{
  operation = [(WFToggleAlarmContextualAction *)self operation];
  alarmName = [(WFToggleAlarmContextualAction *)self alarmName];
  v5 = [(WFToggleAlarmContextualAction *)self displayStringFromOperation:operation alarmName:alarmName];

  return v5;
}

- (id)displayStringFromOperation:(unint64_t)operation alarmName:(id)name
{
  nameCopy = name;
  nameCopy = 0;
  if (operation > 1)
  {
    if (operation == 2)
    {
      v7 = MEMORY[0x1E696AEC0];
      v10 = @"%@ Alarm";
    }

    else
    {
      if (operation != 3)
      {
        goto LABEL_13;
      }

      v7 = MEMORY[0x1E696AEC0];
      v10 = @"Snooze";
    }

    v11 = WFLocalizedString(v10);
  }

  else
  {
    if (operation)
    {
      if (operation != 1)
      {
        goto LABEL_13;
      }

      v7 = MEMORY[0x1E696AEC0];
      v8 = @"Turn Off (Alarm)";
      v9 = @"Turn Off";
    }

    else
    {
      v7 = MEMORY[0x1E696AEC0];
      v8 = @"Turn On (Alarm)";
      v9 = @"Turn On %@";
    }

    v11 = WFLocalizedStringWithKey(v8, v9);
  }

  v12 = v11;
  nameCopy = [v7 stringWithFormat:v11, nameCopy];

LABEL_13:

  return nameCopy;
}

- (WFToggleAlarmContextualAction)initWithAlarmIdentifier:(id)identifier alarmName:(id)name alarmData:(id)data operation:(unint64_t)operation
{
  v40[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  nameCopy = name;
  dataCopy = data;
  if (identifierCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFToggleAlarmContextualAction.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"alarmIdentifier"}];

    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFToggleAlarmContextualAction.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"alarmName"}];

LABEL_3:
  selfCopy = self;
  v14 = [(WFToggleAlarmContextualAction *)self displayStringFromOperation:operation alarmName:nameCopy];
  v38 = dataCopy;
  v15 = [[WFContextualActionParameter alloc] initWithType:@"WFDictionaryContentItem" displayString:0 wfParameterKey:@"alarm" wfSerializedRepresentation:dataCopy];
  v16 = [[WFContextualActionParameter alloc] initWithType:@"WFStringContentItem" displayString:0 wfParameterKey:@"operation" wfSerializedRepresentation:@"toggle"];
  v36 = v15;
  v40[0] = v15;
  v40[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
  v18 = [v17 mutableCopy];

  operationCopy = operation;
  if (operation == 2)
  {
    v19 = [WFContextualActionParameter alloc];
    v20 = [(WFContextualActionParameter *)v19 initWithType:@"WFNumberContentItem" displayString:0 wfParameterKey:@"ShowWhenRun" wfSerializedRepresentation:MEMORY[0x1E695E110]];
    [v18 addObject:v20];
  }

  v39[0] = @"com.apple.mobiletimer-framework.MobileTimerIntents.MTToggleAlarmIntent";
  v39[1] = identifierCopy;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
  v22 = [v21 componentsJoinedByString:@"."];

  v23 = WFLocalizedString(@"Alarm");
  v24 = [WFContextualActionIcon iconWithApplicationBundleIdentifier:@"com.apple.mobiletimer"];
  v25 = [(WFContextualAction *)selfCopy initWithIdentifier:v22 wfActionIdentifier:@"com.apple.mobiletimer-framework.MobileTimerIntents.MTToggleAlarmIntent" associatedAppBundleIdentifier:@"com.apple.mobiletimer" parameters:v18 displayString:v14 title:v23 subtitle:v14 icon:v24];

  if (v25)
  {
    v25->_operation = operationCopy;
    v26 = [identifierCopy copy];
    alarmIdentifier = v25->_alarmIdentifier;
    v25->_alarmIdentifier = v26;

    v28 = [nameCopy copy];
    alarmName = v25->_alarmName;
    v25->_alarmName = v28;

    v30 = v25;
  }

  v31 = *MEMORY[0x1E69E9840];
  return v25;
}

@end