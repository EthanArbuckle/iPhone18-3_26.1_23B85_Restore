@interface _UINavigationBarTitleRenamerRemoteSession
- (BOOL)_client_textFieldShouldEndEditingWithText:(id)a3;
- (BOOL)_isServerSide;
- (BOOL)_server_textFieldShouldEndEditingWithText:(id)a3;
- (BOOL)_textFieldShouldEndEditingWithText:(id)a3;
- (NSURL)fileURL;
- (_UINavigationBarTitleRenamerRemoteSession)initWithBSXPCCoder:(id)a3;
- (_UINavigationBarTitleRenamerRemoteSession)initWithFileURL:(id)a3 iconMetadata:(id)a4 error:(id *)a5 scene:(id)a6;
- (_UINavigationBarTitleRenamerRemoteSession)initWithSuggestedTitle:(id)a3 iconMetadata:(id)a4 scene:(id)a5;
- (id)_client_willBeginRenamingWithText:(id)a3 selectedRange:(_NSRange *)a4;
- (id)_server_willBeginRenamingWithText:(id)a3 selectedRange:(_NSRange *)a4;
- (id)_willBeginRenamingWithText:(id)a3 selectedRange:(_NSRange *)a4;
- (id)createRenamerContentView;
- (void)_attemptLocalRenameForFileURL:(id)a3 proposedName:(id)a4 completionHandler:(id)a5;
- (void)_client_cancelSessionAndNotify:(BOOL)a3;
- (void)_client_fileRenameDidEnd:(id)a3;
- (void)_client_fileRenameDidFail:(id)a3 proposedName:(id)a4;
- (void)_client_sessionDidEnd;
- (void)_client_sessionDidStartInRenamer:(id)a3;
- (void)_client_textFieldDidEndEditingWithText:(id)a3;
- (void)_server_cancelSessionAndNotify:(BOOL)a3;
- (void)_server_fileRenameDidEnd:(id)a3;
- (void)_server_fileRenameDidFail:(id)a3 proposedName:(id)a4;
- (void)_server_sessionDidEnd;
- (void)_server_sessionDidStartInRenamer:(id)a3;
- (void)_server_textFieldDidEndEditingWithText:(id)a3;
- (void)_textFieldDidEndEditingWithText:(id)a3;
- (void)_updateSessionWithAction:(int64_t)a3;
- (void)cancelSessionAndNotify:(BOOL)a3;
- (void)dealloc;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)fileRenameDidEnd:(id)a3;
- (void)fileRenameDidFail:(id)a3 proposedName:(id)a4;
- (void)sessionDidEnd;
- (void)sessionDidStartInRenamer:(id)a3;
- (void)setConnection:(id)a3;
@end

@implementation _UINavigationBarTitleRenamerRemoteSession

- (_UINavigationBarTitleRenamerRemoteSession)initWithSuggestedTitle:(id)a3 iconMetadata:(id)a4 scene:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (_UIApplicationProcessIsOverlayUI())
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"_UINavigationBarTitleRenamerRemoteSession.m" lineNumber:348 description:@"initializing a remote session in this process is not allowed outside of decoding a session from another process."];
  }

  v21.receiver = self;
  v21.super_class = _UINavigationBarTitleRenamerRemoteSession;
  v12 = [(_UINavigationBarTitleRenamerSession *)&v21 initWithSuggestedTitle:v9 iconMetadata:v10];
  if (v12)
  {
    v13 = objc_opt_new();
    [(_UIOverlayService *)v13 setDelegate:v12];
    [(_UIOverlayService *)v13 prewarmConnection];
    overlayService = v12->_overlayService;
    v12->_overlayService = v13;
    v15 = v13;

    v16 = [v11 _FBSScene];
    v17 = [v16 identityToken];
    sceneOriginIdentityToken = v12->_sceneOriginIdentityToken;
    v12->_sceneOriginIdentityToken = v17;

    v12->_currentState = 1;
  }

  return v12;
}

