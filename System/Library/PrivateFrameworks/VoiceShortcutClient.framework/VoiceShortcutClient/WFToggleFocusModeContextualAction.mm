@interface WFToggleFocusModeContextualAction
+ (id)toggle:(id)toggle;
+ (id)turnOff:(id)off;
+ (id)turnOn:(id)on;
+ (id)turnOn:(id)on untilEventEnds:(id)ends;
- (BOOL)isEqual:(id)equal;
- (WFToggleFocusModeContextualAction)initWithCoder:(id)coder;
- (WFToggleFocusModeContextualAction)initWithFocusMode:(id)mode operation:(unint64_t)operation event:(id)event;
- (id)_staticDisplayStringForDecoding;
- (id)displayStringFromOperation:(unint64_t)operation isDND:(BOOL)d focusMode:(id)mode eventDescriptor:(id)descriptor;
- (id)settingBiomeStreamIdentifier;
- (id)spotlightItem;
- (id)uniqueIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFToggleFocusModeContextualAction

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = WFToggleFocusModeContextualAction;
  coderCopy = coder;
  [(WFContextualAction *)&v7 encodeWithCoder:coderCopy];
  v5 = [(WFToggleFocusModeContextualAction *)self focusMode:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"focusMode"];

  [coderCopy encodeInteger:-[WFToggleFocusModeContextualAction operation](self forKey:{"operation"), @"operation"}];
  eventDescriptor = [(WFToggleFocusModeContextualAction *)self eventDescriptor];
  [coderCopy encodeObject:eventDescriptor forKey:@"eventDescriptor"];
}

- (WFToggleFocusModeContextualAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = WFToggleFocusModeContextualAction;
  v5 = [(WFContextualAction *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"focusMode"];
    if (v6)
    {
      v7 = [coderCopy decodeIntegerForKey:@"operation"];
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventDescriptor"];
      v9 = v8;
      if (v7 != 1 || v8)
      {
        objc_storeStrong(&v5->_focusMode, v6);
        v5->_operation = v7;
        objc_storeStrong(&v5->_eventDescriptor, v9);
        v10 = v5;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)spotlightItem
{
  v10.receiver = self;
  v10.super_class = WFToggleFocusModeContextualAction;
  spotlightItem = [(WFContextualAction *)&v10 spotlightItem];
  attributeSet = [spotlightItem attributeSet];
  focusMode = [(WFToggleFocusModeContextualAction *)self focusMode];
  color = [focusMode color];
  hexValue = [color hexValue];
  v8 = WFSpotlightResultRunnableTintColorNameIdentifier();
  [attributeSet setValue:hexValue forCustomKey:v8];

  return spotlightItem;
}

- (id)settingBiomeStreamIdentifier
{
  if ([(WFToggleFocusModeContextualAction *)self operation]== 3)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v2 = getBiomeLibrarySymbolLoc_ptr;
    v14 = getBiomeLibrarySymbolLoc_ptr;
    if (!getBiomeLibrarySymbolLoc_ptr)
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __getBiomeLibrarySymbolLoc_block_invoke;
      v10[3] = &unk_1E7B02C60;
      v10[4] = &v11;
      __getBiomeLibrarySymbolLoc_block_invoke(v10);
      v2 = v12[3];
    }

    _Block_object_dispose(&v11, 8);
    if (!v2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id<BMRootLibrary> WFBiomeLibrary(void)"];
      [currentHandler handleFailureInFunction:v9 file:@"WFToggleFocusModeContextualAction.m" lineNumber:20 description:{@"%s", dlerror()}];

      __break(1u);
      return result;
    }

    v3 = v2();
    userFocus = [v3 UserFocus];
    computedMode = [userFocus ComputedMode];
    identifier = [computedMode identifier];
  }

  else
  {
    identifier = 0;
  }

  return identifier;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v19.receiver = self;
  v19.super_class = WFToggleFocusModeContextualAction;
  if ([(WFContextualAction *)&v19 isEqual:equalCopy])
  {
    v5 = equalCopy;
    if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v11) = 0;
LABEL_22:

      goto LABEL_23;
    }

    focusMode = [v5 focusMode];
    focusMode2 = [(WFToggleFocusModeContextualAction *)self focusMode];
    v8 = focusMode;
    v9 = focusMode2;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      LOBYTE(v11) = 0;
      v12 = v9;
      v13 = v8;
      if (!v8 || !v9)
      {
        goto LABEL_20;
      }

      v11 = [v8 isEqual:v9];

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    operation = [v5 operation];
    if (operation != [(WFToggleFocusModeContextualAction *)self operation])
    {
      LOBYTE(v11) = 0;
LABEL_21:

      goto LABEL_22;
    }

    eventDescriptor = [v5 eventDescriptor];
    eventDescriptor2 = [(WFToggleFocusModeContextualAction *)self eventDescriptor];
    v13 = eventDescriptor;
    v17 = eventDescriptor2;
    v12 = v17;
    if (v13 == v17)
    {
      LOBYTE(v11) = 1;
    }

    else
    {
      LOBYTE(v11) = 0;
      if (v13 && v17)
      {
        LOBYTE(v11) = [v13 isEqual:v17];
      }
    }

LABEL_20:
    goto LABEL_21;
  }

  LOBYTE(v11) = 0;
