@interface WFRunShortcutContextualAction
- (WFRunShortcutContextualAction)initWithDescriptor:(id)descriptor serializedRepresentation:(id)representation namedQueryInfo:(id)info;
- (id)_staticDisplayStringForDecoding;
- (id)spotlightItem;
- (id)uniqueIdentifier;
@end

@implementation WFRunShortcutContextualAction

- (id)spotlightItem
{
  v9.receiver = self;
  v9.super_class = WFRunShortcutContextualAction;
  spotlightItem = [(WFContextualAction *)&v9 spotlightItem];
  attributeSet = [spotlightItem attributeSet];
  uniqueIdentifier = [attributeSet uniqueIdentifier];
  v5 = [uniqueIdentifier rangeOfString:@":"];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [uniqueIdentifier substringFromIndex:v5 + v6];

    [attributeSet setUniqueIdentifier:v7];
    uniqueIdentifier = v7;
  }

  return spotlightItem;
}

- (WFRunShortcutContextualAction)initWithDescriptor:(id)descriptor serializedRepresentation:(id)representation namedQueryInfo:(id)info
{
  v46[1] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  representationCopy = representation;
  infoCopy = info;
  if (!descriptorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFRunShortcutContextualAction.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"descriptor"}];
  }

  v11 = [WFContextualActionParameter alloc];
  name = [descriptorCopy name];
  v13 = [(WFContextualActionParameter *)v11 initWithType:@"WFWorkflowContentItem" displayString:name wfParameterKey:@"WFWorkflow" wfSerializedRepresentation:representationCopy];

  associatedAppBundleIdentifier = [descriptorCopy associatedAppBundleIdentifier];

  v44 = representationCopy;
  selfCopy = self;
  if (associatedAppBundleIdentifier)
  {
    v15 = [WFContextualActionIcon alloc];
    associatedAppBundleIdentifier2 = [descriptorCopy associatedAppBundleIdentifier];
    v40 = [(WFContextualActionIcon *)v15 initWithApplicationBundleIdentifier:associatedAppBundleIdentifier2];
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
  name2 = [descriptorCopy name];
  v38 = v18;
  v20 = [v17 localizedStringWithFormat:v18, name2];
  v21 = WFLocalizedString(@"Run Shortcut");
  name3 = [descriptorCopy name];
  v23 = descriptorCopy;
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
    pNGRepresentation = [v29 PNGRepresentation];

    if (pNGRepresentation)
    {
      v32 = [WFContextualActionIcon alloc];
      pNGRepresentation2 = [v30 PNGRepresentation];
      [v30 scale];
      pNGRepresentation = [(WFContextualActionIcon *)v32 initWithImageData:pNGRepresentation2 scale:1 displayStyle:?];
    }
  }

  else
  {
    pNGRepresentation = 0;
  }

  objc_autoreleasePoolPop(v24);
  v45.receiver = selfCopy;
  v45.super_class = WFRunShortcutContextualAction;
  v34 = [(WFTopHitItemContextualAction *)&v45 initWithItem:v23 identifier:@"is.workflow.actions.runworkflow" wfActionIdentifier:@"is.workflow.actions.runworkflow" associatedAppBundleIdentifier:@"com.apple.shortcuts" parameters:v39 displayString:v20 title:v21 subtitle:name3 primaryColor:9 icon:pNGRepresentation accessoryIcon:v40 namedQueryInfo:infoCopy];

  v35 = *MEMORY[0x1E69E9840];
  return v34;
}

- (id)_staticDisplayStringForDecoding
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = WFLocalizedString(@"Run %@");
  workflow = [(WFRunShortcutContextualAction *)self workflow];
  name = [workflow name];
  v7 = [v3 localizedStringWithFormat:v4, name];

  return v7;
}

- (id)uniqueIdentifier
{
  identifier = [(WFContextualAction *)self identifier];
  workflow = [(WFRunShortcutContextualAction *)self workflow];
  identifier2 = [workflow identifier];
  v6 = [identifier stringByAppendingFormat:@":%@", identifier2];

  return v6;
}

@end