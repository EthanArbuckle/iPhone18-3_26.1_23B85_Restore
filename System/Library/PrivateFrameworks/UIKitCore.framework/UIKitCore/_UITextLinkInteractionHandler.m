@interface _UITextLinkInteractionHandler
+ (id)handlerForItem:(id)a3 textContentView:(id)a4;
- (id)_addLinkToReadingListAction:(id)a3;
- (id)_copyLinkAction:(id)a3;
- (id)_defaultMenuForInteractableItem;
- (id)_defaultPrimaryActionForInteractableItem;
- (id)_handlerRequiringUnlockedDevice:(BOOL)a3 handler:(id)a4;
- (id)_openAppLinkInDefaultBrowserAction:(id)a3;
- (id)_openAppLinkInExternalApplicationAction:(id)a3;
- (id)_openURLAction:(id)a3;
- (id)_shareLinkAction:(id)a3;
- (id)link;
@end

@implementation _UITextLinkInteractionHandler

+ (id)handlerForItem:(id)a3 textContentView:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 link];
  v8 = [v7 scheme];
  v9 = [v8 hasPrefix:@"http"];

  if (v9)
  {
    goto LABEL_9;
  }

  v10 = v7;
  v11 = [v10 scheme];
  v12 = [v11 hasPrefix:@"x-apple-data-detectors"];

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

  v13 = [v10 dd_isAnySimpleTelephonyScheme];

  if (v13)
  {
LABEL_9:
    v19 = [[_UITextDataDetectedLinkInteractionHandler alloc] initWithItem:v5 textContentView:v6];
    if (v19)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_8:
  v14 = v6;
  v15 = [v5 range];
  v16 = [v15 asRange];

  v17 = [v14 textStorage];

  v18 = [v17 attribute:@"DDResultAttributeName" atIndex:v16 effectiveRange:0];

  if (v18)
  {
    goto LABEL_9;
  }

LABEL_10:
  v19 = [(_UITextItemInteractionHandler *)[_UITextLinkInteractionHandler alloc] initWithItem:v5 textContentView:v6];
LABEL_11:

  return v19;
}