- (_UINavigationBarTitleRenamerRemoteSession)initWithFileURL:(id)a3 iconMetadata:(id)a4 error:(id *)a5 scene:(id)a6
{
  v34 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a6;
  v13 = a4;
  if (_UIApplicationProcessIsOverlayUI())
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"_UINavigationBarTitleRenamerRemoteSession.m" lineNumber:376 description:@"initializing a remote session in this process is not allowed outside of decoding a session from another process."];
  }

  v14 = [v11 lastPathComponent];
  v15 = [v14 stringByDeletingPathExtension];
  v16 = [(_UINavigationBarTitleRenamerRemoteSession *)self initWithSuggestedTitle:v15 iconMetadata:v13 scene:v12];

  if (!v16)
  {
    goto LABEL_9;
  }

  v17 = [v11 startAccessingSecurityScopedResource];
  v29 = 0;
  v18 = [getFPSandboxingURLWrapperClass() wrapperWithURL:v11 readonly:0 error:&v29];
  v19 = v29;
  urlWrapper = v16->_urlWrapper;
  v16->_urlWrapper = v18;

  if (v17)
  {
    [v11 stopAccessingSecurityScopedResource];
  }

  if (v19)
  {
    v21 = v19;
    *a5 = v19;
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("OOPRename", &initWithFileURL_iconMetadata_error_scene____s_category);
    if (*CategoryCachedImpl)
    {
      v26 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = v26;
        v28 = [(_UINavigationBarTitleRenamerSession *)v16 sessionIdentifier];
        *buf = 138412546;
        v31 = v28;
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
  v3 = [(_UINavigationBarTitleRenamerRemoteSession *)self overlayService];

  if (v3)
  {
    v4 = [[_UINavigationBarTitleRenameRemoteView alloc] initWithSession:self];
  }

  else
  {
    v4 = [[_UINavigationBarTitleRenameTextField alloc] initWithSession:self];
    v5 = [(_UINavigationBarTitleRenamerRemoteSession *)self sceneOriginIdentityToken];
    [(_UINavigationBarTitleRenameRemoteView *)v4 _setLayeringSceneIdentity:v5];
  }

  return v4;
}

- (NSURL)fileURL
{
  v2 = [(_UINavigationBarTitleRenamerRemoteSession *)self urlWrapper];
  v3 = [v2 url];

  return v3;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = _UINavigationBarTitleRenamerRemoteSession;
  [(_UINavigationBarTitleRenamerSession *)&v6 encodeWithBSXPCCoder:v4];
  urlWrapper = self->_urlWrapper;
  if (urlWrapper)
  {
    [v4 encodeObject:urlWrapper forKey:@"_UINavigationBarTitleRenamerRemoteSessionURLWrapper"];
  }

  [v4 encodeObject:self->_sceneOriginIdentityToken forKey:@"_UINavigationBarTitleRenamerRemoteSessionSceneOriginIdentityToken"];
}

- (_UINavigationBarTitleRenamerRemoteSession)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _UINavigationBarTitleRenamerRemoteSession;
  v5 = [(_UINavigationBarTitleRenamerSession *)&v11 initWithBSXPCCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:getFPSandboxingURLWrapperClass() forKey:@"_UINavigationBarTitleRenamerRemoteSessionURLWrapper"];
    urlWrapper = v5->_urlWrapper;
    v5->_urlWrapper = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_UINavigationBarTitleRenamerRemoteSessionSceneOriginIdentityToken"];
    sceneOriginIdentityToken = v5->_sceneOriginIdentityToken;
    v5->_sceneOriginIdentityToken = v8;

    v5->_currentState = 1;
  }

  return v5;
}

- (BOOL)_isServerSide
{
  v2 = [(_UINavigationBarTitleRenamerRemoteSession *)self connection];
  v3 = v2 != 0;

  return v3;
}

- (void)sessionDidStartInRenamer:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
  *(&v9 + 1) = v4;
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

- (void)cancelSessionAndNotify:(BOOL)a3
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
  BYTE8(v10) = a3;
  handleEvent(stateMachineSpec_6, self->_currentState, 7, v9, &self->_currentState);
}

