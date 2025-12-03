@interface _UITextLinkInteractionHandler
+ (id)handlerForItem:(id)item textContentView:(id)view;
- (id)_addLinkToReadingListAction:(id)action;
- (id)_copyLinkAction:(id)action;
- (id)_defaultMenuForInteractableItem;
- (id)_defaultPrimaryActionForInteractableItem;
- (id)_handlerRequiringUnlockedDevice:(BOOL)device handler:(id)handler;
- (id)_openAppLinkInDefaultBrowserAction:(id)action;
- (id)_openAppLinkInExternalApplicationAction:(id)action;
- (id)_openURLAction:(id)action;
- (id)_shareLinkAction:(id)action;
- (id)link;
@end

@implementation _UITextLinkInteractionHandler

+ (id)handlerForItem:(id)item textContentView:(id)view
{
  itemCopy = item;
  viewCopy = view;
  link = [itemCopy link];
  scheme = [link scheme];
  v9 = [scheme hasPrefix:@"http"];

  if (v9)
  {
    goto LABEL_9;
  }

  v10 = link;
  scheme2 = [v10 scheme];
  v12 = [scheme2 hasPrefix:@"x-apple-data-detectors"];

  if (v12)
  {
LABEL_5:

    goto LABEL_9;
  }

  if (!DataDetectorsUILibrary())
  {

    goto LABEL_8;
  }

  if ([v10 dd_isMaps:1])
  {
    goto LABEL_5;
  }

  dd_isAnySimpleTelephonyScheme = [v10 dd_isAnySimpleTelephonyScheme];

  if (dd_isAnySimpleTelephonyScheme)
  {
LABEL_9:
    v19 = [[_UITextDataDetectedLinkInteractionHandler alloc] initWithItem:itemCopy textContentView:viewCopy];
    if (v19)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_8:
  v14 = viewCopy;
  range = [itemCopy range];
  asRange = [range asRange];

  textStorage = [v14 textStorage];

  v18 = [textStorage attribute:@"DDResultAttributeName" atIndex:asRange effectiveRange:0];

  if (v18)
  {
    goto LABEL_9;
  }

LABEL_10:
  v19 = [(_UITextItemInteractionHandler *)[_UITextLinkInteractionHandler alloc] initWithItem:itemCopy textContentView:viewCopy];
LABEL_11:

  return v19;
}

- (id)link
{
  textContentView = [(_UITextItemInteractionHandler *)self textContentView];
  textStorage = [textContentView textStorage];
  v5 = [textStorage attribute:*off_1E70EC960 atIndex:-[_UITextItemInteractionHandler range](self effectiveRange:{"range"), 0}];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = [MEMORY[0x1E695DFF8] URLWithString:v5 encodingInvalidCharacters:0];
  }

  v7 = v6;
  scheme = [v6 scheme];
  v9 = [scheme hasPrefix:@"x-apple-data-detectors"];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = v7;
  }

  return v10;
}

