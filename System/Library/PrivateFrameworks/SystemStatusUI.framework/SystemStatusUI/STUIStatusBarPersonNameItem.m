@interface STUIStatusBarPersonNameItem
- (STUIStatusBarScaledImageView)avatarView;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)viewForIdentifier:(id)a3;
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

- (id)viewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() avatarDisplayIdentifier];

  if (v5 == v4)
  {
    v6 = [(STUIStatusBarPersonNameItem *)self avatarView];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = STUIStatusBarPersonNameItem;
    v6 = [(STUIStatusBarNameItem *)&v9 viewForIdentifier:v4];
  }

  v7 = v6;

  return v7;
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = STUIStatusBarPersonNameItem;
  v8 = [(STUIStatusBarNameItem *)&v20 applyUpdate:v6 toDisplayItem:v7];
  v9 = [v7 identifier];
  v10 = [objc_opt_class() avatarDisplayIdentifier];
  if (v9 != v10)
  {
    goto LABEL_2;
  }

  v12 = [v6 dataChanged];

  if (v12)
  {
    v13 = [v6 data];
    v9 = [v13 avatarEntry];

    if ([v7 isEnabled] && (objc_msgSend(v9, "isEnabled") & 1) != 0)
    {
      v14 = [v9 avatarIdentifier];
      [v7 setEnabled:{objc_msgSend(v14, "length") != 0}];
    }

    else
    {
      [v7 setEnabled:0];
    }

    if (![v7 isEnabled])
    {
      goto LABEL_3;
    }

    v10 = [v9 avatarIdentifier];
    v15 = [(STUIStatusBarItem *)self statusBar];
    v16 = [v15 imageForAvatarIdentifier:v10];

    v17 = v16;
    if (!v16)
    {
      v18 = MEMORY[0x277D755B8];
      v15 = [v9 avatarIdentifier];
      v17 = [v18 _systemImageNamed:v15];
    }

    v19 = [(STUIStatusBarPersonNameItem *)self avatarView];
    [v19 setImage:v17];

    if (!v16)
    {
    }

LABEL_2:
LABEL_3:
  }

  return v8;
}

@end