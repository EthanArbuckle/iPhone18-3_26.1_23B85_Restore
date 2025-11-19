@interface _UIONavigationBarTitleRenamerRemoteSessionAction
+ (id)_actionWithSettings:(id)a3 responseHandler:(id)a4;
+ (id)didCancelSession:(id)a3 responseHandler:(id)a4;
+ (id)didEndEditingActionWithSession:(id)a3 text:(id)a4 responseHandler:(id)a5;
+ (id)fileRenameDidEndInSession:(id)a3 withFinalURL:(id)a4 responseHandler:(id)a5;
+ (id)fileRenameDidFailInSession:(id)a3 withError:(id)a4 proposedName:(id)a5 responseHandler:(id)a6;
+ (id)shouldEndEditingActionWithSession:(id)a3 text:(id)a4 responseHandler:(id)a5;
+ (id)willBeginRenamingActionWithSession:(id)a3 text:(id)a4 selectedRange:(_NSRange)a5 responseHandler:(id)a6;
- (_NSRange)selectedRange;
- (id)error;
- (id)finalURL;
- (id)text;
- (int)_action;
- (void)handleClientActionToOverlayService:(id)a3;
@end

@implementation _UIONavigationBarTitleRenamerRemoteSessionAction

+ (id)_actionWithSettings:(id)a3 responseHandler:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E698E5F8];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88___UIONavigationBarTitleRenamerRemoteSessionAction__actionWithSettings_responseHandler___block_invoke;
  v13[3] = &unk_1E7108B40;
  v14 = v6;
  v8 = v6;
  v9 = a3;
  v10 = [v7 responderWithHandler:v13];
  v11 = [[a1 alloc] initWithInfo:v9 responder:v10];

  return v11;
}

+ (id)willBeginRenamingActionWithSession:(id)a3 text:(id)a4 selectedRange:(_NSRange)a5 responseHandler:(id)a6
{
  length = a5.length;
  location = a5.location;
  v11 = MEMORY[0x1E698E700];
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = objc_alloc_init(v11);
  [v15 setObject:&unk_1EFE339D0 forSetting:0];
  v16 = [v14 sessionIdentifier];

  [v15 setObject:v16 forSetting:1];
  [v15 setObject:v13 forSetting:2];

  v17 = [MEMORY[0x1E696B098] valueWithRange:{location, length}];
  [v15 setObject:v17 forSetting:3];

  v18 = [a1 _actionWithSettings:v15 responseHandler:v12];

  return v18;
}

+ (id)shouldEndEditingActionWithSession:(id)a3 text:(id)a4 responseHandler:(id)a5
{
  v8 = MEMORY[0x1E698E700];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = objc_alloc_init(v8);
  [v12 setObject:&unk_1EFE339E8 forSetting:0];
  v13 = [v11 sessionIdentifier];

  [v12 setObject:v13 forSetting:1];
  [v12 setObject:v10 forSetting:2];

  v14 = [a1 _actionWithSettings:v12 responseHandler:v9];

  return v14;
}

+ (id)didEndEditingActionWithSession:(id)a3 text:(id)a4 responseHandler:(id)a5
{
  v8 = MEMORY[0x1E698E700];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = objc_alloc_init(v8);
  [v12 setObject:&unk_1EFE33A00 forSetting:0];
  v13 = [v11 sessionIdentifier];

  [v12 setObject:v13 forSetting:1];
  [v12 setObject:v10 forSetting:2];

  v14 = [a1 _actionWithSettings:v12 responseHandler:v9];

  return v14;
}

+ (id)didCancelSession:(id)a3 responseHandler:(id)a4
{
  v6 = MEMORY[0x1E698E700];
  v7 = a4;
  v8 = a3;
  v9 = objc_alloc_init(v6);
  [v9 setObject:&unk_1EFE33A18 forSetting:0];
  v10 = [v8 sessionIdentifier];

  [v9 setObject:v10 forSetting:1];
  v11 = [a1 _actionWithSettings:v9 responseHandler:v7];

  return v11;
}

