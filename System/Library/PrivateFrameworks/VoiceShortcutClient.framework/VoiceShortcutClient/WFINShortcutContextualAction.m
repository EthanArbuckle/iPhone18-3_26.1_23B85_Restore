@interface WFINShortcutContextualAction
- (BOOL)isEqual:(id)a3;
- (WFINShortcutContextualAction)initWithCoder:(id)a3;
- (WFINShortcutContextualAction)initWithINShortcut:(id)a3;
- (id)icon;
- (id)runDescriptorForSurface:(unint64_t)a3;
- (id)runRequestForSurface:(unint64_t)a3;
- (id)uniqueIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFINShortcutContextualAction

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WFINShortcutContextualAction;
  v4 = a3;
  [(WFContextualAction *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_shortcut forKey:{@"shortcut", v5.receiver, v5.super_class}];
}

- (WFINShortcutContextualAction)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WFINShortcutContextualAction;
  v5 = [(WFContextualAction *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shortcut"];
    if (v6)
    {
      objc_storeStrong(&v5->_shortcut, v6);
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = WFINShortcutContextualAction;
  if ([(WFContextualAction *)&v13 isEqual:v4])
  {
    v5 = v4;
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v6 = [v5 shortcut];
      v7 = [(WFINShortcutContextualAction *)self shortcut];
      v8 = v6;
      v9 = v7;
      v10 = v9;
      if (v8 == v9)
      {
        v11 = 1;
      }

      else
      {
        v11 = 0;
        if (v8 && v9)
        {
          v11 = [v8 isEqual:v9];
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = objc_opt_new();
  v10.receiver = self;
  v10.super_class = WFINShortcutContextualAction;
  v4 = [v3 combineInteger:{-[WFContextualAction hash](&v10, sel_hash)}];
  v5 = [(WFINShortcutContextualAction *)self shortcut];

  if (v5)
  {
    v6 = [(WFINShortcutContextualAction *)self shortcut];
    v7 = [v3 combine:v6];
  }

  v8 = [v3 finalize];

  return v8;
}

- (id)uniqueIdentifier
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v4 = [(WFContextualAction *)self identifier];
  v14[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v6 = [v3 initWithArray:v5];

  v7 = [(INShortcut *)self->_shortcut intent];

  if (v7)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = [(INShortcut *)self->_shortcut intent];
    v10 = [v8 stringWithFormat:@"%lld", objc_msgSend(v9, "_indexingHash")];
    [v6 addObject:v10];
  }

  v11 = [v6 componentsJoinedByString:@"."];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)icon
{
  v2 = [(WFINShortcutContextualAction *)self shortcut];
  v3 = [v2 intent];
  v4 = [v3 keyImage];
  v5 = [v4 _imageData];

  if (v5)
  {
    v6 = [WFContextualActionIcon iconWithImageData:v5 scale:0 displayStyle:0.0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (WFINShortcutContextualAction)initWithINShortcut:(id)a3
{
  v31[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc(MEMORY[0x1E695DF70]);
  v31[0] = @"com.apple.shortcuts.contextual-actions.inshortcut";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  v8 = [v6 initWithArray:v7];

  v9 = [(INShortcut *)self->_shortcut intent];

  shortcut = self->_shortcut;
  if (v9)
  {
    v11 = [(INShortcut *)shortcut intent];
    v12 = [v11 _intents_bundleIdForDisplay];

    if (v12)
    {
      [v8 addObject:v12];
    }

    v13 = [(INShortcut *)self->_shortcut intent];
    v14 = [v13 _className];
    [v8 addObject:v14];
  }

  else
  {
    v15 = [(INShortcut *)shortcut userActivity];
    v16 = [v15 _uniqueIdentifier];
    v12 = [v16 UUIDString];

    if (v12)
    {
      [v8 addObject:v12];
    }
  }

  v17 = [v8 componentsJoinedByString:@"."];
  v18 = [(INShortcut *)self->_shortcut intent];
  v19 = [v18 _title];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v22 = [(INShortcut *)self->_shortcut userActivity];
    v21 = [v22 title];
  }

  v23 = [(INShortcut *)self->_shortcut intent];
  v24 = [v23 _intents_bundleIdForDisplay];

  if (!v24)
  {
    v25 = [(INShortcut *)self->_shortcut userActivity];
    v24 = [v25 _determineMatchingApplicationBundleIdentifierWithOptions:MEMORY[0x1E695E0F8]];
  }

  v26 = [(WFContextualAction *)self initWithIdentifier:v17 wfActionIdentifier:0 associatedAppBundleIdentifier:v24 parameters:MEMORY[0x1E695E0F0] displayString:v21 title:v21 subtitle:0 icon:0];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_shortcut, a3);
    v28 = v27;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v27;
}

- (id)runRequestForSurface:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_1B1F36A00[a3 - 1];
  }

  v4 = [[WFWorkflowRunRequest alloc] initWithInput:0 presentationMode:1];
  v5 = WFRunSourceForSpotlightExecutionContext(v3);
  [(WFWorkflowRunRequest *)v4 setRunSource:v5];

  [(WFWorkflowRunRequest *)v4 setDonateInteraction:0];

  return v4;
}

- (id)runDescriptorForSurface:(unint64_t)a3
{
  v3 = self;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [(WFINShortcutContextualAction *)v5 shortcut];

  v7 = WFWorkflowRunDescriptorForINShortcut(v6);

  return v7;
}

@end