LABEL_23:

  return v11;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v12.receiver = self;
  v12.super_class = WFToggleFocusModeContextualAction;
  v4 = [v3 combineInteger:{-[WFContextualAction hash](&v12, sel_hash)}];
  focusMode = [(WFToggleFocusModeContextualAction *)self focusMode];
  v6 = [v3 combine:focusMode];

  v7 = [v3 combineInteger:{-[WFToggleFocusModeContextualAction operation](self, "operation")}];
  eventDescriptor = [(WFToggleFocusModeContextualAction *)self eventDescriptor];
  v9 = [v3 combine:eventDescriptor];

  v10 = [v3 finalize];
  return v10;
}

- (id)uniqueIdentifier
{
  v12[3] = *MEMORY[0x1E69E9840];
  operation = [(WFToggleFocusModeContextualAction *)self operation];
  if (operation > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E7B00328[operation];
  }

  identifier = [(WFContextualAction *)self identifier];
  focusMode = [(WFToggleFocusModeContextualAction *)self focusMode];
  identifier2 = [focusMode identifier];
  v12[1] = identifier2;
  v12[2] = v4;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];

  v9 = [v8 componentsJoinedByString:@"."];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_staticDisplayStringForDecoding
{
  focusMode = [(WFToggleFocusModeContextualAction *)self focusMode];
  identifier = [focusMode identifier];
  v5 = [identifier isEqualToString:@"com.apple.donotdisturb.mode.default"];

  operation = [(WFToggleFocusModeContextualAction *)self operation];
  focusMode2 = [(WFToggleFocusModeContextualAction *)self focusMode];
  eventDescriptor = [(WFToggleFocusModeContextualAction *)self eventDescriptor];
  v9 = [(WFToggleFocusModeContextualAction *)self displayStringFromOperation:operation isDND:v5 focusMode:focusMode2 eventDescriptor:eventDescriptor];

  return v9;
}

- (id)displayStringFromOperation:(unint64_t)operation isDND:(BOOL)d focusMode:(id)mode eventDescriptor:(id)descriptor
{
  dCopy = d;
  modeCopy = mode;
  descriptorCopy = descriptor;
  v11 = 0;
  if (operation > 1)
  {
    if (operation == 2)
    {
      v14 = MEMORY[0x1E696AEC0];
      if (dCopy)
      {
        v15 = @"Turn Off (Focus Mode)";
        v16 = @"Turn Off %@";
      }

      else
      {
        v15 = @"Turn Off (Focus Mode), with Focus appended";
        v16 = @"Turn Off %@ Focus";
      }
    }

    else
    {
      if (operation != 3)
      {
        goto LABEL_21;
      }

      if (dCopy)
      {
        v11 = WFLocalizedString(@"Do Not Disturb");
        goto LABEL_21;
      }

      v14 = MEMORY[0x1E696AEC0];
      v15 = @"Toggle (Focus Mode), with Focus appended";
      v16 = @"%@ Focus";
    }
  }

  else
  {
    if (operation)
    {
      if (operation != 1)
      {
        goto LABEL_21;
      }

      v12 = MEMORY[0x1E696AEC0];
      if (dCopy)
      {
        v13 = @"Turn On %1$@ Until %2$@ Ends";
      }

      else
      {
        v13 = @"Turn On %1$@ Focus Until %2$@ Ends";
      }

      v17 = WFLocalizedString(v13);
      name = [modeCopy name];
      title = [descriptorCopy title];
      v11 = [v12 stringWithFormat:v17, name, title];

      goto LABEL_20;
    }

    v14 = MEMORY[0x1E696AEC0];
    if (dCopy)
    {
      v15 = @"Turn On (Focus Mode)";
      v16 = @"Turn On %@";
    }

    else
    {
      v15 = @"Turn On (Focus Mode), with Focus appended";
      v16 = @"Turn On %@ Focus";
    }
  }

  v17 = WFLocalizedStringWithKey(v15, v16);
  name = [modeCopy name];
  v11 = [v14 stringWithFormat:v17, name];
LABEL_20:

LABEL_21:

  return v11;
}

