@interface UIPreviewInteraction
- (BOOL)respondsToSelector:(SEL)selector;
- (UIPreviewInteraction)initWithView:(UIView *)view;
- (id)initClickBasedImplementationWithView:(id)view;
- (id)methodSignatureForSelector:(SEL)selector;
@end

@implementation UIPreviewInteraction

- (UIPreviewInteraction)initWithView:(UIView *)view
{
  v4 = view;
  v12.receiver = self;
  v12.super_class = UIPreviewInteraction;
  v5 = [(UIPreviewInteraction *)&v12 init];
  if (v5)
  {
    if (_UIInternalPreferencesRevisionOnce != -1)
    {
      dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
    }

    v6 = _UIInternalPreferencesRevisionVar;
    if (_UIInternalPreferencesRevisionVar < 1)
    {
      goto LABEL_5;
    }

    v11 = _UIInternalPreference_UseClickBasedPreviewInteraction;
    if (_UIInternalPreferencesRevisionVar == _UIInternalPreference_UseClickBasedPreviewInteraction)
    {
      goto LABEL_5;
    }

    while (v6 >= v11)
    {
      _UIInternalPreferenceSync(v6, &_UIInternalPreference_UseClickBasedPreviewInteraction, @"UseClickBasedPreviewInteraction", _UIInternalPreferenceUpdateBool);
      v11 = _UIInternalPreference_UseClickBasedPreviewInteraction;
      if (v6 == _UIInternalPreference_UseClickBasedPreviewInteraction)
      {
        goto LABEL_5;
      }
    }

    if (!byte_1EA95E0F4)
    {
LABEL_5:
      v7 = off_1E70EBF08;
    }

    else
    {
      v7 = off_1E70EBF10;
    }

    v8 = [objc_alloc(*v7) initWithView:v4 previewInteraction:v5];
    interactionImpl = v5->_interactionImpl;
    v5->_interactionImpl = v8;
  }

  return v5;
}

- (id)initClickBasedImplementationWithView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = UIPreviewInteraction;
  v5 = [(UIPreviewInteraction *)&v9 init];
  if (v5)
  {
    v6 = [[_UIPreviewInteractionClickImpl alloc] initWithView:viewCopy previewInteraction:v5];
    interactionImpl = v5->_interactionImpl;
    v5->_interactionImpl = v6;
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v5.receiver = self;
  v5.super_class = UIPreviewInteraction;
  if ([(UIPreviewInteraction *)&v5 respondsToSelector:?])
  {
    v3 = 1;
  }

  else
  {
    v3 = objc_opt_respondsToSelector();
  }

  return v3 & 1;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = UIPreviewInteraction;
  v5 = [(UIPreviewInteraction *)&v7 methodSignatureForSelector:?];
  if (!v5)
  {
    v5 = [(_UIPreviewInteractionImpl *)self->_interactionImpl methodSignatureForSelector:selector];
  }

  return v5;
}

@end