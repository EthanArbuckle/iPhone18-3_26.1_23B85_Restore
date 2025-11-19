@interface WFRunShortcutContextualAction
- (WFRunShortcutContextualAction)initWithDescriptor:(id)a3 serializedRepresentation:(id)a4 namedQueryInfo:(id)a5;
- (id)_staticDisplayStringForDecoding;
- (id)spotlightItem;
- (id)uniqueIdentifier;
@end

@implementation WFRunShortcutContextualAction

- (id)spotlightItem
{
  v9.receiver = self;
  v9.super_class = WFRunShortcutContextualAction;
  v2 = [(WFContextualAction *)&v9 spotlightItem];
  v3 = [v2 attributeSet];
  v4 = [v3 uniqueIdentifier];
  v5 = [v4 rangeOfString:@":"];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [v4 substringFromIndex:v5 + v6];

    [v3 setUniqueIdentifier:v7];
    v4 = v7;
  }

  return v2;
}

- (WFRunShortcutContextualAction)initWithDescriptor:(id)a3 serializedRepresentation:(id)a4 namedQueryInfo:(id)a5
{
  v46[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v43 = a5;
  if (!v9)
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"WFRunShortcutContextualAction.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"descriptor"}];
  }

  v11 = [WFContextualActionParameter alloc];
  v12 = [v9 name];
  v13 = [(WFContextualActionParameter *)v11 initWithType:@"WFWorkflowContentItem" displayString:v12 wfParameterKey:@"WFWorkflow" wfSerializedRepresentation:v10];

  v14 = [v9 associatedAppBundleIdentifier];

  v44 = v10;
  v42 = self;
  if (v14)
  {
    v15 = [WFContextualActionIcon alloc];
    v16 = [v9 associatedAppBundleIdentifier];
    v40 = [(WFContextualActionIcon *)v15 initWithApplicationBundleIdentifier:v16];
  }

  else
  {
    v40 = 0;
  }

  v41 = v13;
  v46[0] = v13;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];
  v17 = MEMORY[0x1E696AEC0];
  v18 = WFLocalizedString(@"Run %@");
  v19 = [v9 name];
  v38 = v18;
  v20 = [v17 localizedStringWithFormat:v18, v19];
  v21 = WFLocalizedString(@"Run Shortcut");
  v22 = [v9 name];
  v23 = v9;
  v24 = objc_autoreleasePoolPush();
  v25 = [WFWorkflowIconDrawer alloc];
  v26 = objc_opt_new();
  v27 = [(WFWorkflowIconDrawer *)v25 initWithDrawerContext:v26];

  -[WFWorkflowIconDrawer setGlyphCharacter:](v27, "setGlyphCharacter:", [v23 glyphCharacter]);
  [(WFWorkflowIconDrawer *)v27 setDrawGradient:1];
  [(WFWorkflowIconDrawer *)v27 setDrawShadowBehindGlyph:0];
  [(WFWorkflowIconDrawer *)v27 setGlyphSize:60.0, 60.0];
  v28 = +[WFColor colorWithRGBAValue:](WFColor, "colorWithRGBAValue:", [v23 color]);
  [(WFWorkflowIconDrawer *)v27 setBackgroundColor:v28];

  v29 = [(WFWorkflowIconDrawer *)v27 imageWithSize:120.0, 120.0];
  v30 = v29;
  if (v29)
  {
    v31 = [v29 PNGRepresentation];

    if (v31)
    {
      v32 = [WFContextualActionIcon alloc];
      v33 = [v30 PNGRepresentation];
      [v30 scale];
      v31 = [(WFContextualActionIcon *)v32 initWithImageData:v33 scale:1 displayStyle:?];
    }
  }

  else
  {
    v31 = 0;
  }

  objc_autoreleasePoolPop(v24);
  v45.receiver = v42;
  v45.super_class = WFRunShortcutContextualAction;
  v34 = [(WFTopHitItemContextualAction *)&v45 initWithItem:v23 identifier:@"is.workflow.actions.runworkflow" wfActionIdentifier:@"is.workflow.actions.runworkflow" associatedAppBundleIdentifier:@"com.apple.shortcuts" parameters:v39 displayString:v20 title:v21 subtitle:v22 primaryColor:9 icon:v31 accessoryIcon:v40 namedQueryInfo:v43];

  v35 = *MEMORY[0x1E69E9840];
  return v34;
}

- (id)_staticDisplayStringForDecoding
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = WFLocalizedString(@"Run %@");
  v5 = [(WFRunShortcutContextualAction *)self workflow];
  v6 = [v5 name];
  v7 = [v3 localizedStringWithFormat:v4, v6];

  return v7;
}

- (id)uniqueIdentifier
{
  v3 = [(WFContextualAction *)self identifier];
  v4 = [(WFRunShortcutContextualAction *)self workflow];
  v5 = [v4 identifier];
  v6 = [v3 stringByAppendingFormat:@":%@", v5];

  return v6;
}

@end