- (id)link
{
  v3 = [(_UITextItemInteractionHandler *)self textContentView];
  v4 = [v3 textStorage];
  v5 = [v4 attribute:*off_1E70EC960 atIndex:-[_UITextItemInteractionHandler range](self effectiveRange:{"range"), 0}];

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
  v8 = [v6 scheme];
  v9 = [v8 hasPrefix:@"x-apple-data-detectors"];

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
  v3 = [(_UITextLinkInteractionHandler *)self link];
  v4 = [v3 scheme];
  if ([v4 compare:@"http" options:1] && objc_msgSend(v4, "compare:options:", @"https", 1) || IsWebBrowserAvailable())
  {
    v5 = [(_UITextLinkInteractionHandler *)self _openURLAction:v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_defaultMenuForInteractableItem
{
  v3 = [(_UITextLinkInteractionHandler *)self link];
  if (v3)
  {
    v4 = objc_opt_new();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __64___UITextLinkInteractionHandler__defaultMenuForInteractableItem__block_invoke;
    aBlock[3] = &unk_1E70F4708;
    v18 = v4;
    v5 = v4;
    v6 = _Block_copy(aBlock);
    if (_UIApplicationHasAppLinkEntitlements() && (_UIAppLinkForURL(v3), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = v7;
      v9 = [(_UITextLinkInteractionHandler *)self _openAppLinkInExternalApplicationAction:v7];
      v6[2](v6, v9);

      v10 = [(_UITextLinkInteractionHandler *)self _openAppLinkInDefaultBrowserAction:v8];
      v6[2](v6, v10);
    }

    else
    {
      v8 = [(_UITextLinkInteractionHandler *)self _openURLAction:v3];
      v6[2](v6, v8);
    }

    v11 = [(_UITextLinkInteractionHandler *)self _addLinkToReadingListAction:v3];
    v6[2](v6, v11);

    v12 = [(_UITextLinkInteractionHandler *)self _copyLinkAction:v3];
    v6[2](v6, v12);

    v13 = [(_UITextLinkInteractionHandler *)self _shareLinkAction:v3];
    v6[2](v6, v13);

    v14 = [(_UITextLinkInteractionHandler *)self _titleForLink:v3];
    v15 = [UIMenu menuWithTitle:v14 image:0 identifier:@"UITextItemDefaultMenuIdentifier" options:0 children:v5];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_handlerRequiringUnlockedDevice:(BOOL)a3 handler:(id)a4
{
  v4 = a3;
  v5 = a4;
  if (([UIApp isFrontBoard] & 1) != 0 || !v4)
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
  v6[4] = v5;
  v8 = v5;
  v9 = _Block_copy(v6);

  return v9;
}

- (id)_openURLAction:(id)a3
{
  v4 = a3;
  v5 = [v4 absoluteString];
  if (v5 && IsWebBrowserAvailable())
  {
    v6 = [(_UITextItemInteractionHandler *)self textContentView];
    v7 = [v6 window];
    v8 = [v7 _windowHostingScene];
    v9 = [v8 _currentOpenApplicationEndpoint];

    v10 = [v9 instance];
    v11 = [v10 isEqualToString:@"com.apple.SpringBoard.continuity-display"];

    v12 = _UIKitBundle();
    v13 = [v12 localizedStringForKey:@"Open Link" value:@"Open" table:@"Localizable"];
    v14 = [UIImage systemImageNamed:@"safari"];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __48___UITextLinkInteractionHandler__openURLAction___block_invoke;
    v22 = &unk_1E70F35B8;
    v23 = v4;
    v24 = v6;
    v15 = v6;
    v16 = [(_UITextLinkInteractionHandler *)self _handlerRequiringUnlockedDevice:v11 ^ 1u handler:&v19];
    v17 = [UIAction actionWithTitle:v13 image:v14 identifier:0 handler:v16, v19, v20, v21, v22];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)_copyLinkAction:(id)a3
{
  v3 = [a3 absoluteString];
  if ([v3 length])
  {
    v4 = _UIKitBundle();
    v5 = [v4 localizedStringForKey:@"Copy Link" value:@"Copy" table:@"Localizable"];
    v6 = [UIImage systemImageNamed:@"link"];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49___UITextLinkInteractionHandler__copyLinkAction___block_invoke;
    v9[3] = &unk_1E70F4708;
    v10 = v3;
    v7 = [UIAction actionWithTitle:v5 image:v6 identifier:0 handler:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_shareLinkAction:(id)a3
{
  v4 = [a3 absoluteString];
  if ([v4 length])
  {
    v5 = _UIKitBundle();
    v6 = [v5 localizedStringForKey:@"Share…" value:@"Share…" table:@"Localizable"];
    v7 = [UIImage systemImageNamed:@"square.and.arrow.up"];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __50___UITextLinkInteractionHandler__shareLinkAction___block_invoke;
    v14 = &unk_1E70F35B8;
    v15 = self;
    v16 = v4;
    v8 = [(_UITextLinkInteractionHandler *)self _handlerRequiringUnlockedDevice:1 handler:&v11];
    v9 = [UIAction actionWithTitle:v6 image:v7 identifier:0 handler:v8, v11, v12, v13, v14, v15];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_openAppLinkInDefaultBrowserAction:(id)a3
{
  v4 = a3;
  if (v4 && IsWebBrowserAvailable())
  {
    v5 = [(_UITextItemInteractionHandler *)self textContentView];
    v6 = _UINSLocalizedStringWithDefaultValue(@"Open in Safari", @"Open in Safari");
    v7 = [UIImage systemImageNamed:@"safari"];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __68___UITextLinkInteractionHandler__openAppLinkInDefaultBrowserAction___block_invoke;
    v15 = &unk_1E70F35B8;
    v16 = v4;
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

- (id)_openAppLinkInExternalApplicationAction:(id)a3
{
  v4 = a3;
  v5 = [v4 targetApplicationProxy];
  v6 = [v5 localizedNameForContext:0];

  if (v6)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = _UIKitBundle();
    v9 = [v8 localizedStringForKey:@"Open in %@ (Link Element Action Sheet Button)" value:@"Open in %@" table:@"Localizable"];
    v10 = [v7 localizedStringWithFormat:v9, v6];

    v11 = [(_UITextItemInteractionHandler *)self textContentView];
    v12 = [UIImage systemImageNamed:@"arrow.up.forward.square"];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __73___UITextLinkInteractionHandler__openAppLinkInExternalApplicationAction___block_invoke;
    v17[3] = &unk_1E70F35B8;
    v18 = v4;
    v19 = v11;
    v13 = v11;
    v14 = [(_UITextLinkInteractionHandler *)self _handlerRequiringUnlockedDevice:1 handler:v17];
    v15 = [UIAction actionWithTitle:v10 image:v12 identifier:0 handler:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_addLinkToReadingListAction:(id)a3
{
  v4 = a3;
  if (IsWebBrowserAvailable() && [getSSReadingListClass() supportsURL:v4])
  {
    v5 = [(_UITextLinkInteractionHandler *)self _titleForLink:v4];
    v6 = _UINSLocalizedStringWithDefaultValue(@"Add to Reading List", @"Add to Reading List");
    v7 = [UIImage systemImageNamed:@"book"];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __61___UITextLinkInteractionHandler__addLinkToReadingListAction___block_invoke;
    v15 = &unk_1E70F35B8;
    v16 = v4;
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