@interface _UINavigationBarTitleRenamerSession
- (BOOL)_textFieldShouldEndEditingWithText:(id)text;
- (_UINavigationBarTitleRenamer)attachedRenamer;
- (_UINavigationBarTitleRenamerContentView)renamerContentView;
- (_UINavigationBarTitleRenamerSession)initWithBSXPCCoder:(id)coder;
- (_UINavigationBarTitleRenamerSession)initWithSuggestedTitle:(id)title iconMetadata:(id)metadata;
- (id)_sanitizedTitleForText:(id)text;
- (id)_willBeginRenamingWithText:(id)text selectedRange:(_NSRange *)range;
- (id)context;
- (id)createRenamerContentView;
- (void)_textFieldDidEndEditingWithText:(id)text;
- (void)cancelSession;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation _UINavigationBarTitleRenamerSession

- (_UINavigationBarTitleRenamerSession)initWithSuggestedTitle:(id)title iconMetadata:(id)metadata
{
  titleCopy = title;
  metadataCopy = metadata;
  v15.receiver = self;
  v15.super_class = _UINavigationBarTitleRenamerSession;
  v9 = [(_UINavigationBarTitleRenamerSession *)&v15 init];
  if (v9)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    sessionIdentifier = v9->_sessionIdentifier;
    v9->_sessionIdentifier = uUID;

    objc_storeStrong(&v9->_title, title);
    metadata = [metadataCopy metadata];
    iconMetadata = v9->_iconMetadata;
    v9->_iconMetadata = metadata;
  }

  return v9;
}

- (id)_sanitizedTitleForText:(id)text
{
  textCopy = text;
  if ([textCopy length])
  {
    title = textCopy;
  }

  else
  {
    title = [(_UINavigationBarTitleRenamerSession *)self title];
  }

  v6 = title;

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
    createRenamerContentView = [(_UINavigationBarTitleRenamerSession *)self createRenamerContentView];
    v5 = self->_renamerContentView;
    self->_renamerContentView = createRenamerContentView;

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

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_sessionIdentifier forKey:@"_UINavigationBarTitleRenamerSessionIdentifier"];
  [coderCopy encodeObject:self->_title forKey:@"_UINavigationBarTitleRenamerSessionTitle"];
  iconMetadata = self->_iconMetadata;
  if (iconMetadata)
  {
    [coderCopy encodeObject:iconMetadata forKey:@"_UINavigationBarTitleRenamerIconMetadata"];
  }
}

- (_UINavigationBarTitleRenamerSession)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = _UINavigationBarTitleRenamerSession;
  v5 = [(_UINavigationBarTitleRenamerSession *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_UINavigationBarTitleRenamerSessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_UINavigationBarTitleRenamerSessionTitle"];
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
    v12 = [coderCopy decodeObjectOfClass:v10 forKey:@"_UINavigationBarTitleRenamerIconMetadata"];
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

- (id)_willBeginRenamingWithText:(id)text selectedRange:(_NSRange *)range
{
  textCopy = text;
  attachedRenamer = [(_UINavigationBarTitleRenamerSession *)self attachedRenamer];
  v8 = attachedRenamer;
  if (attachedRenamer)
  {
    v9 = [attachedRenamer _session:self textFieldWillBeginRenamingWithTitle:textCopy selectedRange:range];
    [(_UINavigationBarTitleRenamerSession *)self setTitle:v9];
  }

  else
  {
    v9 = textCopy;
  }

  return v9;
}

- (BOOL)_textFieldShouldEndEditingWithText:(id)text
{
  textCopy = text;
  attachedRenamer = [(_UINavigationBarTitleRenamerSession *)self attachedRenamer];
  if (attachedRenamer)
  {
    v6 = [(_UINavigationBarTitleRenamerSession *)self _sanitizedTitleForText:textCopy];
    v7 = [attachedRenamer _session:self textFieldShouldEndRenamingWithTitle:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)_textFieldDidEndEditingWithText:(id)text
{
  textCopy = text;
  attachedRenamer = [(_UINavigationBarTitleRenamerSession *)self attachedRenamer];
  if (attachedRenamer)
  {
    v5 = [(_UINavigationBarTitleRenamerSession *)self _sanitizedTitleForText:textCopy];
    [(_UINavigationBarTitleRenamerSession *)self setTitle:v5];
    [attachedRenamer _sessionTextFieldDidEndEditing:self];
  }
}

@end