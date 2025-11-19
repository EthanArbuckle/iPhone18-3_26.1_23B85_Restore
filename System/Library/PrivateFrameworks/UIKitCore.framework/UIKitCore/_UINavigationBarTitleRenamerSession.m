@interface _UINavigationBarTitleRenamerSession
- (BOOL)_textFieldShouldEndEditingWithText:(id)a3;
- (_UINavigationBarTitleRenamer)attachedRenamer;
- (_UINavigationBarTitleRenamerContentView)renamerContentView;
- (_UINavigationBarTitleRenamerSession)initWithBSXPCCoder:(id)a3;
- (_UINavigationBarTitleRenamerSession)initWithSuggestedTitle:(id)a3 iconMetadata:(id)a4;
- (id)_sanitizedTitleForText:(id)a3;
- (id)_willBeginRenamingWithText:(id)a3 selectedRange:(_NSRange *)a4;
- (id)context;
- (id)createRenamerContentView;
- (void)_textFieldDidEndEditingWithText:(id)a3;
- (void)cancelSession;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation _UINavigationBarTitleRenamerSession

- (_UINavigationBarTitleRenamerSession)initWithSuggestedTitle:(id)a3 iconMetadata:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = _UINavigationBarTitleRenamerSession;
  v9 = [(_UINavigationBarTitleRenamerSession *)&v15 init];
  if (v9)
  {
    v10 = [MEMORY[0x1E696AFB0] UUID];
    sessionIdentifier = v9->_sessionIdentifier;
    v9->_sessionIdentifier = v10;

    objc_storeStrong(&v9->_title, a3);
    v12 = [v8 metadata];
    iconMetadata = v9->_iconMetadata;
    v9->_iconMetadata = v12;
  }

  return v9;
}

- (id)_sanitizedTitleForText:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v5 = [(_UINavigationBarTitleRenamerSession *)self title];
  }

  v6 = v5;

  return v6;
}

- (id)createRenamerContentView
{
  v2 = [[_UINavigationBarTitleRenameTextField alloc] initWithSession:self];

  return v2;
}

- (_UINavigationBarTitleRenamerContentView)renamerContentView
{
  renamerContentView = self->_renamerContentView;
  if (!renamerContentView)
  {
    v4 = [(_UINavigationBarTitleRenamerSession *)self createRenamerContentView];
    v5 = self->_renamerContentView;
    self->_renamerContentView = v4;

    renamerContentView = self->_renamerContentView;
  }

  return renamerContentView;
}

- (void)cancelSession
{
  WeakRetained = objc_loadWeakRetained(&self->_attachedRenamer);
  objc_storeWeak(&self->_attachedRenamer, 0);
  [WeakRetained _sessionDidCancel:self];
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_sessionIdentifier forKey:@"_UINavigationBarTitleRenamerSessionIdentifier"];
  [v5 encodeObject:self->_title forKey:@"_UINavigationBarTitleRenamerSessionTitle"];
  iconMetadata = self->_iconMetadata;
  if (iconMetadata)
  {
    [v5 encodeObject:iconMetadata forKey:@"_UINavigationBarTitleRenamerIconMetadata"];
  }
}

- (_UINavigationBarTitleRenamerSession)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _UINavigationBarTitleRenamerSession;
  v5 = [(_UINavigationBarTitleRenamerSession *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_UINavigationBarTitleRenamerSessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_UINavigationBarTitleRenamerSessionTitle"];
    title = v5->_title;
    v5->_title = v8;

    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v10 = _MergedGlobals_1201;
    v20 = _MergedGlobals_1201;
    if (!_MergedGlobals_1201)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __getLPLinkMetadataClass_block_invoke;
      v16[3] = &unk_1E70F2F20;
      v16[4] = &v17;
      __getLPLinkMetadataClass_block_invoke(v16);
      v10 = v18[3];
    }

    v11 = v10;
    _Block_object_dispose(&v17, 8);
    v12 = [v4 decodeObjectOfClass:v10 forKey:@"_UINavigationBarTitleRenamerIconMetadata"];
    iconMetadata = v5->_iconMetadata;
    v5->_iconMetadata = v12;
  }

  return v5;
}

- (_UINavigationBarTitleRenamer)attachedRenamer
{
  WeakRetained = objc_loadWeakRetained(&self->_attachedRenamer);

  return WeakRetained;
}

- (id)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (id)_willBeginRenamingWithText:(id)a3 selectedRange:(_NSRange *)a4
{
  v6 = a3;
  v7 = [(_UINavigationBarTitleRenamerSession *)self attachedRenamer];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 _session:self textFieldWillBeginRenamingWithTitle:v6 selectedRange:a4];
    [(_UINavigationBarTitleRenamerSession *)self setTitle:v9];
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

- (BOOL)_textFieldShouldEndEditingWithText:(id)a3
{
  v4 = a3;
  v5 = [(_UINavigationBarTitleRenamerSession *)self attachedRenamer];
  if (v5)
  {
    v6 = [(_UINavigationBarTitleRenamerSession *)self _sanitizedTitleForText:v4];
    v7 = [v5 _session:self textFieldShouldEndRenamingWithTitle:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)_textFieldDidEndEditingWithText:(id)a3
{
  v6 = a3;
  v4 = [(_UINavigationBarTitleRenamerSession *)self attachedRenamer];
  if (v4)
  {
    v5 = [(_UINavigationBarTitleRenamerSession *)self _sanitizedTitleForText:v6];
    [(_UINavigationBarTitleRenamerSession *)self setTitle:v5];
    [v4 _sessionTextFieldDidEndEditing:self];
  }
}

@end