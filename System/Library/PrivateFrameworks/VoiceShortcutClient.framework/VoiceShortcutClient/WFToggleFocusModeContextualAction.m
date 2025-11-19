@interface WFToggleFocusModeContextualAction
+ (id)toggle:(id)a3;
+ (id)turnOff:(id)a3;
+ (id)turnOn:(id)a3;
+ (id)turnOn:(id)a3 untilEventEnds:(id)a4;
- (BOOL)isEqual:(id)a3;
- (WFToggleFocusModeContextualAction)initWithCoder:(id)a3;
- (WFToggleFocusModeContextualAction)initWithFocusMode:(id)a3 operation:(unint64_t)a4 event:(id)a5;
- (id)_staticDisplayStringForDecoding;
- (id)displayStringFromOperation:(unint64_t)a3 isDND:(BOOL)a4 focusMode:(id)a5 eventDescriptor:(id)a6;
- (id)settingBiomeStreamIdentifier;
- (id)spotlightItem;
- (id)uniqueIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFToggleFocusModeContextualAction

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFToggleFocusModeContextualAction;
  v4 = a3;
  [(WFContextualAction *)&v7 encodeWithCoder:v4];
  v5 = [(WFToggleFocusModeContextualAction *)self focusMode:v7.receiver];
  [v4 encodeObject:v5 forKey:@"focusMode"];

  [v4 encodeInteger:-[WFToggleFocusModeContextualAction operation](self forKey:{"operation"), @"operation"}];
  v6 = [(WFToggleFocusModeContextualAction *)self eventDescriptor];
  [v4 encodeObject:v6 forKey:@"eventDescriptor"];
}

- (WFToggleFocusModeContextualAction)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = WFToggleFocusModeContextualAction;
  v5 = [(WFContextualAction *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"focusMode"];
    if (v6)
    {
      v7 = [v4 decodeIntegerForKey:@"operation"];
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventDescriptor"];
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
  v3 = [(WFContextualAction *)&v10 spotlightItem];
  v4 = [v3 attributeSet];
  v5 = [(WFToggleFocusModeContextualAction *)self focusMode];
  v6 = [v5 color];
  v7 = [v6 hexValue];
  v8 = WFSpotlightResultRunnableTintColorNameIdentifier();
  [v4 setValue:v7 forCustomKey:v8];

  return v3;
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
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"id<BMRootLibrary> WFBiomeLibrary(void)"];
      [v8 handleFailureInFunction:v9 file:@"WFToggleFocusModeContextualAction.m" lineNumber:20 description:{@"%s", dlerror()}];

      __break(1u);
      return result;
    }

    v3 = v2();
    v4 = [v3 UserFocus];
    v5 = [v4 ComputedMode];
    v6 = [v5 identifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = WFToggleFocusModeContextualAction;
  if ([(WFContextualAction *)&v19 isEqual:v4])
  {
    v5 = v4;
    if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v11) = 0;
LABEL_22:

      goto LABEL_23;
    }

    v6 = [v5 focusMode];
    v7 = [(WFToggleFocusModeContextualAction *)self focusMode];
    v8 = v6;
    v9 = v7;
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

    v14 = [v5 operation];
    if (v14 != [(WFToggleFocusModeContextualAction *)self operation])
    {
      LOBYTE(v11) = 0;
LABEL_21:

      goto LABEL_22;
    }

    v15 = [v5 eventDescriptor];
    v16 = [(WFToggleFocusModeContextualAction *)self eventDescriptor];
    v13 = v15;
    v17 = v16;
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
  v5 = [(WFToggleFocusModeContextualAction *)self focusMode];
  v6 = [v3 combine:v5];

  v7 = [v3 combineInteger:{-[WFToggleFocusModeContextualAction operation](self, "operation")}];
  v8 = [(WFToggleFocusModeContextualAction *)self eventDescriptor];
  v9 = [v3 combine:v8];

  v10 = [v3 finalize];
  return v10;
}

- (id)uniqueIdentifier
{
  v12[3] = *MEMORY[0x1E69E9840];
  v3 = [(WFToggleFocusModeContextualAction *)self operation];
  if (v3 > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E7B00328[v3];
  }

  v5 = [(WFContextualAction *)self identifier];
  v6 = [(WFToggleFocusModeContextualAction *)self focusMode];
  v7 = [v6 identifier];
  v12[1] = v7;
  v12[2] = v4;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];

  v9 = [v8 componentsJoinedByString:@"."];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)_staticDisplayStringForDecoding
{
  v3 = [(WFToggleFocusModeContextualAction *)self focusMode];
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:@"com.apple.donotdisturb.mode.default"];

  v6 = [(WFToggleFocusModeContextualAction *)self operation];
  v7 = [(WFToggleFocusModeContextualAction *)self focusMode];
  v8 = [(WFToggleFocusModeContextualAction *)self eventDescriptor];
  v9 = [(WFToggleFocusModeContextualAction *)self displayStringFromOperation:v6 isDND:v5 focusMode:v7 eventDescriptor:v8];

  return v9;
}

