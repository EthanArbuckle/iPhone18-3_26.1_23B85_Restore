@interface PREditorLookSwitchingAssertion
- (PREditor)editor;
- (PREditorLookSwitchingAssertion)initWithEditor:(id)editor reason:(id)reason;
- (void)dealloc;
- (void)invalidate;
@end

@implementation PREditorLookSwitchingAssertion

- (PREditorLookSwitchingAssertion)initWithEditor:(id)editor reason:(id)reason
{
  editorCopy = editor;
  reasonCopy = reason;
  v13.receiver = self;
  v13.super_class = PREditorLookSwitchingAssertion;
  v8 = [(PREditorLookSwitchingAssertion *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_editor, editorCopy);
    v10 = [reasonCopy copy];
    reason = v9->_reason;
    v9->_reason = v10;
  }

  return v9;
}

- (void)dealloc
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(self);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = 138544642;
  v9 = v5;
  v10 = 2114;
  v11 = v7;
  v12 = 2048;
  v13 = a2;
  v14 = 2114;
  v15 = @"PREditor.m";
  v16 = 1024;
  v17 = 3302;
  v18 = 2114;
  v19 = a3;
  _os_log_fault_impl(&dword_1A8AA7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
}

- (void)invalidate
{
  if (![(PREditorLookSwitchingAssertion *)self isInvalidated])
  {
    editor = [(PREditorLookSwitchingAssertion *)self editor];
    [editor removeLookSwitchingAssertion:self];
    [(PREditorLookSwitchingAssertion *)self setInvalidated:1];
  }
}

- (PREditor)editor
{
  WeakRetained = objc_loadWeakRetained(&self->_editor);

  return WeakRetained;
}

@end