- (id)_willBeginRenamingWithText:(id)a3 selectedRange:(_NSRange *)a4
{
  v6 = a3;
  v12 = 0;
  v13 = 0;
  v9[0] = self;
  v9[1] = 0;
  v10 = v6;
  v11 = a4;
  v14 = 0;
  if ((handleEvent(stateMachineSpec_6, self->_currentState, 1, v9, &self->_currentState) & 1) == 0)
  {
    [(_UINavigationBarTitleRenamerRemoteSession *)self cancelSessionAndNotify:1];
  }

  v7 = v10;

  return v7;
}

- (BOOL)_textFieldShouldEndEditingWithText:(id)a3
{
  v4 = a3;
  v7[0] = self;
  v7[1] = 0;
  v7[2] = v4;
  v8 = 0u;
  v9 = 0u;
  if ((handleEvent(stateMachineSpec_6, self->_currentState, 2, v7, &self->_currentState) & 1) == 0)
  {
    [(_UINavigationBarTitleRenamerRemoteSession *)self cancelSessionAndNotify:1];
  }

  v5 = BYTE9(v8);

  return v5;
}

- (void)_textFieldDidEndEditingWithText:(id)a3
{
  v4 = a3;
  v5[0] = self;
  v5[1] = 0;
  v5[2] = v4;
  v6 = 0u;
  v7 = 0u;
  if ((handleEvent(stateMachineSpec_6, self->_currentState, 3, v5, &self->_currentState) & 1) == 0)
  {
    [(_UINavigationBarTitleRenamerRemoteSession *)self cancelSessionAndNotify:1];
  }
}

- (void)fileRenameDidFail:(id)a3 proposedName:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
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
      *&v13[14] = v6;
      v12 = *&v13[4];
      _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_ERROR, "[%@] Session file rename did fail: %@", v13, 0x16u);
    }
  }

  *v13 = self;
  *&v13[8] = 0;
  v14 = 0;
  v15 = 0;
  *&v13[16] = v7;
  v9 = v6;
  v16 = v9;
  v17 = 0;
  if ((handleEvent(stateMachineSpec_6, self->_currentState, 5, v13, &self->_currentState) & 1) == 0)
  {
    [(_UINavigationBarTitleRenamerRemoteSession *)self cancelSessionAndNotify:1];
  }
}

- (void)fileRenameDidEnd:(id)a3
{
  v6 = 0;
  v5[0] = self;
  memset(&v5[1], 0, 32);
  v4 = a3;
  v7 = v4;
  if ((handleEvent(stateMachineSpec_6, *(v5[0] + 56), 6, v5, (v5[0] + 56)) & 1) == 0)
  {
    [(_UINavigationBarTitleRenamerRemoteSession *)self cancelSessionAndNotify:1];
  }
}

- (void)_updateSessionWithAction:(int64_t)a3
{
  v5 = [_UIONavigationBarTitleRenamerConnectionAction alloc];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70___UINavigationBarTitleRenamerRemoteSession__updateSessionWithAction___block_invoke;
  v8[3] = &unk_1E711D748;
  v8[4] = self;
  v6 = [(_UIONavigationBarTitleRenamerConnectionAction *)v5 initWithSession:self action:a3 responseHandler:v8];
  v7 = [(_UINavigationBarTitleRenamerRemoteSession *)self overlayService];
  [v7 sendOverlayAction:v6];
}

- (void)_client_sessionDidStartInRenamer:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UINavigationBarTitleRenamerRemoteSession;
  [(_UINavigationBarTitleRenamerSession *)&v4 sessionDidStartInRenamer:a3];
  [(_UINavigationBarTitleRenamerRemoteSession *)self _updateSessionWithAction:0];
}

- (void)_client_sessionDidEnd
{
  v3.receiver = self;
  v3.super_class = _UINavigationBarTitleRenamerRemoteSession;
  [(_UINavigationBarTitleRenamerSession *)&v3 sessionDidEnd];
  [(_UINavigationBarTitleRenamerRemoteSession *)self _updateSessionWithAction:1];
}

