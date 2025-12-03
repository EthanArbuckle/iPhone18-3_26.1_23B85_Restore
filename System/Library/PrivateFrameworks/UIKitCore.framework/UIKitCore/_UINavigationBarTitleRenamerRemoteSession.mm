@interface _UINavigationBarTitleRenamerRemoteSession
- (BOOL)_client_textFieldShouldEndEditingWithText:(id)text;
- (BOOL)_isServerSide;
- (BOOL)_server_textFieldShouldEndEditingWithText:(id)text;
- (BOOL)_textFieldShouldEndEditingWithText:(id)text;
- (NSURL)fileURL;
- (_UINavigationBarTitleRenamerRemoteSession)initWithBSXPCCoder:(id)coder;
- (_UINavigationBarTitleRenamerRemoteSession)initWithFileURL:(id)l iconMetadata:(id)metadata error:(id *)error scene:(id)scene;
- (_UINavigationBarTitleRenamerRemoteSession)initWithSuggestedTitle:(id)title iconMetadata:(id)metadata scene:(id)scene;
- (id)_client_willBeginRenamingWithText:(id)text selectedRange:(_NSRange *)range;
- (id)_server_willBeginRenamingWithText:(id)text selectedRange:(_NSRange *)range;
- (id)_willBeginRenamingWithText:(id)text selectedRange:(_NSRange *)range;
- (id)createRenamerContentView;
- (void)_attemptLocalRenameForFileURL:(id)l proposedName:(id)name completionHandler:(id)handler;
- (void)_client_cancelSessionAndNotify:(BOOL)notify;
- (void)_client_fileRenameDidEnd:(id)end;
- (void)_client_fileRenameDidFail:(id)fail proposedName:(id)name;
- (void)_client_sessionDidEnd;
- (void)_client_sessionDidStartInRenamer:(id)renamer;
- (void)_client_textFieldDidEndEditingWithText:(id)text;
- (void)_server_cancelSessionAndNotify:(BOOL)notify;
- (void)_server_fileRenameDidEnd:(id)end;
- (void)_server_fileRenameDidFail:(id)fail proposedName:(id)name;
- (void)_server_sessionDidEnd;
- (void)_server_sessionDidStartInRenamer:(id)renamer;
- (void)_server_textFieldDidEndEditingWithText:(id)text;
- (void)_textFieldDidEndEditingWithText:(id)text;
- (void)_updateSessionWithAction:(int64_t)action;
- (void)cancelSessionAndNotify:(BOOL)notify;
- (void)dealloc;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)fileRenameDidEnd:(id)end;
- (void)fileRenameDidFail:(id)fail proposedName:(id)name;
- (void)sessionDidEnd;
- (void)sessionDidStartInRenamer:(id)renamer;
- (void)setConnection:(id)connection;
@end

@implementation _UINavigationBarTitleRenamerRemoteSession

- (_UINavigationBarTitleRenamerRemoteSession)initWithSuggestedTitle:(id)title iconMetadata:(id)metadata scene:(id)scene
{
  titleCopy = title;
  metadataCopy = metadata;
  sceneCopy = scene;
  if (_UIApplicationProcessIsOverlayUI())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UINavigationBarTitleRenamerRemoteSession.m" lineNumber:348 description:@"initializing a remote session in this process is not allowed outside of decoding a session from another process."];
  }

  v21.receiver = self;
  v21.super_class = _UINavigationBarTitleRenamerRemoteSession;
  v12 = [(_UINavigationBarTitleRenamerSession *)&v21 initWithSuggestedTitle:titleCopy iconMetadata:metadataCopy];
  if (v12)
  {
    v13 = objc_opt_new();
    [(_UIOverlayService *)v13 setDelegate:v12];
    [(_UIOverlayService *)v13 prewarmConnection];
    overlayService = v12->_overlayService;
    v12->_overlayService = v13;
    v15 = v13;

    _FBSScene = [sceneCopy _FBSScene];
    identityToken = [_FBSScene identityToken];
    sceneOriginIdentityToken = v12->_sceneOriginIdentityToken;
    v12->_sceneOriginIdentityToken = identityToken;

    v12->_currentState = 1;
  }

  return v12;
}

