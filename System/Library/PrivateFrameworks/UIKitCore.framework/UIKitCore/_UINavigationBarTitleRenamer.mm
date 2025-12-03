@interface _UINavigationBarTitleRenamer
+ (id)renameServer;
- (BOOL)_session:(id)_session textFieldShouldEndRenamingWithTitle:(id)title;
- (_UINavigationBarTitleRenamer)init;
- (_UINavigationBarTitleRenamerDelegate)delegate;
- (id)_session:(id)_session textFieldWillBeginRenamingWithTitle:(id)title selectedRange:(_NSRange *)range;
- (id)description;
- (id)sessionWithIdentifier:(id)identifier;
- (void)_session:(id)_session fileRenameDidEnd:(id)end;
- (void)_session:(id)_session fileRenameDidFail:(id)fail;
- (void)_sessionDidCancel:(id)cancel;
- (void)_sessionTextFieldDidEndEditing:(id)editing;
- (void)dealloc;
- (void)endSession:(id)session;
- (void)sceneWillDeactivateNotification:(id)notification;
- (void)startSession:(id)session;
@end

@implementation _UINavigationBarTitleRenamer

+ (id)renameServer
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44___UINavigationBarTitleRenamer_renameServer__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a2;
  v4[5] = self;
  if (qword_1ED4A0000 != -1)
  {
    dispatch_once(&qword_1ED4A0000, v4);
  }

  v2 = _MergedGlobals_1253;

  return v2;
}

- (_UINavigationBarTitleRenamer)init
{
  v8.receiver = self;
  v8.super_class = _UINavigationBarTitleRenamer;
  v2 = [(_UINavigationBarTitleRenamer *)&v8 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_flags &= ~1u;
    v4 = objc_opt_new();
    trackedSessions = v3->_trackedSessions;
    v3->_trackedSessions = v4;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_sceneWillDeactivateNotification_ name:@"UISceneWillDeactivateNotification" object:0];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = _UINavigationBarTitleRenamer;
  [(_UINavigationBarTitleRenamer *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p active sessions: %@>", v5, self, self->_trackedSessions];;

  return v6;
}

- (void)sceneWillDeactivateNotification:(id)notification
{
  v21 = *MEMORY[0x1E69E9840];
  object = [notification object];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  trackedSessions = [(_UINavigationBarTitleRenamer *)self trackedSessions];
  v6 = [trackedSessions copy];

  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        existingRenamerContentView = [v11 existingRenamerContentView];
        v13 = existingRenamerContentView;
        if (existingRenamerContentView)
        {
          _window = [existingRenamerContentView _window];
          windowScene = [_window windowScene];

          if (windowScene == object)
          {
            [v11 cancelSession];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

- (void)startSession:(id)session
{
  sessionCopy = session;
  if ((*&self->_flags & 1) == 0)
  {
    trackedSessions = [(_UINavigationBarTitleRenamer *)self trackedSessions];
    v6 = [trackedSessions count];

    if (v6)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      trackedSessions2 = [(_UINavigationBarTitleRenamer *)self trackedSessions];
      anyObject = [trackedSessions2 anyObject];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UINavigationBarTitleRenamer.m" lineNumber:84 description:{@"Unable to start session. Session already in progress: %@", anyObject}];
    }
  }

  if (*&self->_flags)
  {
    sessionIdentifier = [sessionCopy sessionIdentifier];
    v11 = [(_UINavigationBarTitleRenamer *)self sessionWithIdentifier:sessionIdentifier];

    if (v11)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UINavigationBarTitleRenamer.m" lineNumber:90 description:@"Renamer is already tracking a session with this identifier."];
    }
  }

  trackedSessions3 = [(_UINavigationBarTitleRenamer *)self trackedSessions];
  [trackedSessions3 addObject:sessionCopy];

  [sessionCopy sessionDidStartInRenamer:self];
}

- (void)endSession:(id)session
{
  sessionCopy = session;
  __ASSERT_UNTRACKED_SESSION__(self, sessionCopy);
  [sessionCopy sessionDidEnd];
  trackedSessions = [(_UINavigationBarTitleRenamer *)self trackedSessions];
  [trackedSessions removeObject:sessionCopy];
}

- (id)sessionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  trackedSessions = [(_UINavigationBarTitleRenamer *)self trackedSessions];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54___UINavigationBarTitleRenamer_sessionWithIdentifier___block_invoke;
  v10[3] = &unk_1E711CE10;
  v11 = identifierCopy;
  v6 = identifierCopy;
  v7 = [trackedSessions bs_filter:v10];
  anyObject = [v7 anyObject];

  return anyObject;
}

- (id)_session:(id)_session textFieldWillBeginRenamingWithTitle:(id)title selectedRange:(_NSRange *)range
{
  titleCopy = title;
  _sessionCopy = _session;
  __ASSERT_UNTRACKED_SESSION__(self, _sessionCopy);
  delegate = [(_UINavigationBarTitleRenamer *)self delegate];
  v11 = [delegate titleRenamer:self session:_sessionCopy willBeginRenamingWithTitle:titleCopy selectedRange:range];

  return v11;
}

- (BOOL)_session:(id)_session textFieldShouldEndRenamingWithTitle:(id)title
{
  titleCopy = title;
  _sessionCopy = _session;
  __ASSERT_UNTRACKED_SESSION__(self, _sessionCopy);
  delegate = [(_UINavigationBarTitleRenamer *)self delegate];
  LOBYTE(self) = [delegate titleRenamer:self session:_sessionCopy shouldEndRenamingWithTitle:titleCopy];

  return self;
}

- (void)_sessionTextFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  __ASSERT_UNTRACKED_SESSION__(self, editingCopy);
  delegate = [(_UINavigationBarTitleRenamer *)self delegate];
  title = [editingCopy title];
  [delegate titleRenamer:self session:editingCopy didEndRenamingWithTitle:title];
}

- (void)_sessionDidCancel:(id)cancel
{
  cancelCopy = cancel;
  __ASSERT_UNTRACKED_SESSION__(self, cancelCopy);
  trackedSessions = [(_UINavigationBarTitleRenamer *)self trackedSessions];
  [trackedSessions removeObject:cancelCopy];

  delegate = [(_UINavigationBarTitleRenamer *)self delegate];
  [delegate titleRenamer:self didCancelSession:cancelCopy];
}

- (void)_session:(id)_session fileRenameDidFail:(id)fail
{
  failCopy = fail;
  _sessionCopy = _session;
  __ASSERT_UNTRACKED_SESSION__(self, _sessionCopy);
  delegate = [(_UINavigationBarTitleRenamer *)self delegate];
  [delegate titleRenamer:self session:_sessionCopy fileRenameDidFail:failCopy];
}

- (void)_session:(id)_session fileRenameDidEnd:(id)end
{
  endCopy = end;
  _sessionCopy = _session;
  __ASSERT_UNTRACKED_SESSION__(self, _sessionCopy);
  delegate = [(_UINavigationBarTitleRenamer *)self delegate];
  [delegate titleRenamer:self session:_sessionCopy fileRenameDidEnd:endCopy];
}

- (_UINavigationBarTitleRenamerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end