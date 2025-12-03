@interface _UIFieldEditorHost
+ (id)fieldEditorHostForTextField:(id)field;
- (_UIFieldEditorHost)initWithHostingView:(id)view;
- (_UIFieldEditorHostingViewRequirements)hostingView;
- (id)_viewForHostingFieldEditor;
- (void)addFieldEditor:(id)editor;
- (void)addPlaceholderLabel:(id)label;
- (void)removeFieldEditor;
@end

@implementation _UIFieldEditorHost

- (_UIFieldEditorHostingViewRequirements)hostingView
{
  WeakRetained = objc_loadWeakRetained(&self->_hostingView);

  return WeakRetained;
}

- (void)removeFieldEditor
{
  [(UIScrollView *)self->_hostedFieldEditor removeFromSuperview];
  hostedFieldEditor = self->_hostedFieldEditor;
  self->_hostedFieldEditor = 0;
}

- (id)_viewForHostingFieldEditor
{
  WeakRetained = objc_loadWeakRetained(&self->_hostingView);
  _contentView = [WeakRetained _contentView];

  return _contentView;
}

+ (id)fieldEditorHostForTextField:(id)field
{
  fieldCopy = field;
  if ([UISystemInputViewController canUseSystemInputViewControllerForResponder:fieldCopy])
  {
    v4 = off_1E70EB6B8;
  }

  else
  {
    _isPasscodeStyle = [fieldCopy _isPasscodeStyle];
    v4 = off_1E70EB6A8;
    if (_isPasscodeStyle)
    {
      v4 = off_1E70EB6B0;
    }
  }

  v6 = [objc_alloc(*v4) initWithHostingView:fieldCopy];

  return v6;
}

- (_UIFieldEditorHost)initWithHostingView:(id)view
{
  viewCopy = view;
  v8.receiver = self;
  v8.super_class = _UIFieldEditorHost;
  v5 = [(_UIFieldEditorHost *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_hostingView, viewCopy);
  }

  return v6;
}

- (void)addFieldEditor:(id)editor
{
  editorCopy = editor;
  _viewForHostingFieldEditor = [(_UIFieldEditorHost *)self _viewForHostingFieldEditor];
  hostedFieldEditor = self->_hostedFieldEditor;
  if (hostedFieldEditor)
  {
    superview = [(UIView *)hostedFieldEditor superview];

    if (superview == _viewForHostingFieldEditor)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFieldEditorHost.m" lineNumber:61 description:{@"The field editor host (%@) is already hosting a field editor!", self}];
    }
  }

  v9 = self->_hostedFieldEditor;
  self->_hostedFieldEditor = editorCopy;
  v10 = editorCopy;

  [_viewForHostingFieldEditor addSubview:self->_hostedFieldEditor];
}

- (void)addPlaceholderLabel:(id)label
{
  hostedFieldEditor = self->_hostedFieldEditor;
  labelCopy = label;
  WeakRetained = objc_loadWeakRetained(&self->_hostingView);
  _contentView = [WeakRetained _contentView];
  v7 = _contentView;
  if (hostedFieldEditor)
  {
    [_contentView insertSubview:labelCopy belowSubview:self->_hostedFieldEditor];
  }

  else
  {
    [_contentView addSubview:labelCopy];
  }
}

@end