- (_UINavigationBarTitleRenamerRemoteSession)initWithFileURL:(id)l iconMetadata:(id)metadata error:(id *)error scene:(id)scene
{
  v34 = *MEMORY[0x1E69E9840];
  lCopy = l;
  sceneCopy = scene;
  metadataCopy = metadata;
  if (_UIApplicationProcessIsOverlayUI())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UINavigationBarTitleRenamerRemoteSession.m" lineNumber:376 description:@"initializing a remote session in this process is not allowed outside of decoding a session from another process."];
  }

  lastPathComponent = [lCopy lastPathComponent];
  stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
  v16 = [(_UINavigationBarTitleRenamerRemoteSession *)self initWithSuggestedTitle:stringByDeletingPathExtension iconMetadata:metadataCopy scene:sceneCopy];

  if (!v16)
  {
    goto LABEL_9;
  }

  startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
  v29 = 0;
  v18 = [getFPSandboxingURLWrapperClass() wrapperWithURL:lCopy readonly:0 error:&v29];
  v19 = v29;
  urlWrapper = v16->_urlWrapper;
  v16->_urlWrapper = v18;

  if (startAccessingSecurityScopedResource)
  {
    [lCopy stopAccessingSecurityScopedResource];
  }

  if (v19)
  {
    v21 = v19;
    *error = v19;
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("OOPRename", &initWithFileURL_iconMetadata_error_scene____s_category);
    if (*CategoryCachedImpl)
    {
      v26 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = v26;
        sessionIdentifier = [(_UINavigationBarTitleRenamerSession *)v16 sessionIdentifier];
        *buf = 138412546;
        v31 = sessionIdentifier;
        v32 = 2112;
        v33 = v19;
        _os_log_impl(&dword_188A29000, v27, OS_LOG_TYPE_ERROR, "[%@] Unable to get sandbox extension for URL. Session will behave like a local session: %@", buf, 0x16u);
      }
    }

    v23 = 0;
  }

  else
  {
LABEL_9:
    v23 = v16;
  }

  return v23;
}

- (void)dealloc
{
  [(_UINavigationBarTitleRenamerRemoteSession *)self setConnection:0];
  v3.receiver = self;
  v3.super_class = _UINavigationBarTitleRenamerRemoteSession;
  [(_UINavigationBarTitleRenamerRemoteSession *)&v3 dealloc];
}

- (id)createRenamerContentView
{
  overlayService = [(_UINavigationBarTitleRenamerRemoteSession *)self overlayService];

  if (overlayService)
  {
    v4 = [[_UINavigationBarTitleRenameRemoteView alloc] initWithSession:self];
  }

  else
  {
    v4 = [[_UINavigationBarTitleRenameTextField alloc] initWithSession:self];
    sceneOriginIdentityToken = [(_UINavigationBarTitleRenamerRemoteSession *)self sceneOriginIdentityToken];
    [(_UINavigationBarTitleRenameRemoteView *)v4 _setLayeringSceneIdentity:sceneOriginIdentityToken];
  }

  return v4;
}

- (NSURL)fileURL
{
  urlWrapper = [(_UINavigationBarTitleRenamerRemoteSession *)self urlWrapper];
  v3 = [urlWrapper url];

  return v3;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = _UINavigationBarTitleRenamerRemoteSession;
  [(_UINavigationBarTitleRenamerSession *)&v6 encodeWithBSXPCCoder:coderCopy];
  urlWrapper = self->_urlWrapper;
  if (urlWrapper)
  {
    [coderCopy encodeObject:urlWrapper forKey:@"_UINavigationBarTitleRenamerRemoteSessionURLWrapper"];
  }

  [coderCopy encodeObject:self->_sceneOriginIdentityToken forKey:@"_UINavigationBarTitleRenamerRemoteSessionSceneOriginIdentityToken"];
}

- (_UINavigationBarTitleRenamerRemoteSession)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = _UINavigationBarTitleRenamerRemoteSession;
  v5 = [(_UINavigationBarTitleRenamerSession *)&v11 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:getFPSandboxingURLWrapperClass() forKey:@"_UINavigationBarTitleRenamerRemoteSessionURLWrapper"];
    urlWrapper = v5->_urlWrapper;
    v5->_urlWrapper = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_UINavigationBarTitleRenamerRemoteSessionSceneOriginIdentityToken"];
    sceneOriginIdentityToken = v5->_sceneOriginIdentityToken;
    v5->_sceneOriginIdentityToken = v8;

    v5->_currentState = 1;
  }

  return v5;
}