- (id)_defaultPrimaryActionForInteractableItem
{
  link = [(_UITextLinkInteractionHandler *)self link];
  scheme = [link scheme];
  if ([scheme compare:@"http" options:1] && objc_msgSend(scheme, "compare:options:", @"https", 1) || IsWebBrowserAvailable())
  {
    v5 = [(_UITextLinkInteractionHandler *)self _openURLAction:link];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_defaultMenuForInteractableItem
{
  link = [(_UITextLinkInteractionHandler *)self link];
  if (link)
  {
    v4 = objc_opt_new();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __64___UITextLinkInteractionHandler__defaultMenuForInteractableItem__block_invoke;
    aBlock[3] = &unk_1E70F4708;
    v18 = v4;
    v5 = v4;
    v6 = _Block_copy(aBlock);
    if (_UIApplicationHasAppLinkEntitlements() && (_UIAppLinkForURL(link), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = v7;
      v9 = [(_UITextLinkInteractionHandler *)self _openAppLinkInExternalApplicationAction:v7];
      v6[2](v6, v9);

      v10 = [(_UITextLinkInteractionHandler *)self _openAppLinkInDefaultBrowserAction:v8];
      v6[2](v6, v10);
    }

    else
    {
      v8 = [(_UITextLinkInteractionHandler *)self _openURLAction:link];
      v6[2](v6, v8);
    }

    v11 = [(_UITextLinkInteractionHandler *)self _addLinkToReadingListAction:link];
    v6[2](v6, v11);

    v12 = [(_UITextLinkInteractionHandler *)self _copyLinkAction:link];
    v6[2](v6, v12);

    v13 = [(_UITextLinkInteractionHandler *)self _shareLinkAction:link];
    v6[2](v6, v13);

    v14 = [(_UITextLinkInteractionHandler *)self _titleForLink:link];
    v15 = [UIMenu menuWithTitle:v14 image:0 identifier:@"UITextItemDefaultMenuIdentifier" options:0 children:v5];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_handlerRequiringUnlockedDevice:(BOOL)device handler:(id)handler
{
  deviceCopy = device;
  handlerCopy = handler;
  if (([UIApp isFrontBoard] & 1) != 0 || !deviceCopy)
  {
    v6 = v11;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v7 = __73___UITextLinkInteractionHandler__handlerRequiringUnlockedDevice_handler___block_invoke_3;
  }

  else
  {
    v6 = v12;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v7 = __73___UITextLinkInteractionHandler__handlerRequiringUnlockedDevice_handler___block_invoke;
  }

  v6[2] = v7;
  v6[3] = &unk_1E70F4758;
  v6[4] = handlerCopy;
  v8 = handlerCopy;
  v9 = _Block_copy(v6);

  return v9;
}

- (id)_openURLAction:(id)action
{
  actionCopy = action;
  absoluteString = [actionCopy absoluteString];
  if (absoluteString && IsWebBrowserAvailable())
  {
    textContentView = [(_UITextItemInteractionHandler *)self textContentView];
    window = [textContentView window];
    _windowHostingScene = [window _windowHostingScene];
    _currentOpenApplicationEndpoint = [_windowHostingScene _currentOpenApplicationEndpoint];

    instance = [_currentOpenApplicationEndpoint instance];
    v11 = [instance isEqualToString:@"com.apple.SpringBoard.continuity-display"];

    v12 = _UIKitBundle();
    v13 = [v12 localizedStringForKey:@"Open Link" value:@"Open" table:@"Localizable"];
    v14 = [UIImage systemImageNamed:@"safari"];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __48___UITextLinkInteractionHandler__openURLAction___block_invoke;
    v22 = &unk_1E70F35B8;
    v23 = actionCopy;
    v24 = textContentView;
    v15 = textContentView;
    v16 = [(_UITextLinkInteractionHandler *)self _handlerRequiringUnlockedDevice:v11 ^ 1u handler:&v19];
    v17 = [UIAction actionWithTitle:v13 image:v14 identifier:0 handler:v16, v19, v20, v21, v22];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_copyLinkAction:(id)action
{
  absoluteString = [action absoluteString];
  if ([absoluteString length])
  {
    v4 = _UIKitBundle();
    v5 = [v4 localizedStringForKey:@"Copy Link" value:@"Copy" table:@"Localizable"];
    v6 = [UIImage systemImageNamed:@"link"];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49___UITextLinkInteractionHandler__copyLinkAction___block_invoke;
    v9[3] = &unk_1E70F4708;
    v10 = absoluteString;
    v7 = [UIAction actionWithTitle:v5 image:v6 identifier:0 handler:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_shareLinkAction:(id)action
{
  absoluteString = [action absoluteString];
  if ([absoluteString length])
  {
    v5 = _UIKitBundle();
    v6 = [v5 localizedStringForKey:@"Share…" value:@"Share…" table:@"Localizable"];
    v7 = [UIImage systemImageNamed:@"square.and.arrow.up"];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __50___UITextLinkInteractionHandler__shareLinkAction___block_invoke;
    v14 = &unk_1E70F35B8;
    selfCopy = self;
    v16 = absoluteString;
    v8 = [(_UITextLinkInteractionHandler *)self _handlerRequiringUnlockedDevice:1 handler:&v11];
    selfCopy = [UIAction actionWithTitle:v6 image:v7 identifier:0 handler:v8, v11, v12, v13, v14, selfCopy];
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_openAppLinkInDefaultBrowserAction:(id)action
{
  actionCopy = action;
  if (actionCopy && IsWebBrowserAvailable())
  {
    textContentView = [(_UITextItemInteractionHandler *)self textContentView];
    v6 = _UINSLocalizedStringWithDefaultValue(@"Open in Safari", @"Open in Safari");
    v7 = [UIImage systemImageNamed:@"safari"];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __68___UITextLinkInteractionHandler__openAppLinkInDefaultBrowserAction___block_invoke;
    v15 = &unk_1E70F35B8;
    v16 = actionCopy;
    v17 = textContentView;
    v8 = textContentView;
    v9 = [(_UITextLinkInteractionHandler *)self _handlerRequiringUnlockedDevice:1 handler:&v12];
    v10 = [UIAction actionWithTitle:v6 image:v7 identifier:0 handler:v9, v12, v13, v14, v15];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_openAppLinkInExternalApplicationAction:(id)action
{
  actionCopy = action;
  targetApplicationProxy = [actionCopy targetApplicationProxy];
  v6 = [targetApplicationProxy localizedNameForContext:0];

  if (v6)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = _UIKitBundle();
    v9 = [v8 localizedStringForKey:@"Open in %@ (Link Element Action Sheet Button)" value:@"Open in %@" table:@"Localizable"];
    v10 = [v7 localizedStringWithFormat:v9, v6];

    textContentView = [(_UITextItemInteractionHandler *)self textContentView];
    v12 = [UIImage systemImageNamed:@"arrow.up.forward.square"];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __73___UITextLinkInteractionHandler__openAppLinkInExternalApplicationAction___block_invoke;
    v17[3] = &unk_1E70F35B8;
    v18 = actionCopy;
    v19 = textContentView;
    v13 = textContentView;
    v14 = [(_UITextLinkInteractionHandler *)self _handlerRequiringUnlockedDevice:1 handler:v17];
    v15 = [UIAction actionWithTitle:v10 image:v12 identifier:0 handler:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_addLinkToReadingListAction:(id)action
{
  actionCopy = action;
  if (IsWebBrowserAvailable() && [getSSReadingListClass() supportsURL:actionCopy])
  {
    v5 = [(_UITextLinkInteractionHandler *)self _titleForLink:actionCopy];
    v6 = _UINSLocalizedStringWithDefaultValue(@"Add to Reading List", @"Add to Reading List");
    v7 = [UIImage systemImageNamed:@"book"];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __61___UITextLinkInteractionHandler__addLinkToReadingListAction___block_invoke;
    v15 = &unk_1E70F35B8;
    v16 = actionCopy;
    v17 = v5;
    v8 = v5;
    v9 = [(_UITextLinkInteractionHandler *)self _handlerRequiringUnlockedDevice:1 handler:&v12];
    v10 = [UIAction actionWithTitle:v6 image:v7 identifier:0 handler:v9, v12, v13, v14, v15];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end