- (void)_client_cancelSessionAndNotify:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = _UINavigationBarTitleRenamerRemoteSession;
  [(_UINavigationBarTitleRenamerSession *)&v5 cancelSession];
  if (v3)
  {
    [(_UINavigationBarTitleRenamerRemoteSession *)self _updateSessionWithAction:2];
  }
}

- (id)_client_willBeginRenamingWithText:(id)a3 selectedRange:(_NSRange *)a4
{
  v6.receiver = self;
  v6.super_class = _UINavigationBarTitleRenamerRemoteSession;
  v4 = [(_UINavigationBarTitleRenamerSession *)&v6 _willBeginRenamingWithText:a3 selectedRange:a4];

  return v4;
}

- (BOOL)_client_textFieldShouldEndEditingWithText:(id)a3
{
  v4.receiver = self;
  v4.super_class = _UINavigationBarTitleRenamerRemoteSession;
  return [(_UINavigationBarTitleRenamerSession *)&v4 _textFieldShouldEndEditingWithText:a3];
}

- (void)_client_textFieldDidEndEditingWithText:(id)a3
{
  v3.receiver = self;
  v3.super_class = _UINavigationBarTitleRenamerRemoteSession;
  [(_UINavigationBarTitleRenamerSession *)&v3 _textFieldDidEndEditingWithText:a3];
}

- (void)_attemptLocalRenameForFileURL:(id)a3 proposedName:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106___UINavigationBarTitleRenamerRemoteSession__attemptLocalRenameForFileURL_proposedName_completionHandler___block_invoke;
  block[3] = &unk_1E70FCE28;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v11 = v9;
  v12 = v8;
  v13 = v7;
  dispatch_async(v10, block);
}

- (void)_client_fileRenameDidFail:(id)a3 proposedName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_UINavigationBarTitleRenamerRemoteSession *)self fileURL];
  v9 = [v6 domain];
  if (![v9 isEqualToString:*MEMORY[0x1E696A250]] || objc_msgSend(v6, "code") != 4)
  {

    goto LABEL_6;
  }

  if (!v8)
  {
LABEL_6:
    v10 = [(_UINavigationBarTitleRenamerSession *)self attachedRenamer];
    [v10 _session:self fileRenameDidFail:v6];

    goto LABEL_7;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84___UINavigationBarTitleRenamerRemoteSession__client_fileRenameDidFail_proposedName___block_invoke;
  v11[3] = &unk_1E7121830;
  v11[4] = self;
  [(_UINavigationBarTitleRenamerRemoteSession *)self _attemptLocalRenameForFileURL:v8 proposedName:v7 completionHandler:v11];
LABEL_7:
}

- (void)_client_fileRenameDidEnd:(id)a3
{
  v4 = a3;
  v5 = [(_UINavigationBarTitleRenamerSession *)self attachedRenamer];
  [v5 _session:self fileRenameDidEnd:v4];
}

- (void)setConnection:(id)a3
{
  v5 = a3;
  connection = self->_connection;
  if (connection != v5)
  {
    v7 = v5;
    [(_UIOServiceConnection *)connection removeObserver:self];
    objc_storeStrong(&self->_connection, a3);
    [(_UIOServiceConnection *)v7 addObserver:self];
    v5 = v7;
  }
}

- (void)_server_sessionDidStartInRenamer:(id)a3
{
  v3.receiver = self;
  v3.super_class = _UINavigationBarTitleRenamerRemoteSession;
  [(_UINavigationBarTitleRenamerSession *)&v3 sessionDidStartInRenamer:a3];
}

- (void)_server_sessionDidEnd
{
  v2.receiver = self;
  v2.super_class = _UINavigationBarTitleRenamerRemoteSession;
  [(_UINavigationBarTitleRenamerSession *)&v2 sessionDidEnd];
}

- (void)_server_cancelSessionAndNotify:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = _UINavigationBarTitleRenamerRemoteSession;
  [(_UINavigationBarTitleRenamerSession *)&v7 cancelSession];
  if (v3)
  {
    v5 = [_UIONavigationBarTitleRenamerRemoteSessionAction didCancelSession:self responseHandler:&__block_literal_global_63_4];
    v6 = [(_UINavigationBarTitleRenamerRemoteSession *)self connection];
    [v6 sendAction:v5];
  }
}