- (BOOL)_isServerSide
{
  connection = [(_UINavigationBarTitleRenamerRemoteSession *)self connection];
  v3 = connection != 0;

  return v3;
}

- (void)sessionDidStartInRenamer:(id)renamer
{
  v15 = *MEMORY[0x1E69E9840];
  renamerCopy = renamer;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("OOPRename", &sessionDidStartInRenamer____s_category);
  if (*CategoryCachedImpl)
  {
    v6 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      [(_UINavigationBarTitleRenamerSession *)self sessionIdentifier];
      *(&v9 + 4) = LODWORD(v9) = 138412290;
      v8 = *(&v9 + 4);
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "[%@] Session did start.", &v9, 0xCu);
    }
  }

  v13 = 0;
  *&v9 = self;
  *(&v9 + 1) = renamerCopy;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v14 = 0;
  handleEvent(stateMachineSpec_6, self->_currentState, 0, &v9, &self->_currentState);
}

- (void)sessionDidEnd
{
  v10 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("OOPRename", &sessionDidEnd___s_category);
  if (*CategoryCachedImpl)
  {
    v4 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = v4;
      [(_UINavigationBarTitleRenamerSession *)self sessionIdentifier];
      *&v7[4] = *v7 = 138412290;
      v6 = *&v7[4];
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "[%@] Session did end.", v7, 0xCu);
    }
  }

  v9 = 0u;
  v8 = 0u;
  *&v7[8] = 0u;
  *v7 = self;
  handleEvent(stateMachineSpec_6, self->_currentState, 4, v7, &self->_currentState);
}

- (void)cancelSessionAndNotify:(BOOL)notify
{
  v12 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("OOPRename", &cancelSessionAndNotify____s_category);
  if (*CategoryCachedImpl)
  {
    v6 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      [(_UINavigationBarTitleRenamerSession *)self sessionIdentifier];
      *&v9[4] = *v9 = 138412290;
      v8 = *&v9[4];
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "[%@] Session did cancel.", v9, 0xCu);
    }
  }

  v10 = 0u;
  v11 = 0u;
  *&v9[8] = 0u;
  *v9 = self;
  BYTE8(v10) = notify;
  handleEvent(stateMachineSpec_6, self->_currentState, 7, v9, &self->_currentState);
}

- (id)_willBeginRenamingWithText:(id)text selectedRange:(_NSRange *)range
{
  textCopy = text;
  v12 = 0;
  v13 = 0;
  v9[0] = self;
  v9[1] = 0;
  v10 = textCopy;
  rangeCopy = range;
  v14 = 0;
  if ((handleEvent(stateMachineSpec_6, self->_currentState, 1, v9, &self->_currentState) & 1) == 0)
  {
    [(_UINavigationBarTitleRenamerRemoteSession *)self cancelSessionAndNotify:1];
  }

  v7 = v10;

  return v7;
}

- (BOOL)_textFieldShouldEndEditingWithText:(id)text
{
  textCopy = text;
  v7[0] = self;
  v7[1] = 0;
  v7[2] = textCopy;
  v8 = 0u;
  v9 = 0u;
  if ((handleEvent(stateMachineSpec_6, self->_currentState, 2, v7, &self->_currentState) & 1) == 0)
  {
    [(_UINavigationBarTitleRenamerRemoteSession *)self cancelSessionAndNotify:1];
  }

  v5 = BYTE9(v8);

  return v5;
}

- (void)_textFieldDidEndEditingWithText:(id)text
{
  textCopy = text;
  v5[0] = self;
  v5[1] = 0;
  v5[2] = textCopy;
  v6 = 0u;
  v7 = 0u;
  if ((handleEvent(stateMachineSpec_6, self->_currentState, 3, v5, &self->_currentState) & 1) == 0)
  {
    [(_UINavigationBarTitleRenamerRemoteSession *)self cancelSessionAndNotify:1];
  }
}

