@interface _UIFieldEditorHost
+ (id)fieldEditorHostForTextField:(id)a3;
- (_UIFieldEditorHost)initWithHostingView:(id)a3;
- (_UIFieldEditorHostingViewRequirements)hostingView;
- (id)_viewForHostingFieldEditor;
- (void)addFieldEditor:(id)a3;
- (void)addPlaceholderLabel:(id)a3;
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
  v3 = [WeakRetained _contentView];

  return v3;
}

+ (id)fieldEditorHostForTextField:(id)a3
{
  v3 = a3;
  if ([UISystemInputViewController canUseSystemInputViewControllerForResponder:v3])
  {
    v4 = off_1E70EB6B8;
  }

  else
  {
    v5 = [v3 _isPasscodeStyle];
    v4 = off_1E70EB6A8;
    if (v5)
    {
      v4 = off_1E70EB6B0;
    }
  }

  v6 = [objc_alloc(*v4) initWithHostingView:v3];

  return v6;
}

- (_UIFieldEditorHost)initWithHostingView:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIFieldEditorHost;
  v5 = [(_UIFieldEditorHost *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_hostingView, v4);
  }

  return v6;
}

- (void)addFieldEditor:(id)a3
{
  v5 = a3;
  v11 = [(_UIFieldEditorHost *)self _viewForHostingFieldEditor];
  hostedFieldEditor = self->_hostedFieldEditor;
  if (hostedFieldEditor)
  {
    v7 = [(UIView *)hostedFieldEditor superview];

    if (v7 == v11)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"_UIFieldEditorHost.m" lineNumber:61 description:{@"The field editor host (%@) is already hosting a field editor!", self}];
    }
  }

  v9 = self->_hostedFieldEditor;
  self->_hostedFieldEditor = v5;
  v10 = v5;

  [v11 addSubview:self->_hostedFieldEditor];
}

- (void)addPlaceholderLabel:(id)a3
{
  hostedFieldEditor = self->_hostedFieldEditor;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_hostingView);
  v6 = [WeakRetained _contentView];
  v7 = v6;
  if (hostedFieldEditor)
  {
    [v6 insertSubview:v5 belowSubview:self->_hostedFieldEditor];
  }

  else
  {
    [v6 addSubview:v5];
  }
}

@end