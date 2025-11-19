@interface TUIInputAccessoryBackdropView
- (void)_setRenderConfig:(id)a3;
- (void)setInputAccessoryViewTraits:(id)a3;
- (void)updateVisualStyle;
@end

@implementation TUIInputAccessoryBackdropView

- (void)updateVisualStyle
{
  v3 = [(TUIInputAccessoryBackdropView *)self inputAccessoryViewTraits];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(TUIInputAccessoryBackdropView *)self inputAccessoryViewTraits];
    v6 = [v5 inputAccessoryViewBackdropColor];
    [(TUIInputAccessoryBackdropView *)self setBackgroundColor:v6];
  }

  v7 = [(TUIInputAccessoryBackdropView *)self inputAccessoryViewTraits];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v10 = [(TUIInputAccessoryBackdropView *)self inputAccessoryViewTraits];
    v9 = [v10 inputAccessoryViewBackdropEffects];
    [(TUIInputAccessoryBackdropView *)self setBackgroundEffects:v9];
  }
}

- (void)_setRenderConfig:(id)a3
{
  v4.receiver = self;
  v4.super_class = TUIInputAccessoryBackdropView;
  [(TUIInputAccessoryBackdropView *)&v4 _setRenderConfig:a3];
  [(TUIInputAccessoryBackdropView *)self updateVisualStyle];
}

- (void)setInputAccessoryViewTraits:(id)a3
{
  v5 = a3;
  if (self->_inputAccessoryViewTraits != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_inputAccessoryViewTraits, a3);
    [(TUIInputAccessoryBackdropView *)self updateVisualStyle];
    v5 = v6;
  }
}

@end