- (void)fileRenameDidFail:(id)fail proposedName:(id)name
{
  v18 = *MEMORY[0x1E69E9840];
  failCopy = fail;
  nameCopy = name;
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("OOPRename", &fileRenameDidFail_proposedName____s_category);
  if (*CategoryCachedImpl)
  {
    v10 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      [(_UINavigationBarTitleRenamerSession *)self sessionIdentifier];
      *&v13[4] = *v13 = 138412546;
      *&v13[12] = 2112;
      *&v13[14] = failCopy;
      v12 = *&v13[4];
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "[%@] Session file rename did fail: %@", v13, 0x16u);
    }
  }

  *v13 = self;
  *&v13[8] = 0;
  v14 = 0;
  v15 = 0;
  *&v13[16] = nameCopy;
  v9 = failCopy;
  v16 = v9;
  v17 = 0;
  if ((handleEvent(stateMachineSpec_6, self->_currentState, 5, v13, &self->_currentState) & 1) == 0)
  {
    [(_UINavigationBarTitleRenamerRemoteSession *)self cancelSessionAndNotify:1];
  }
}

- (void)fileRenameDidEnd:(id)end
{
  v6 = 0;
  v5[0] = self;
  memset(&v5[1], 0, 32);
  endCopy = end;
  v7 = endCopy;
  if ((handleEvent(stateMachineSpec_6, *(v5[0] + 56), 6, v5, (v5[0] + 56)) & 1) == 0)
  {
    [(_UINavigationBarTitleRenamerRemoteSession *)self cancelSessionAndNotify:1];
  }
}

- (void)_updateSessionWithAction:(int64_t)action
{
  v5 = [_UIONavigationBarTitleRenamerConnectionAction alloc];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70___UINavigationBarTitleRenamerRemoteSession__updateSessionWithAction___block_invoke;
  v8[3] = &unk_1E711D748;
  v8[4] = self;
  v6 = [(_UIONavigationBarTitleRenamerConnectionAction *)v5 initWithSession:self action:action responseHandler:v8];
  overlayService = [(_UINavigationBarTitleRenamerRemoteSession *)self overlayService];
  [overlayService sendOverlayAction:v6];
}

- (void)_client_sessionDidStartInRenamer:(id)renamer
{
  v4.receiver = self;
  v4.super_class = _UINavigationBarTitleRenamerRemoteSession;
  [(_UINavigationBarTitleRenamerSession *)&v4 sessionDidStartInRenamer:renamer];
  [(_UINavigationBarTitleRenamerRemoteSession *)self _updateSessionWithAction:0];
}

- (void)_client_sessionDidEnd
{
  v3.receiver = self;
  v3.super_class = _UINavigationBarTitleRenamerRemoteSession;
  [(_UINavigationBarTitleRenamerSession *)&v3 sessionDidEnd];
  [(_UINavigationBarTitleRenamerRemoteSession *)self _updateSessionWithAction:1];
}

- (void)_client_cancelSessionAndNotify:(BOOL)notify
{
  notifyCopy = notify;
  v5.receiver = self;
  v5.super_class = _UINavigationBarTitleRenamerRemoteSession;
  [(_UINavigationBarTitleRenamerSession *)&v5 cancelSession];
  if (notifyCopy)
  {
    [(_UINavigationBarTitleRenamerRemoteSession *)self _updateSessionWithAction:2];
  }
}

- (id)_client_willBeginRenamingWithText:(id)text selectedRange:(_NSRange *)range
{
  v6.receiver = self;
  v6.super_class = _UINavigationBarTitleRenamerRemoteSession;
  v4 = [(_UINavigationBarTitleRenamerSession *)&v6 _willBeginRenamingWithText:text selectedRange:range];

  return v4;
}

- (BOOL)_client_textFieldShouldEndEditingWithText:(id)text
{
  v4.receiver = self;
  v4.super_class = _UINavigationBarTitleRenamerRemoteSession;
  return [(_UINavigationBarTitleRenamerSession *)&v4 _textFieldShouldEndEditingWithText:text];
}

- (void)_client_textFieldDidEndEditingWithText:(id)text
{
  v3.receiver = self;
  v3.super_class = _UINavigationBarTitleRenamerRemoteSession;
  [(_UINavigationBarTitleRenamerSession *)&v3 _textFieldDidEndEditingWithText:text];
}

