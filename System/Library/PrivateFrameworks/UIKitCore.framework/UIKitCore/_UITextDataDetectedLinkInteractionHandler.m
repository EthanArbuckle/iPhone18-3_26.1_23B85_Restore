@interface _UITextDataDetectedLinkInteractionHandler
- (BOOL)_useDataDetectorsContextMenuConfiguration;
- (CGRect)rect;
- (_UITextDataDetectedLinkInteractionHandler)initWithItem:(id)a3 textContentView:(id)a4;
- (id)_defaultContextMenuConfiguration;
- (id)_defaultDataDetectorsPrimaryAction;
- (id)_defaultPrimaryActionForInteractableItem;
@end

@implementation _UITextDataDetectedLinkInteractionHandler

- (_UITextDataDetectedLinkInteractionHandler)initWithItem:(id)a3 textContentView:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v31.receiver = self;
  v31.super_class = _UITextDataDetectedLinkInteractionHandler;
  v7 = [(_UITextItemInteractionHandler *)&v31 initWithItem:v6 textContentView:a4];
  v8 = v7;
  if (v7)
  {
    p_x = &v7->_rect.origin.x;
    v10 = v6;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v11 = [v10 rects];
    v12 = [v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v33;
      while (2)
      {
        v15 = 0;
        do
        {
          if (*v33 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v32 + 1) + 8 * v15) CGRectValue];
          v17 = v16;
          v19 = v18;
          v21 = v20;
          v23 = v22;
          [v10 location];
          v38.x = v24;
          v38.y = v25;
          v39.origin.x = v17;
          v39.origin.y = v19;
          v39.size.width = v21;
          v39.size.height = v23;
          if (CGRectContainsPoint(v39, v38))
          {

            goto LABEL_12;
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    [v10 bounds];
    v17 = v26;
    v19 = v27;
    v21 = v28;
    v23 = v29;
LABEL_12:

    *p_x = v17;
    v8->_rect.origin.y = v19;
    v8->_rect.size.width = v21;
    v8->_rect.size.height = v23;
  }

  return v8;
}

- (BOOL)_useDataDetectorsContextMenuConfiguration
{
  v3 = [(_UITextItemInteractionHandler *)self item];
  v4 = [v3 link];

  v5 = v4;
  v6 = [v5 scheme];
  v7 = [v6 hasPrefix:@"x-apple-data-detectors"];

  if (v7)
  {
    goto LABEL_4;
  }

  if (!DataDetectorsUILibrary())
  {

    goto LABEL_8;
  }

  if ([v5 dd_isMaps:1])
  {
LABEL_4:
    v8 = 0;
    v9 = v5;
LABEL_9:

    goto LABEL_10;
  }

  v10 = [v5 dd_isAnySimpleTelephonyScheme];

  if ((v10 & 1) == 0)
  {
LABEL_8:
    v9 = [(_UITextItemInteractionHandler *)self item];
    v11 = [(_UITextItemInteractionHandler *)self textContentView];
    v12 = [v9 range];
    v13 = [v12 asRange];

    v14 = [v11 textStorage];
    v15 = [v14 attribute:@"DDResultAttributeName" atIndex:v13 effectiveRange:0];
    v8 = v15 == 0;

    goto LABEL_9;
  }

  v8 = 0;
LABEL_10:
  v16 = [(_UITextItemInteractionHandler *)self _menuForInteractableItem];
  v17 = v16;
  v18 = 1;
  if (v8 && v16)
  {
    v19 = [v16 identifier];
    v18 = [v19 isEqualToString:@"UITextItemDefaultMenuIdentifier"];
  }

  return v18;
}

- (id)_defaultContextMenuConfiguration
{
  v3 = [(_UITextItemInteractionHandler *)self textContentView];
  v4 = [v3 textStorage];

  v26 = 0;
  v27 = &v26;
  v28 = 0x2050000000;
  v5 = qword_1ED49C6D0;
  v29 = qword_1ED49C6D0;
  if (!qword_1ED49C6D0)
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __getDDContextMenuActionClass_block_invoke;
    v24 = &unk_1E70F2F20;
    v25 = &v26;
    __getDDContextMenuActionClass_block_invoke(&v21);
    v5 = v27[3];
  }

  v6 = v5;
  _Block_object_dispose(&v26, 8);
  v7 = [v4 dd_contextAtLocation:{-[_UITextItemInteractionHandler range](self, "range")}];
  v8 = [v7 mutableCopy];

  size = self->_rect.size;
  v20[0] = self->_rect.origin;
  v20[1] = size;
  v10 = [MEMORY[0x1E696B098] valueWithBytes:v20 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v11 = qword_1ED49C6D8;
  v29 = qword_1ED49C6D8;
  if (!qword_1ED49C6D8)
  {
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __getkDataDetectorsSourceRectKeySymbolLoc_block_invoke;
    v24 = &unk_1E70F2F20;
    v25 = &v26;
    v12 = DataDetectorsUILibrary();
    v13 = dlsym(v12, "kDataDetectorsSourceRectKey");
    *(v25[1] + 24) = v13;
    qword_1ED49C6D8 = *(v25[1] + 24);
    v11 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (v11)
  {
    [v8 setObject:v10 forKeyedSubscript:*v11];

    v14 = [(_UITextItemInteractionHandler *)self range];
    v15 = [(_UITextItemInteractionHandler *)self textContentView];
    v16 = [v5 contextMenuConfigurationAtIndex:v14 inTextStorage:v4 inView:v15 context:v8 menuIdentifier:0];

    return v16;
  }

  else
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkDataDetectorsSourceRectKey(void)"];
    [v18 handleFailureInFunction:v19 file:@"_UITextItemInteractionHandler.m" lineNumber:43 description:{@"%s", dlerror()}];

    __break(1u);
  }

  return result;
}

- (id)_defaultPrimaryActionForInteractableItem
{
  v3 = [(_UITextDataDetectedLinkInteractionHandler *)self _dataDetectorsRevealControllerAction];
  if (!v3)
  {
    v3 = [(_UITextDataDetectedLinkInteractionHandler *)self _defaultDataDetectorsPrimaryAction];
    if (!v3)
    {
      v5.receiver = self;
      v5.super_class = _UITextDataDetectedLinkInteractionHandler;
      v3 = [(_UITextLinkInteractionHandler *)&v5 _defaultPrimaryActionForInteractableItem];
    }
  }

  return v3;
}

- (id)_defaultDataDetectorsPrimaryAction
{
  v3 = [(_UITextItemInteractionHandler *)self range];
  v4 = [(_UITextItemInteractionHandler *)self textContentView];
  v5 = [v4 textStorage];

  v37 = 0;
  v38 = &v37;
  v39 = 0x2050000000;
  v6 = getDDDetectionControllerClass_softClass;
  v40 = getDDDetectionControllerClass_softClass;
  if (!getDDDetectionControllerClass_softClass)
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __getDDDetectionControllerClass_block_invoke;
    v36[3] = &unk_1E70F2F20;
    v36[4] = &v37;
    __getDDDetectionControllerClass_block_invoke(v36);
    v6 = v38[3];
  }

  v7 = v6;
  _Block_object_dispose(&v37, 8);
  v8 = [v5 dd_contextAtLocation:v3];
  v9 = [v6 sharedController];
  v10 = [v9 shouldImmediatelyShowActionSheetForTapAtIndex:v3 ofStorage:v5];

  v11 = [v6 sharedController];
  v12 = v11;
  if (v10)
  {
    v13 = [v11 titleForResultAtIndex:v3 ofStorage:v5 context:v8];

    if (![v13 length])
    {
      v14 = [(_UITextItemInteractionHandler *)self range];
      v16 = [v5 attributedSubstringFromRange:{v14, v15}];
      v17 = [v16 string];

      v13 = v17;
    }

    v18 = [(_UITextItemInteractionHandler *)self item];
    v19 = [v18 contextMenuInteraction];

    p_rect = &self->_rect;
    MidX = CGRectGetMidX(*p_rect);
    MidY = CGRectGetMidY(*p_rect);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __79___UITextDataDetectedLinkInteractionHandler__defaultDataDetectorsPrimaryAction__block_invoke;
    v34[3] = &unk_1E70F4780;
    v23 = v35;
    v35[0] = v19;
    *&v35[1] = MidX;
    *&v35[2] = MidY;
    v24 = v19;
    v25 = [UIAction actionWithTitle:v13 image:0 identifier:@"_UITextItemInteractionHandler.presentMenu.action" handler:v34];
    goto LABEL_9;
  }

  v13 = [v11 defaultActionAtIndex:v3 ofStorage:v5 context:v8];

  if (v13)
  {
    v26 = [(_UITextItemInteractionHandler *)self textContentView];
    v27 = [v13 localizedName];
    v28 = [v13 icon];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __79___UITextDataDetectedLinkInteractionHandler__defaultDataDetectorsPrimaryAction__block_invoke_2;
    v30[3] = &unk_1E70F47A8;
    v33 = v6;
    v23 = &v31;
    v13 = v13;
    v31 = v13;
    v32 = v26;
    v24 = v26;
    v25 = [UIAction actionWithTitle:v27 image:v28 identifier:0 handler:v30];

LABEL_9:
    goto LABEL_10;
  }

  v25 = 0;
LABEL_10:

  return v25;
}

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end