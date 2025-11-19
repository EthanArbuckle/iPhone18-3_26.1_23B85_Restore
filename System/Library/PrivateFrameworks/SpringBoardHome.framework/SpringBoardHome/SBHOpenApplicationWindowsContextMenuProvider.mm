@interface SBHOpenApplicationWindowsContextMenuProvider
- (BOOL)canProvideContextMenuSectionsForBundleIdentifier:(id)a3;
- (BOOL)canProvideContextMenuSectionsForIconView:(id)a3;
- (SBHOpenApplicationWindowsContextMenuProvider)init;
- (SBHOpenApplicationWindowsContextMenuProvider)initWithUniqueIdentifier:(id)a3;
- (SBHOpenApplicationWindowsContextMenuProviderDelegate)delegate;
- (id)applicationBundleIDForIconView:(id)a3;
- (id)contextMenuSectionsForBundleIdentifier:(id)a3;
- (id)contextMenuSectionsForIconView:(id)a3 atLocation:(CGPoint)a4;
@end

@implementation SBHOpenApplicationWindowsContextMenuProvider

- (SBHOpenApplicationWindowsContextMenuProvider)init
{
  v3 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  v4 = [(SBHOpenApplicationWindowsContextMenuProvider *)self initWithUniqueIdentifier:v3];

  return v4;
}

- (SBHOpenApplicationWindowsContextMenuProvider)initWithUniqueIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBHOpenApplicationWindowsContextMenuProvider;
  v5 = [(SBHOpenApplicationWindowsContextMenuProvider *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v6;
  }

  return v5;
}

- (id)contextMenuSectionsForIconView:(id)a3 atLocation:(CGPoint)a4
{
  v5 = a3;
  if ([(SBHOpenApplicationWindowsContextMenuProvider *)self canProvideContextMenuSectionsForIconView:v5])
  {
    v6 = [(SBHOpenApplicationWindowsContextMenuProvider *)self applicationBundleIDForIconView:v5];
    if (v6)
    {
      v7 = [(SBHOpenApplicationWindowsContextMenuProvider *)self contextMenuSectionsForBundleIdentifier:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)contextMenuSectionsForBundleIdentifier:(id)a3
{
  v4 = a3;
  if ([(SBHOpenApplicationWindowsContextMenuProvider *)self canProvideContextMenuSectionsForBundleIdentifier:v4])
  {
    v5 = [(SBHOpenApplicationWindowsContextMenuProvider *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v6 = [v5 dataSourceForOpenApplicationWindowsContextMenuProvider:self];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 openApplicationWindowsContextMenuProvider:self contextMenuSectionsForBundleIdentifier:v4];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)canProvideContextMenuSectionsForIconView:(id)a3
{
  v4 = a3;
  v5 = [v4 icon];
  if ([v5 isLeafIcon] && (objc_msgSend(MEMORY[0x1E69DC938], "currentDevice"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "userInterfaceIdiom"), v6, (v7 & 0xFFFFFFFFFFFFFFFBLL) == 1))
  {
    v8 = [(SBHOpenApplicationWindowsContextMenuProvider *)self applicationBundleIDForIconView:v4];
    v9 = [(SBHOpenApplicationWindowsContextMenuProvider *)self canProvideContextMenuSectionsForBundleIdentifier:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)canProvideContextMenuSectionsForBundleIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SBHOpenApplicationWindowsContextMenuProvider *)self delegate];
    v6 = (objc_opt_respondsToSelector() & 1) == 0 || [v5 openApplicationWindowsContextMenuProvider:self canProvideContextMenuSectionsForBundleIdentifier:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)applicationBundleIDForIconView:(id)a3
{
  v3 = [a3 icon];
  if ([v3 isLeafIcon])
  {
    v4 = objc_opt_class();
    v5 = v3;
    if (v4)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = v6;

    v7 = [v8 applicationBundleID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (SBHOpenApplicationWindowsContextMenuProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end