- (void)_attemptLocalRenameForFileURL:(id)l proposedName:(id)name completionHandler:(id)handler
{
  lCopy = l;
  nameCopy = name;
  handlerCopy = handler;
  v10 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106___UINavigationBarTitleRenamerRemoteSession__attemptLocalRenameForFileURL_proposedName_completionHandler___block_invoke;
  block[3] = &unk_1E70FCE28;
  v15 = lCopy;
  v16 = nameCopy;
  v17 = handlerCopy;
  v11 = handlerCopy;
  v12 = nameCopy;
  v13 = lCopy;
  dispatch_async(v10, block);
}

- (void)_client_fileRenameDidFail:(id)fail proposedName:(id)name
{
  failCopy = fail;
  nameCopy = name;
  fileURL = [(_UINavigationBarTitleRenamerRemoteSession *)self fileURL];
  domain = [failCopy domain];
  if (![domain isEqualToString:*MEMORY[0x1E696A250]] || objc_msgSend(failCopy, "code") != 4)
  {

    goto LABEL_6;
  }

  if (!fileURL)
  {
LABEL_6:
    attachedRenamer = [(_UINavigationBarTitleRenamerSession *)self attachedRenamer];
    [attachedRenamer _session:self fileRenameDidFail:failCopy];

    goto LABEL_7;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84___UINavigationBarTitleRenamerRemoteSession__client_fileRenameDidFail_proposedName___block_invoke;
  v11[3] = &unk_1E7121830;
  v11[4] = self;
  [(_UINavigationBarTitleRenamerRemoteSession *)self _attemptLocalRenameForFileURL:fileURL proposedName:nameCopy completionHandler:v11];
LABEL_7:
}

- (void)_client_fileRenameDidEnd:(id)end
{
  endCopy = end;
  attachedRenamer = [(_UINavigationBarTitleRenamerSession *)self attachedRenamer];
  [attachedRenamer _session:self fileRenameDidEnd:endCopy];
}

- (void)setConnection:(id)connection
{
  connectionCopy = connection;
  connection = self->_connection;
  if (connection != connectionCopy)
  {
    v7 = connectionCopy;
    [(_UIOServiceConnection *)connection removeObserver:self];
    objc_storeStrong(&self->_connection, connection);
    [(_UIOServiceConnection *)v7 addObserver:self];
    connectionCopy = v7;
  }
}

- (void)_server_sessionDidStartInRenamer:(id)renamer
{
  v3.receiver = self;
  v3.super_class = _UINavigationBarTitleRenamerRemoteSession;
  [(_UINavigationBarTitleRenamerSession *)&v3 sessionDidStartInRenamer:renamer];
}

- (void)_server_sessionDidEnd
{
  v2.receiver = self;
  v2.super_class = _UINavigationBarTitleRenamerRemoteSession;
  [(_UINavigationBarTitleRenamerSession *)&v2 sessionDidEnd];
}

- (void)_server_cancelSessionAndNotify:(BOOL)notify
{
  notifyCopy = notify;
  v7.receiver = self;
  v7.super_class = _UINavigationBarTitleRenamerRemoteSession;
  [(_UINavigationBarTitleRenamerSession *)&v7 cancelSession];
  if (notifyCopy)
  {
    v5 = [_UIONavigationBarTitleRenamerRemoteSessionAction didCancelSession:self responseHandler:&__block_literal_global_63_4];
    connection = [(_UINavigationBarTitleRenamerRemoteSession *)self connection];
    [connection sendAction:v5];
  }
}

- (id)_server_willBeginRenamingWithText:(id)text selectedRange:(_NSRange *)range
{
  textCopy = text;
  fileURL = [(_UINavigationBarTitleRenamerRemoteSession *)self fileURL];
  if (fileURL)
  {
    v8 = textCopy;
  }

  else
  {
    v9 = dispatch_group_create();
    dispatch_group_enter(v9);
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__183;
    v31 = __Block_byref_object_dispose__183;
    v32 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3010000000;
    v25 = 0;
    v26 = 0;
    v24 = "";
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __93___UINavigationBarTitleRenamerRemoteSession__server_willBeginRenamingWithText_selectedRange___block_invoke;
    v17[3] = &unk_1E7121878;
    v19 = &v27;
    v20 = &v21;
    v10 = v9;
    v18 = v10;
    v11 = [_UIONavigationBarTitleRenamerRemoteSessionAction willBeginRenamingActionWithSession:self text:textCopy selectedRange:range->location responseHandler:range->length, v17];
    connection = [(_UINavigationBarTitleRenamerRemoteSession *)self connection];
    [connection sendAction:v11];

    v13 = dispatch_time(0, 2000000000);
    dispatch_group_wait(v10, v13);
    v14 = v28;
    if (v28[5])
    {
      *range = v22[2];
      v15 = v14[5];
    }

    else
    {
      [(_UINavigationBarTitleRenamerRemoteSession *)self cancelSessionAndNotify:1];
      v15 = textCopy;
    }

    v8 = v15;

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v27, 8);
  }

  return v8;
}