- (WFToggleFocusModeContextualAction)initWithFocusMode:(id)mode operation:(unint64_t)operation event:(id)event
{
  v47[1] = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  eventCopy = event;
  eventCopy2 = event;
  if (!modeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFToggleFocusModeContextualAction.m" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"focusMode"}];
  }

  if (operation == 1 && !eventCopy2)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFToggleFocusModeContextualAction.m" lineNumber:134 description:{@"If the operation is turn on until event ends, we need an event"}];
  }

  identifier = [modeCopy identifier];
  v12 = [identifier isEqualToString:@"com.apple.donotdisturb.mode.default"];

  selfCopy = self;
  v13 = [(WFToggleFocusModeContextualAction *)self displayStringFromOperation:operation isDND:v12 focusMode:modeCopy eventDescriptor:eventCopy2];
  v14 = [WFContextualActionParameter alloc];
  v45[0] = @"Identifier";
  identifier2 = [modeCopy identifier];
  v45[1] = @"DisplayString";
  v46[0] = identifier2;
  name = [modeCopy name];
  v46[1] = name;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];
  v18 = [(WFContextualActionParameter *)v14 initWithType:@"WFDictionaryContentItem" displayString:0 wfParameterKey:@"FocusModes" wfSerializedRepresentation:v17];
  v47[0] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];

  if (operation > 1)
  {
    if (operation == 3)
    {
      v20 = [[WFContextualActionParameter alloc] initWithType:@"WFStringContentItem" displayString:0 wfParameterKey:@"AssertionType" wfSerializedRepresentation:@"Turned Off"];
      v42[0] = v20;
      v22 = [[WFContextualActionParameter alloc] initWithType:@"WFStringContentItem" displayString:0 wfParameterKey:@"Operation" wfSerializedRepresentation:@"Toggle"];
      v42[1] = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
      v29 = [v19 arrayByAddingObjectsFromArray:v23];
      goto LABEL_15;
    }

    if (operation != 2)
    {
      goto LABEL_16;
    }
  }

  else if (operation)
  {
    if (operation != 1)
    {
      goto LABEL_16;
    }

    v20 = [[WFContextualActionParameter alloc] initWithType:@"WFStringContentItem" displayString:0 wfParameterKey:@"AssertionType" wfSerializedRepresentation:@"Event Ends"];
    v43[0] = v20;
    v21 = [WFContextualActionParameter alloc];
    v22 = [(WFContextualActionParameter *)v21 initWithType:@"WFNumberContentItem" displayString:0 wfParameterKey:@"Enabled" wfSerializedRepresentation:MEMORY[0x1E695E118]];
    v43[1] = v22;
    v23 = [[WFContextualActionParameter alloc] initWithType:@"WFCalendarEventContentItem" displayString:0 wfParameterKey:@"Event" isActionInput:1];
    v43[2] = v23;
    v24 = MEMORY[0x1E695DEC8];
    v25 = v43;
    v26 = 3;
    goto LABEL_13;
  }

  v20 = [[WFContextualActionParameter alloc] initWithType:@"WFStringContentItem" displayString:0 wfParameterKey:@"AssertionType" wfSerializedRepresentation:@"Turned Off"];
  v44[0] = v20;
  v27 = [WFContextualActionParameter alloc];
  v22 = [MEMORY[0x1E696AD98] numberWithBool:operation == 0];
  v23 = [(WFContextualActionParameter *)v27 initWithType:@"WFNumberContentItem" displayString:0 wfParameterKey:@"Enabled" wfSerializedRepresentation:v22];
  v44[1] = v23;
  v24 = MEMORY[0x1E695DEC8];
  v25 = v44;
  v26 = 2;
LABEL_13:
  v28 = [v24 arrayWithObjects:v25 count:v26];
  v29 = [v19 arrayByAddingObjectsFromArray:v28];

  v19 = v28;
LABEL_15:

  v19 = v29;
LABEL_16:
  symbolName = [modeCopy symbolName];
  v31 = [WFContextualActionIcon iconWithSystemName:symbolName];

  v32 = WFLocalizedString(@"Focus Mode");
  v33 = [(WFContextualAction *)selfCopy initWithIdentifier:@"is.workflow.actions.dnd.set" wfActionIdentifier:@"is.workflow.actions.dnd.set" associatedAppBundleIdentifier:@"com.apple.Preferences" parameters:v19 displayString:v13 title:v32 subtitle:v13 icon:v31];

  if (v33)
  {
    objc_storeStrong(&v33->_focusMode, mode);
    v33->_operation = operation;
    objc_storeStrong(&v33->_eventDescriptor, eventCopy);
    v34 = v33;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v33;
}

+ (id)toggle:(id)toggle
{
  toggleCopy = toggle;
  v5 = [[self alloc] initWithFocusMode:toggleCopy operation:3 event:0];

  return v5;
}

+ (id)turnOff:(id)off
{
  offCopy = off;
  v5 = [[self alloc] initWithFocusMode:offCopy operation:2 event:0];

  return v5;
}

+ (id)turnOn:(id)on untilEventEnds:(id)ends
{
  onCopy = on;
  endsCopy = ends;
  if (!endsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFToggleFocusModeContextualAction.m" lineNumber:341 description:{@"Invalid parameter not satisfying: %@", @"eventDescriptor"}];
  }

  v9 = [[self alloc] initWithFocusMode:onCopy operation:1 event:endsCopy];

  return v9;
}

+ (id)turnOn:(id)on
{
  onCopy = on;
  v5 = [[self alloc] initWithFocusMode:onCopy operation:0 event:0];

  return v5;
}

@end