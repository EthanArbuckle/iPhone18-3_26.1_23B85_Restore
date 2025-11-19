@interface STMenuButton
- (STMenuButtonDelegate)delegate;
- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5;
@end

@implementation STMenuButton

- (void)contextMenuInteraction:(id)a3 willDisplayMenuForConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13.receiver = self;
  v13.super_class = STMenuButton;
  if ([(STMenuButton *)&v13 respondsToSelector:sel_contextMenuInteraction_willDisplayMenuForConfiguration_animator_])
  {
    v12.receiver = self;
    v12.super_class = STMenuButton;
    [(STMenuButton *)&v12 contextMenuInteraction:v8 willDisplayMenuForConfiguration:v9 animator:v10];
  }

  v11 = [(STMenuButton *)self delegate];
  [v11 contextMenuWillDisplayForButton:self];
}

- (void)contextMenuInteraction:(id)a3 willEndForConfiguration:(id)a4 animator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(STMenuButton *)self delegate];
  [v11 contextMenuWillEndForButton:self];

  v13.receiver = self;
  v13.super_class = STMenuButton;
  if ([(STMenuButton *)&v13 respondsToSelector:sel_contextMenuInteraction_willEndForConfiguration_animator_])
  {
    v12.receiver = self;
    v12.super_class = STMenuButton;
    [(STMenuButton *)&v12 contextMenuInteraction:v8 willEndForConfiguration:v9 animator:v10];
  }
}

- (STMenuButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end