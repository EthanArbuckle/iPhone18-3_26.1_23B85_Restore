@interface STUIStatusBarPersonNameItem
- (STUIStatusBarScaledImageView)avatarView;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)viewForIdentifier:(id)identifier;
- (void)_create_avatarView;
@end

@implementation STUIStatusBarPersonNameItem

- (STUIStatusBarScaledImageView)avatarView
{
  avatarView = self->_avatarView;
  if (!avatarView)
  {
    [(STUIStatusBarPersonNameItem *)self _create_avatarView];
    avatarView = self->_avatarView;
  }

  return avatarView;
}

- (void)_create_avatarView
{
  v3 = [STUIStatusBarScaledImageView alloc];
  v4 = [(STUIStatusBarScaledImageView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  avatarView = self->_avatarView;
  self->_avatarView = v4;

  MEMORY[0x2821F96F8](v4, avatarView);
}

- (id)viewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  avatarDisplayIdentifier = [objc_opt_class() avatarDisplayIdentifier];

  if (avatarDisplayIdentifier == identifierCopy)
  {
    avatarView = [(STUIStatusBarPersonNameItem *)self avatarView];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = STUIStatusBarPersonNameItem;
    avatarView = [(STUIStatusBarNameItem *)&v9 viewForIdentifier:identifierCopy];
  }

  v7 = avatarView;

  return v7;
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  updateCopy = update;
  itemCopy = item;
  v20.receiver = self;
  v20.super_class = STUIStatusBarPersonNameItem;
  v8 = [(STUIStatusBarNameItem *)&v20 applyUpdate:updateCopy toDisplayItem:itemCopy];
  identifier = [itemCopy identifier];
  avatarDisplayIdentifier = [objc_opt_class() avatarDisplayIdentifier];
  if (identifier != avatarDisplayIdentifier)
  {
    goto LABEL_2;
  }

  dataChanged = [updateCopy dataChanged];

  if (dataChanged)
  {
    data = [updateCopy data];
    identifier = [data avatarEntry];

    if ([itemCopy isEnabled] && (objc_msgSend(identifier, "isEnabled") & 1) != 0)
    {
      avatarIdentifier = [identifier avatarIdentifier];
      [itemCopy setEnabled:{objc_msgSend(avatarIdentifier, "length") != 0}];
    }

    else
    {
      [itemCopy setEnabled:0];
    }

    if (![itemCopy isEnabled])
    {
      goto LABEL_3;
    }

    avatarDisplayIdentifier = [identifier avatarIdentifier];
    statusBar = [(STUIStatusBarItem *)self statusBar];
    v16 = [statusBar imageForAvatarIdentifier:avatarDisplayIdentifier];

    v17 = v16;
    if (!v16)
    {
      v18 = MEMORY[0x277D755B8];
      statusBar = [identifier avatarIdentifier];
      v17 = [v18 _systemImageNamed:statusBar];
    }

    avatarView = [(STUIStatusBarPersonNameItem *)self avatarView];
    [avatarView setImage:v17];

    if (!v16)
    {
    }

LABEL_2:
LABEL_3:
  }

  return v8;
}

@end