+ (id)fileRenameDidFailInSession:(id)a3 withError:(id)a4 proposedName:(id)a5 responseHandler:(id)a6
{
  v10 = MEMORY[0x1E698E700];
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = objc_alloc_init(v10);
  [v15 setObject:&unk_1EFE33A30 forSetting:0];
  v16 = [v14 sessionIdentifier];

  [v15 setObject:v16 forSetting:1];
  v17 = [v13 bs_secureEncoded];

  [v15 setObject:v17 forSetting:5];
  [v15 setObject:v12 forSetting:2];

  v18 = [a1 _actionWithSettings:v15 responseHandler:v11];

  return v18;
}

+ (id)fileRenameDidEndInSession:(id)a3 withFinalURL:(id)a4 responseHandler:(id)a5
{
  v8 = MEMORY[0x1E698E700];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = objc_alloc_init(v8);
  [v12 setObject:&unk_1EFE33A48 forSetting:0];
  v13 = [v11 sessionIdentifier];

  [v12 setObject:v13 forSetting:1];
  [v12 setObject:v10 forSetting:4];

  v14 = [a1 _actionWithSettings:v12 responseHandler:v9];

  return v14;
}

- (int)_action
{
  v2 = [(_UIONavigationBarTitleRenamerRemoteSessionAction *)self info];
  v3 = [v2 objectForSetting:0];
  v4 = [v3 intValue];

  return v4;
}

- (id)text
{
  if ([(_UIONavigationBarTitleRenamerRemoteSessionAction *)self _action]== 3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = NSStringFromSelector(a2);
    [v7 handleFailureInMethod:a2 object:self file:@"_UIONavigationBarTitleRenamerRemoteSessionAction.m" lineNumber:154 description:{@"%@ is not supported for action of kind %d", v8, -[_UIONavigationBarTitleRenamerRemoteSessionAction _action](self, "_action")}];
  }

  v4 = [(_UIONavigationBarTitleRenamerRemoteSessionAction *)self info];
  v5 = [v4 objectForSetting:2];

  return v5;
}

- (_NSRange)selectedRange
{
  if ([(_UIONavigationBarTitleRenamerRemoteSessionAction *)self _action])
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = NSStringFromSelector(a2);
    [v11 handleFailureInMethod:a2 object:self file:@"_UIONavigationBarTitleRenamerRemoteSessionAction.m" lineNumber:160 description:{@"%@ is not supported for action of kind %d", v12, -[_UIONavigationBarTitleRenamerRemoteSessionAction _action](self, "_action")}];
  }

  v4 = [(_UIONavigationBarTitleRenamerRemoteSessionAction *)self info];
  v5 = [v4 objectForSetting:3];
  v6 = [v5 rangeValue];
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (id)error
{
  if ([(_UIONavigationBarTitleRenamerRemoteSessionAction *)self _action]!= 4)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = NSStringFromSelector(a2);
    [v9 handleFailureInMethod:a2 object:self file:@"_UIONavigationBarTitleRenamerRemoteSessionAction.m" lineNumber:166 description:{@"%@ is not supported for action of kind %d", v10, -[_UIONavigationBarTitleRenamerRemoteSessionAction _action](self, "_action")}];
  }

  v4 = MEMORY[0x1E696ABC0];
  v5 = [(_UIONavigationBarTitleRenamerRemoteSessionAction *)self info];
  v6 = [v5 objectForSetting:5];
  v7 = [v4 bs_secureDecodedFromData:v6];

  return v7;
}

- (id)finalURL
{
  if ([(_UIONavigationBarTitleRenamerRemoteSessionAction *)self _action]!= 5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = NSStringFromSelector(a2);
    [v7 handleFailureInMethod:a2 object:self file:@"_UIONavigationBarTitleRenamerRemoteSessionAction.m" lineNumber:172 description:{@"%@ is not supported for action of kind %d", v8, -[_UIONavigationBarTitleRenamerRemoteSessionAction _action](self, "_action")}];
  }

  v4 = [(_UIONavigationBarTitleRenamerRemoteSessionAction *)self info];
  v5 = [v4 objectForSetting:4];

  return v5;
}

