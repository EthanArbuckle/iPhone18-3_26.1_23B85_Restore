@interface _UIONavigationBarTitleRenamerRemoteSessionAction
+ (id)_actionWithSettings:(id)settings responseHandler:(id)handler;
+ (id)didCancelSession:(id)session responseHandler:(id)handler;
+ (id)didEndEditingActionWithSession:(id)session text:(id)text responseHandler:(id)handler;
+ (id)fileRenameDidEndInSession:(id)session withFinalURL:(id)l responseHandler:(id)handler;
+ (id)fileRenameDidFailInSession:(id)session withError:(id)error proposedName:(id)name responseHandler:(id)handler;
+ (id)shouldEndEditingActionWithSession:(id)session text:(id)text responseHandler:(id)handler;
+ (id)willBeginRenamingActionWithSession:(id)session text:(id)text selectedRange:(_NSRange)range responseHandler:(id)handler;
- (_NSRange)selectedRange;
- (id)error;
- (id)finalURL;
- (id)text;
- (int)_action;
- (void)handleClientActionToOverlayService:(id)service;
@end

@implementation _UIONavigationBarTitleRenamerRemoteSessionAction

+ (id)_actionWithSettings:(id)settings responseHandler:(id)handler
{
  handlerCopy = handler;
  v7 = MEMORY[0x1E698E5F8];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88___UIONavigationBarTitleRenamerRemoteSessionAction__actionWithSettings_responseHandler___block_invoke;
  v13[3] = &unk_1E7108B40;
  v14 = handlerCopy;
  v8 = handlerCopy;
  settingsCopy = settings;
  v10 = [v7 responderWithHandler:v13];
  v11 = [[self alloc] initWithInfo:settingsCopy responder:v10];

  return v11;
}

+ (id)willBeginRenamingActionWithSession:(id)session text:(id)text selectedRange:(_NSRange)range responseHandler:(id)handler
{
  length = range.length;
  location = range.location;
  v11 = MEMORY[0x1E698E700];
  handlerCopy = handler;
  textCopy = text;
  sessionCopy = session;
  v15 = objc_alloc_init(v11);
  [v15 setObject:&unk_1EFE339D0 forSetting:0];
  sessionIdentifier = [sessionCopy sessionIdentifier];

  [v15 setObject:sessionIdentifier forSetting:1];
  [v15 setObject:textCopy forSetting:2];

  v17 = [MEMORY[0x1E696B098] valueWithRange:{location, length}];
  [v15 setObject:v17 forSetting:3];

  v18 = [self _actionWithSettings:v15 responseHandler:handlerCopy];

  return v18;
}

+ (id)shouldEndEditingActionWithSession:(id)session text:(id)text responseHandler:(id)handler
{
  v8 = MEMORY[0x1E698E700];
  handlerCopy = handler;
  textCopy = text;
  sessionCopy = session;
  v12 = objc_alloc_init(v8);
  [v12 setObject:&unk_1EFE339E8 forSetting:0];
  sessionIdentifier = [sessionCopy sessionIdentifier];

  [v12 setObject:sessionIdentifier forSetting:1];
  [v12 setObject:textCopy forSetting:2];

  v14 = [self _actionWithSettings:v12 responseHandler:handlerCopy];

  return v14;
}

+ (id)didEndEditingActionWithSession:(id)session text:(id)text responseHandler:(id)handler
{
  v8 = MEMORY[0x1E698E700];
  handlerCopy = handler;
  textCopy = text;
  sessionCopy = session;
  v12 = objc_alloc_init(v8);
  [v12 setObject:&unk_1EFE33A00 forSetting:0];
  sessionIdentifier = [sessionCopy sessionIdentifier];

  [v12 setObject:sessionIdentifier forSetting:1];
  [v12 setObject:textCopy forSetting:2];

  v14 = [self _actionWithSettings:v12 responseHandler:handlerCopy];

  return v14;
}