- (BOOL)_server_textFieldShouldEndEditingWithText:(id)text
{
  textCopy = text;
  fileURL = [(_UINavigationBarTitleRenamerRemoteSession *)self fileURL];
  v6 = 1;
  if (!fileURL)
  {
    v7 = dispatch_group_create();
    dispatch_group_enter(v7);
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 1;
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __87___UINavigationBarTitleRenamerRemoteSession__server_textFieldShouldEndEditingWithText___block_invoke;
    v16 = &unk_1E71218A0;
    v18 = &v19;
    v8 = v7;
    v17 = v8;
    v9 = [_UIONavigationBarTitleRenamerRemoteSessionAction shouldEndEditingActionWithSession:self text:textCopy responseHandler:&v13];
    v10 = [(_UINavigationBarTitleRenamerRemoteSession *)self connection:v13];
    [v10 sendAction:v9];

    v11 = dispatch_time(0, 2000000000);
    dispatch_group_wait(v8, v11);
    v6 = *(v20 + 24);

    _Block_object_dispose(&v19, 8);
  }

  return v6 & 1;
}

- (void)_server_textFieldDidEndEditingWithText:(id)text
{
  textCopy = text;
  fileURL = [(_UINavigationBarTitleRenamerRemoteSession *)self fileURL];
  if (fileURL)
  {
    objc_initWeak(&location, self);
    lastPathComponent = [fileURL lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
    v8 = [stringByDeletingPathExtension isEqual:textCopy];

    if (v8)
    {
      [(_UINavigationBarTitleRenamerRemoteSession *)self fileRenameDidEnd:fileURL];
    }

    else
    {
      startAccessingSecurityScopedResource = [fileURL startAccessingSecurityScopedResource];
      v21 = 0;
      v22 = &v21;
      v23 = 0x2050000000;
      v12 = qword_1ED49A390;
      v24 = qword_1ED49A390;
      if (!qword_1ED49A390)
      {
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __getDOCRenameSupportClass_block_invoke;
        v20[3] = &unk_1E70F2F20;
        v20[4] = &v21;
        __getDOCRenameSupportClass_block_invoke(v20);
        v12 = v22[3];
      }

      v13 = v12;
      _Block_object_dispose(&v21, 8);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __84___UINavigationBarTitleRenamerRemoteSession__server_textFieldDidEndEditingWithText___block_invoke;
      v14[3] = &unk_1E71218C8;
      objc_copyWeak(&v17, &location);
      v15 = textCopy;
      v18 = startAccessingSecurityScopedResource;
      v16 = fileURL;
      [v12 _spi_renameDocumentAtURL:v16 proposedName:v15 completionHandler:v14];

      objc_destroyWeak(&v17);
    }

    objc_destroyWeak(&location);
  }

  else
  {
    v9 = [_UIONavigationBarTitleRenamerRemoteSessionAction didEndEditingActionWithSession:self text:textCopy responseHandler:&__block_literal_global_65_5];
    connection = [(_UINavigationBarTitleRenamerRemoteSession *)self connection];
    [connection sendAction:v9];
  }
}

- (void)_server_fileRenameDidFail:(id)fail proposedName:(id)name
{
  v6 = [_UIONavigationBarTitleRenamerRemoteSessionAction fileRenameDidFailInSession:self withError:fail proposedName:name responseHandler:&__block_literal_global_67_2];
  connection = [(_UINavigationBarTitleRenamerRemoteSession *)self connection];
  [connection sendAction:v6];
}

- (void)_server_fileRenameDidEnd:(id)end
{
  v5 = [_UIONavigationBarTitleRenamerRemoteSessionAction fileRenameDidEndInSession:self withFinalURL:end responseHandler:&__block_literal_global_69_3];
  connection = [(_UINavigationBarTitleRenamerRemoteSession *)self connection];
  [connection sendAction:v5];
}

@end