- (id)displayStringFromOperation:(unint64_t)a3 isDND:(BOOL)a4 focusMode:(id)a5 eventDescriptor:(id)a6
{
  v7 = a4;
  v9 = a5;
  v10 = a6;
  v11 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v14 = MEMORY[0x1E696AEC0];
      if (v7)
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
      if (a3 != 3)
      {
        goto LABEL_21;
      }

      if (v7)
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
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_21;
      }

      v12 = MEMORY[0x1E696AEC0];
      if (v7)
      {
        v13 = @"Turn On %1$@ Until %2$@ Ends";
      }

      else
      {
        v13 = @"Turn On %1$@ Focus Until %2$@ Ends";
      }

      v17 = WFLocalizedString(v13);
      v18 = [v9 name];
      v19 = [v10 title];
      v11 = [v12 stringWithFormat:v17, v18, v19];

      goto LABEL_20;
    }

    v14 = MEMORY[0x1E696AEC0];
    if (v7)
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
  v18 = [v9 name];
  v11 = [v14 stringWithFormat:v17, v18];
LABEL_20:

LABEL_21:

  return v11;
}

- (WFToggleFocusModeContextualAction)initWithFocusMode:(id)a3 operation:(unint64_t)a4 event:(id)a5
{
  v47[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v40 = a5;
  v10 = a5;
  if (!v9)
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    [v38 handleFailureInMethod:a2 object:self file:@"WFToggleFocusModeContextualAction.m" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"focusMode"}];
  }

  if (a4 == 1 && !v10)
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"WFToggleFocusModeContextualAction.m" lineNumber:134 description:{@"If the operation is turn on until event ends, we need an event"}];
  }

  v11 = [v9 identifier];
  v12 = [v11 isEqualToString:@"com.apple.donotdisturb.mode.default"];

  v41 = self;
  v13 = [(WFToggleFocusModeContextualAction *)self displayStringFromOperation:a4 isDND:v12 focusMode:v9 eventDescriptor:v10];
  v14 = [WFContextualActionParameter alloc];
  v45[0] = @"Identifier";
  v15 = [v9 identifier];
  v45[1] = @"DisplayString";
  v46[0] = v15;
  v16 = [v9 name];
  v46[1] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];
  v18 = [(WFContextualActionParameter *)v14 initWithType:@"WFDictionaryContentItem" displayString:0 wfParameterKey:@"FocusModes" wfSerializedRepresentation:v17];
  v47[0] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];

  if (a4 > 1)
  {
    if (a4 == 3)
    {
      v20 = [[WFContextualActionParameter alloc] initWithType:@"WFStringContentItem" displayString:0 wfParameterKey:@"AssertionType" wfSerializedRepresentation:@"Turned Off"];
      v42[0] = v20;
      v22 = [[WFContextualActionParameter alloc] initWithType:@"WFStringContentItem" displayString:0 wfParameterKey:@"Operation" wfSerializedRepresentation:@"Toggle"];
      v42[1] = v22;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
      v29 = [v19 arrayByAddingObjectsFromArray:v23];
      goto LABEL_15;
    }

    if (a4 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (a4)
  {
    if (a4 != 1)
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
  v22 = [MEMORY[0x1E696AD98] numberWithBool:a4 == 0];
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
  v30 = [v9 symbolName];
  v31 = [WFContextualActionIcon iconWithSystemName:v30];

  v32 = WFLocalizedString(@"Focus Mode");
  v33 = [(WFContextualAction *)v41 initWithIdentifier:@"is.workflow.actions.dnd.set" wfActionIdentifier:@"is.workflow.actions.dnd.set" associatedAppBundleIdentifier:@"com.apple.Preferences" parameters:v19 displayString:v13 title:v32 subtitle:v13 icon:v31];

  if (v33)
  {
    objc_storeStrong(&v33->_focusMode, a3);
    v33->_operation = a4;
    objc_storeStrong(&v33->_eventDescriptor, v40);
    v34 = v33;
  }

  v35 = *MEMORY[0x1E69E9840];
  return v33;
}

+ (id)toggle:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithFocusMode:v4 operation:3 event:0];

  return v5;
}

+ (id)turnOff:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithFocusMode:v4 operation:2 event:0];

  return v5;
}

+ (id)turnOn:(id)a3 untilEventEnds:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"WFToggleFocusModeContextualAction.m" lineNumber:341 description:{@"Invalid parameter not satisfying: %@", @"eventDescriptor"}];
  }

  v9 = [[a1 alloc] initWithFocusMode:v7 operation:1 event:v8];

  return v9;
}

+ (id)turnOn:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithFocusMode:v4 operation:0 event:0];

  return v5;
}

@end