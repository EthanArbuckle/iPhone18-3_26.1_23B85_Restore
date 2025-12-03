@interface STMenuButton
- (STMenuButtonDelegate)delegate;
- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator;
@end

@implementation STMenuButton

- (void)contextMenuInteraction:(id)interaction willDisplayMenuForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  animatorCopy = animator;
  v13.receiver = self;
  v13.super_class = STMenuButton;
  if ([(STMenuButton *)&v13 respondsToSelector:sel_contextMenuInteraction_willDisplayMenuForConfiguration_animator_])
  {
    v12.receiver = self;
    v12.super_class = STMenuButton;
    [(STMenuButton *)&v12 contextMenuInteraction:interactionCopy willDisplayMenuForConfiguration:configurationCopy animator:animatorCopy];
  }

  delegate = [(STMenuButton *)self delegate];
  [delegate contextMenuWillDisplayForButton:self];
}

- (void)contextMenuInteraction:(id)interaction willEndForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  animatorCopy = animator;
  delegate = [(STMenuButton *)self delegate];
  [delegate contextMenuWillEndForButton:self];

  v13.receiver = self;
  v13.super_class = STMenuButton;
  if ([(STMenuButton *)&v13 respondsToSelector:sel_contextMenuInteraction_willEndForConfiguration_animator_])
  {
    v12.receiver = self;
    v12.super_class = STMenuButton;
    [(STMenuButton *)&v12 contextMenuInteraction:interactionCopy willEndForConfiguration:configurationCopy animator:animatorCopy];
  }
}

- (STMenuButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end