- (void)handleClientActionToOverlayService:(id)a3
{
  v5 = a3;
  if ([(_UIONavigationBarTitleRenamerRemoteSessionAction *)self canSendResponse])
  {
    v6 = [(_UIONavigationBarTitleRenamerRemoteSessionAction *)self info];
    v7 = [v6 objectForSetting:1];

    v8 = [(_UIONavigationBarTitleRenamerRemoteSessionAction *)self info];
    v9 = [v8 objectForSetting:2];

    v10 = [v5 delegate];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v27 = [MEMORY[0x1E696AAA8] currentHandler];
      [v27 handleFailureInMethod:a2 object:self file:@"_UIONavigationBarTitleRenamerRemoteSessionAction.m" lineNumber:188 description:{@"Invalid parameter not satisfying: %@", @"[session isKindOfClass:[_UINavigationBarTitleRenamerRemoteSession class]]"}];
    }

    v11 = [v10 sessionIdentifier];
    v12 = [v11 isEqual:v7];

    if ((v12 & 1) == 0)
    {
      v28 = [MEMORY[0x1E696AAA8] currentHandler];
      [v28 handleFailureInMethod:a2 object:self file:@"_UIONavigationBarTitleRenamerRemoteSessionAction.m" lineNumber:189 description:{@"Invalid parameter not satisfying: %@", @"[session.sessionIdentifier isEqual:sessionID]"}];
    }

    v13 = [(_UIONavigationBarTitleRenamerRemoteSessionAction *)self _action];
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3:
          [v10 cancelSessionAndNotify:0];
          v15 = 3;
          goto LABEL_19;
        case 4:
          v24 = [(_UIONavigationBarTitleRenamerRemoteSessionAction *)self error];
          v25 = [(_UIONavigationBarTitleRenamerRemoteSessionAction *)self text];
          [v10 fileRenameDidFail:v24 proposedName:v25];

          v15 = 4;
          goto LABEL_19;
        case 5:
          v16 = [(_UIONavigationBarTitleRenamerRemoteSessionAction *)self finalURL];
          [v10 fileRenameDidEnd:v16];

          v15 = 5;
          goto LABEL_19;
      }
    }

    else if (v13)
    {
      if (v13 == 1)
      {
        v21 = [(_UIONavigationBarTitleRenamerRemoteSessionAction *)self text];
        v22 = [v10 _textFieldShouldEndEditingWithText:v21];

        v23 = [_UIONavigationBarTitleRenamerRemoteSessionResponse shouldEndEditingResponse:v22];
LABEL_20:
        v26 = v23;
        [(_UIONavigationBarTitleRenamerRemoteSessionAction *)self sendResponse:v23];

        goto LABEL_21;
      }

      if (v13 == 2)
      {
        v14 = [(_UIONavigationBarTitleRenamerRemoteSessionAction *)self text];
        [v10 _textFieldDidEndEditingWithText:v14];

        v15 = 2;
LABEL_19:
        v23 = [_UIONavigationBarTitleRenamerRemoteSessionResponse successResponseForAction:v15];
        goto LABEL_20;
      }
    }

    else
    {
      v29 = [(_UIONavigationBarTitleRenamerRemoteSessionAction *)self selectedRange];
      v30 = v17;
      v18 = [(_UIONavigationBarTitleRenamerRemoteSessionAction *)self text];
      v19 = [v10 _willBeginRenamingWithText:v18 selectedRange:&v29];

      v20 = [_UIONavigationBarTitleRenamerRemoteSessionResponse willBeginRenamingResponseWithText:v19 selectedRange:v29, v30];
      [(_UIONavigationBarTitleRenamerRemoteSessionAction *)self sendResponse:v20];
    }

LABEL_21:
  }
}

@end