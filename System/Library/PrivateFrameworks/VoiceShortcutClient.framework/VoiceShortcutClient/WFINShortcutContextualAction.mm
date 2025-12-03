@interface WFINShortcutContextualAction
- (BOOL)isEqual:(id)equal;
- (WFINShortcutContextualAction)initWithCoder:(id)coder;
- (WFINShortcutContextualAction)initWithINShortcut:(id)shortcut;
- (id)icon;
- (id)runDescriptorForSurface:(unint64_t)surface;
- (id)runRequestForSurface:(unint64_t)surface;
- (id)uniqueIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFINShortcutContextualAction

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WFINShortcutContextualAction;
  coderCopy = coder;
  [(WFContextualAction *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_shortcut forKey:{@"shortcut", v5.receiver, v5.super_class}];
}

- (WFINShortcutContextualAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = WFINShortcutContextualAction;
  v5 = [(WFContextualAction *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shortcut"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v13.receiver = self;
  v13.super_class = WFINShortcutContextualAction;
  if ([(WFContextualAction *)&v13 isEqual:equalCopy])
  {
    v5 = equalCopy;
    if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      shortcut = [v5 shortcut];
      shortcut2 = [(WFINShortcutContextualAction *)self shortcut];
      v8 = shortcut;
      v9 = shortcut2;
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
  shortcut = [(WFINShortcutContextualAction *)self shortcut];

  if (shortcut)
  {
    shortcut2 = [(WFINShortcutContextualAction *)self shortcut];
    v7 = [v3 combine:shortcut2];
  }

  v8 = [v3 finalize];

  return v8;
}

- (id)uniqueIdentifier
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  identifier = [(WFContextualAction *)self identifier];
  v14[0] = identifier;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v6 = [v3 initWithArray:v5];

  intent = [(INShortcut *)self->_shortcut intent];

  if (intent)
  {
    v8 = MEMORY[0x1E696AEC0];
    intent2 = [(INShortcut *)self->_shortcut intent];
    v10 = [v8 stringWithFormat:@"%lld", objc_msgSend(intent2, "_indexingHash")];
    [v6 addObject:v10];
  }

  v11 = [v6 componentsJoinedByString:@"."];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)icon
{
  shortcut = [(WFINShortcutContextualAction *)self shortcut];
  intent = [shortcut intent];
  keyImage = [intent keyImage];
  _imageData = [keyImage _imageData];

  if (_imageData)
  {
    v6 = [WFContextualActionIcon iconWithImageData:_imageData scale:0 displayStyle:0.0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (WFINShortcutContextualAction)initWithINShortcut:(id)shortcut
{
  v31[1] = *MEMORY[0x1E69E9840];
  shortcutCopy = shortcut;
  v6 = objc_alloc(MEMORY[0x1E695DF70]);
  v31[0] = @"com.apple.shortcuts.contextual-actions.inshortcut";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  v8 = [v6 initWithArray:v7];

  intent = [(INShortcut *)self->_shortcut intent];

  shortcut = self->_shortcut;
  if (intent)
  {
    intent2 = [(INShortcut *)shortcut intent];
    _intents_bundleIdForDisplay = [intent2 _intents_bundleIdForDisplay];

    if (_intents_bundleIdForDisplay)
    {
      [v8 addObject:_intents_bundleIdForDisplay];
    }

    intent3 = [(INShortcut *)self->_shortcut intent];
    _className = [intent3 _className];
    [v8 addObject:_className];
  }

  else
  {
    userActivity = [(INShortcut *)shortcut userActivity];
    _uniqueIdentifier = [userActivity _uniqueIdentifier];
    _intents_bundleIdForDisplay = [_uniqueIdentifier UUIDString];

    if (_intents_bundleIdForDisplay)
    {
      [v8 addObject:_intents_bundleIdForDisplay];
    }
  }

  v17 = [v8 componentsJoinedByString:@"."];
  intent4 = [(INShortcut *)self->_shortcut intent];
  _title = [intent4 _title];
  v20 = _title;
  if (_title)
  {
    title = _title;
  }

  else
  {
    userActivity2 = [(INShortcut *)self->_shortcut userActivity];
    title = [userActivity2 title];
  }

  intent5 = [(INShortcut *)self->_shortcut intent];
  _intents_bundleIdForDisplay2 = [intent5 _intents_bundleIdForDisplay];

  if (!_intents_bundleIdForDisplay2)
  {
    userActivity3 = [(INShortcut *)self->_shortcut userActivity];
    _intents_bundleIdForDisplay2 = [userActivity3 _determineMatchingApplicationBundleIdentifierWithOptions:MEMORY[0x1E695E0F8]];
  }

  v26 = [(WFContextualAction *)self initWithIdentifier:v17 wfActionIdentifier:0 associatedAppBundleIdentifier:_intents_bundleIdForDisplay2 parameters:MEMORY[0x1E695E0F0] displayString:title title:title subtitle:0 icon:0];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_shortcut, shortcut);
    v28 = v27;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v27;
}

- (id)runRequestForSurface:(unint64_t)surface
{
  if (surface - 1 > 3)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_1B1F36A00[surface - 1];
  }

  v4 = [[WFWorkflowRunRequest alloc] initWithInput:0 presentationMode:1];
  v5 = WFRunSourceForSpotlightExecutionContext(v3);
  [(WFWorkflowRunRequest *)v4 setRunSource:v5];

  [(WFWorkflowRunRequest *)v4 setDonateInteraction:0];

  return v4;
}

- (id)runDescriptorForSurface:(unint64_t)surface
{
  selfCopy = self;
  if (selfCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = selfCopy;
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

  shortcut = [(WFINShortcutContextualAction *)v5 shortcut];

  v7 = WFWorkflowRunDescriptorForINShortcut(shortcut);

  return v7;
}

@end