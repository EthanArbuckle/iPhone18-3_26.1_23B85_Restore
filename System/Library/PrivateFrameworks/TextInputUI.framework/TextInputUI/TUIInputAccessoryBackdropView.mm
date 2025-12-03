@interface TUIInputAccessoryBackdropView
- (void)_setRenderConfig:(id)config;
- (void)setInputAccessoryViewTraits:(id)traits;
- (void)updateVisualStyle;
@end

@implementation TUIInputAccessoryBackdropView

- (void)updateVisualStyle
{
  inputAccessoryViewTraits = [(TUIInputAccessoryBackdropView *)self inputAccessoryViewTraits];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    inputAccessoryViewTraits2 = [(TUIInputAccessoryBackdropView *)self inputAccessoryViewTraits];
    inputAccessoryViewBackdropColor = [inputAccessoryViewTraits2 inputAccessoryViewBackdropColor];
    [(TUIInputAccessoryBackdropView *)self setBackgroundColor:inputAccessoryViewBackdropColor];
  }

  inputAccessoryViewTraits3 = [(TUIInputAccessoryBackdropView *)self inputAccessoryViewTraits];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    inputAccessoryViewTraits4 = [(TUIInputAccessoryBackdropView *)self inputAccessoryViewTraits];
    inputAccessoryViewBackdropEffects = [inputAccessoryViewTraits4 inputAccessoryViewBackdropEffects];
    [(TUIInputAccessoryBackdropView *)self setBackgroundEffects:inputAccessoryViewBackdropEffects];
  }
}

- (void)_setRenderConfig:(id)config
{
  v4.receiver = self;
  v4.super_class = TUIInputAccessoryBackdropView;
  [(TUIInputAccessoryBackdropView *)&v4 _setRenderConfig:config];
  [(TUIInputAccessoryBackdropView *)self updateVisualStyle];
}

- (void)setInputAccessoryViewTraits:(id)traits
{
  traitsCopy = traits;
  if (self->_inputAccessoryViewTraits != traitsCopy)
  {
    v6 = traitsCopy;
    objc_storeStrong(&self->_inputAccessoryViewTraits, traits);
    [(TUIInputAccessoryBackdropView *)self updateVisualStyle];
    traitsCopy = v6;
  }
}

@end