+ (id)didCancelSession:(id)session responseHandler:(id)handler
{
  v6 = MEMORY[0x1E698E700];
  handlerCopy = handler;
  sessionCopy = session;
  v9 = objc_alloc_init(v6);
  [v9 setObject:&unk_1EFE33A18 forSetting:0];
  sessionIdentifier = [sessionCopy sessionIdentifier];

  [v9 setObject:sessionIdentifier forSetting:1];
  v11 = [self _actionWithSettings:v9 responseHandler:handlerCopy];

  return v11;
}

+ (id)fileRenameDidFailInSession:(id)session withError:(id)error proposedName:(id)name responseHandler:(id)handler
{
  v10 = MEMORY[0x1E698E700];
  handlerCopy = handler;
  nameCopy = name;
  errorCopy = error;
  sessionCopy = session;
  v15 = objc_alloc_init(v10);
  [v15 setObject:&unk_1EFE33A30 forSetting:0];
  sessionIdentifier = [sessionCopy sessionIdentifier];

  [v15 setObject:sessionIdentifier forSetting:1];
  bs_secureEncoded = [errorCopy bs_secureEncoded];

  [v15 setObject:bs_secureEncoded forSetting:5];
  [v15 setObject:nameCopy forSetting:2];

  v18 = [self _actionWithSettings:v15 responseHandler:handlerCopy];

  return v18;
}

+ (id)fileRenameDidEndInSession:(id)session withFinalURL:(id)l responseHandler:(id)handler
{
  v8 = MEMORY[0x1E698E700];
  handlerCopy = handler;
  lCopy = l;
  sessionCopy = session;
  v12 = objc_alloc_init(v8);
  [v12 setObject:&unk_1EFE33A48 forSetting:0];
  sessionIdentifier = [sessionCopy sessionIdentifier];

  [v12 setObject:sessionIdentifier forSetting:1];
  [v12 setObject:lCopy forSetting:4];

  v14 = [self _actionWithSettings:v12 responseHandler:handlerCopy];

  return v14;
}

- (int)_action
{
  info = [(_UIONavigationBarTitleRenamerRemoteSessionAction *)self info];
  v3 = [info objectForSetting:0];
  intValue = [v3 intValue];

  return intValue;
}

- (id)text
{
  if ([(_UIONavigationBarTitleRenamerRemoteSessionAction *)self _action]== 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIONavigationBarTitleRenamerRemoteSessionAction.m" lineNumber:154 description:{@"%@ is not supported for action of kind %d", v8, -[_UIONavigationBarTitleRenamerRemoteSessionAction _action](self, "_action")}];
  }

  info = [(_UIONavigationBarTitleRenamerRemoteSessionAction *)self info];
  v5 = [info objectForSetting:2];

  return v5;
}

- (_NSRange)selectedRange
{
  if ([(_UIONavigationBarTitleRenamerRemoteSessionAction *)self _action])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIONavigationBarTitleRenamerRemoteSessionAction.m" lineNumber:160 description:{@"%@ is not supported for action of kind %d", v12, -[_UIONavigationBarTitleRenamerRemoteSessionAction _action](self, "_action")}];
  }

  info = [(_UIONavigationBarTitleRenamerRemoteSessionAction *)self info];
  v5 = [info objectForSetting:3];
  rangeValue = [v5 rangeValue];
  v8 = v7;

  v9 = rangeValue;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (id)error
{
  if ([(_UIONavigationBarTitleRenamerRemoteSessionAction *)self _action]!= 4)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIONavigationBarTitleRenamerRemoteSessionAction.m" lineNumber:166 description:{@"%@ is not supported for action of kind %d", v10, -[_UIONavigationBarTitleRenamerRemoteSessionAction _action](self, "_action")}];
  }

  v4 = MEMORY[0x1E696ABC0];
  info = [(_UIONavigationBarTitleRenamerRemoteSessionAction *)self info];
  v6 = [info objectForSetting:5];
  v7 = [v4 bs_secureDecodedFromData:v6];

  return v7;
}