- (id)_server_willBeginRenamingWithText:(id)a3 selectedRange:(_NSRange *)a4
{
  v6 = a3;
  v7 = [(_UINavigationBarTitleRenamerRemoteSession *)self fileURL];
  if (v7)
  {
    v8 = v6;
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
    v11 = [_UIONavigationBarTitleRenamerRemoteSessionAction willBeginRenamingActionWithSession:self text:v6 selectedRange:a4->location responseHandler:a4->length, v17];
    v12 = [(_UINavigationBarTitleRenamerRemoteSession *)self connection];
    [v12 sendAction:v11];

    v13 = dispatch_time(0, 2000000000);
    dispatch_group_wait(v10, v13);
    v14 = v28;
    if (v28[5])
    {
      *a4 = v22[2];
      v15 = v14[5];
    }

    else
    {
      [(_UINavigationBarTitleRenamerRemoteSession *)self cancelSessionAndNotify:1];
      v15 = v6;
    }

    v8 = v15;

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&v27, 8);
  }

  return v8;
}

- (BOOL)_server_textFieldShouldEndEditingWithText:(id)a3
{
  v4 = a3;
  v5 = [(_UINavigationBarTitleRenamerRemoteSession *)self fileURL];
  v6 = 1;
  if (!v5)
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
    v9 = [_UIONavigationBarTitleRenamerRemoteSessionAction shouldEndEditingActionWithSession:self text:v4 responseHandler:&v13];
    v10 = [(_UINavigationBarTitleRenamerRemoteSession *)self connection:v13];
    [v10 sendAction:v9];

    v11 = dispatch_time(0, 2000000000);
    dispatch_group_wait(v8, v11);
    v6 = *(v20 + 24);

    _Block_object_dispose(&v19, 8);
  }

  return v6 & 1;
}

- (void)_server_textFieldDidEndEditingWithText:(id)a3
{
  v4 = a3;
  v5 = [(_UINavigationBarTitleRenamerRemoteSession *)self fileURL];
  if (v5)
  {
    objc_initWeak(&location, self);
    v6 = [v5 lastPathComponent];
    v7 = [v6 stringByDeletingPathExtension];
    v8 = [v7 isEqual:v4];

    if (v8)
    {
      [(_UINavigationBarTitleRenamerRemoteSession *)self fileRenameDidEnd:v5];
    }

    else
    {
      v11 = [v5 startAccessingSecurityScopedResource];
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
      v15 = v4;
      v18 = v11;
      v16 = v5;
      [v12 _spi_renameDocumentAtURL:v16 proposedName:v15 completionHandler:v14];

      objc_destroyWeak(&v17);
    }

    objc_destroyWeak(&location);
  }

  else
  {
    v9 = [_UIONavigationBarTitleRenamerRemoteSessionAction didEndEditingActionWithSession:self text:v4 responseHandler:&__block_literal_global_65_5];
    v10 = [(_UINavigationBarTitleRenamerRemoteSession *)self connection];
    [v10 sendAction:v9];
  }
}

- (void)_server_fileRenameDidFail:(id)a3 proposedName:(id)a4
{
  v6 = [_UIONavigationBarTitleRenamerRemoteSessionAction fileRenameDidFailInSession:self withError:a3 proposedName:a4 responseHandler:&__block_literal_global_67_2];
  v5 = [(_UINavigationBarTitleRenamerRemoteSession *)self connection];
  [v5 sendAction:v6];
}

- (void)_server_fileRenameDidEnd:(id)a3
{
  v5 = [_UIONavigationBarTitleRenamerRemoteSessionAction fileRenameDidEndInSession:self withFinalURL:a3 responseHandler:&__block_literal_global_69_3];
  v4 = [(_UINavigationBarTitleRenamerRemoteSession *)self connection];
  [v4 sendAction:v5];
}

@end