- (id)finalURL
{
  if ([(_UIONavigationBarTitleRenamerRemoteSessionAction *)self _action]!= 5)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = NSStringFromSelector(a2);
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIONavigationBarTitleRenamerRemoteSessionAction.m" lineNumber:172 description:{@"%@ is not supported for action of kind %d", v8, -[_UIONavigationBarTitleRenamerRemoteSessionAction _action](self, "_action")}];
  }

  info = [(_UIONavigationBarTitleRenamerRemoteSessionAction *)self info];
  v5 = [info objectForSetting:4];

  return v5;
}

- (void)handleClientActionToOverlayService:(id)service
{
  serviceCopy = service;
  if ([(_UIONavigationBarTitleRenamerRemoteSessionAction *)self canSendResponse])
  {
    info = [(_UIONavigationBarTitleRenamerRemoteSessionAction *)self info];
    v7 = [info objectForSetting:1];

    info2 = [(_UIONavigationBarTitleRenamerRemoteSessionAction *)self info];
    v9 = [info2 objectForSetting:2];

    delegate = [serviceCopy delegate];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIONavigationBarTitleRenamerRemoteSessionAction.m" lineNumber:188 description:{@"Invalid parameter not satisfying: %@", @"[session isKindOfClass:[_UINavigationBarTitleRenamerRemoteSession class]]"}];
    }

    sessionIdentifier = [delegate sessionIdentifier];
    v12 = [sessionIdentifier isEqual:v7];

    if ((v12 & 1) == 0)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UIONavigationBarTitleRenamerRemoteSessionAction.m" lineNumber:189 description:{@"Invalid parameter not satisfying: %@", @"[session.sessionIdentifier isEqual:sessionID]"}];
    }

    _action = [(_UIONavigationBarTitleRenamerRemoteSessionAction *)self _action];
    if (_action > 2)
    {
      switch(_action)
      {
        case 3:
          [delegate cancelSessionAndNotify:0];
          v15 = 3;
          goto LABEL_19;
        case 4:
          error = [(_UIONavigationBarTitleRenamerRemoteSessionAction *)self error];
          text = [(_UIONavigationBarTitleRenamerRemoteSessionAction *)self text];
          [delegate fileRenameDidFail:error proposedName:text];

          v15 = 4;
          goto LABEL_19;
        case 5:
          finalURL = [(_UIONavigationBarTitleRenamerRemoteSessionAction *)self finalURL];
          [delegate fileRenameDidEnd:finalURL];

          v15 = 5;
          goto LABEL_19;
      }
    }

    else if (_action)
    {
      if (_action == 1)
      {
        text2 = [(_UIONavigationBarTitleRenamerRemoteSessionAction *)self text];
        v22 = [delegate _textFieldShouldEndEditingWithText:text2];

        v23 = [_UIONavigationBarTitleRenamerRemoteSessionResponse shouldEndEditingResponse:v22];
LABEL_20:
        v26 = v23;
        [(_UIONavigationBarTitleRenamerRemoteSessionAction *)self sendResponse:v23];

        goto LABEL_21;
      }

      if (_action == 2)
      {
        text3 = [(_UIONavigationBarTitleRenamerRemoteSessionAction *)self text];
        [delegate _textFieldDidEndEditingWithText:text3];

        v15 = 2;
LABEL_19:
        v23 = [_UIONavigationBarTitleRenamerRemoteSessionResponse successResponseForAction:v15];
        goto LABEL_20;
      }
    }

    else
    {
      selectedRange = [(_UIONavigationBarTitleRenamerRemoteSessionAction *)self selectedRange];
      v30 = v17;
      text4 = [(_UIONavigationBarTitleRenamerRemoteSessionAction *)self text];
      v19 = [delegate _willBeginRenamingWithText:text4 selectedRange:&selectedRange];

      v20 = [_UIONavigationBarTitleRenamerRemoteSessionResponse willBeginRenamingResponseWithText:v19 selectedRange:selectedRange, v30];
      [(_UIONavigationBarTitleRenamerRemoteSessionAction *)self sendResponse:v20];
    }

LABEL_21:
  }
}

@end