@interface SBHOpenApplicationWindowsContextMenuProvider
- (BOOL)canProvideContextMenuSectionsForBundleIdentifier:(id)identifier;
- (BOOL)canProvideContextMenuSectionsForIconView:(id)view;
- (SBHOpenApplicationWindowsContextMenuProvider)init;
- (SBHOpenApplicationWindowsContextMenuProvider)initWithUniqueIdentifier:(id)identifier;
- (SBHOpenApplicationWindowsContextMenuProviderDelegate)delegate;
- (id)applicationBundleIDForIconView:(id)view;
- (id)contextMenuSectionsForBundleIdentifier:(id)identifier;
- (id)contextMenuSectionsForIconView:(id)view atLocation:(CGPoint)location;
@end

@implementation SBHOpenApplicationWindowsContextMenuProvider

- (SBHOpenApplicationWindowsContextMenuProvider)init
{
  v3 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  v4 = [(SBHOpenApplicationWindowsContextMenuProvider *)self initWithUniqueIdentifier:v3];

  return v4;
}

- (SBHOpenApplicationWindowsContextMenuProvider)initWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = SBHOpenApplicationWindowsContextMenuProvider;
  v5 = [(SBHOpenApplicationWindowsContextMenuProvider *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v6;
  }

  return v5;
}

- (id)contextMenuSectionsForIconView:(id)view atLocation:(CGPoint)location
{
  viewCopy = view;
  if ([(SBHOpenApplicationWindowsContextMenuProvider *)self canProvideContextMenuSectionsForIconView:viewCopy])
  {
    v6 = [(SBHOpenApplicationWindowsContextMenuProvider *)self applicationBundleIDForIconView:viewCopy];
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

- (id)contextMenuSectionsForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(SBHOpenApplicationWindowsContextMenuProvider *)self canProvideContextMenuSectionsForBundleIdentifier:identifierCopy])
  {
    delegate = [(SBHOpenApplicationWindowsContextMenuProvider *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v6 = [delegate dataSourceForOpenApplicationWindowsContextMenuProvider:self];
      v7 = v6;
      if (v6)
      {
        v8 = [v6 openApplicationWindowsContextMenuProvider:self contextMenuSectionsForBundleIdentifier:identifierCopy];
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

- (BOOL)canProvideContextMenuSectionsForIconView:(id)view
{
  viewCopy = view;
  icon = [viewCopy icon];
  if ([icon isLeafIcon] && (objc_msgSend(MEMORY[0x1E69DC938], "currentDevice"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "userInterfaceIdiom"), v6, (v7 & 0xFFFFFFFFFFFFFFFBLL) == 1))
  {
    v8 = [(SBHOpenApplicationWindowsContextMenuProvider *)self applicationBundleIDForIconView:viewCopy];
    v9 = [(SBHOpenApplicationWindowsContextMenuProvider *)self canProvideContextMenuSectionsForBundleIdentifier:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)canProvideContextMenuSectionsForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    delegate = [(SBHOpenApplicationWindowsContextMenuProvider *)self delegate];
    v6 = (objc_opt_respondsToSelector() & 1) == 0 || [delegate openApplicationWindowsContextMenuProvider:self canProvideContextMenuSectionsForBundleIdentifier:identifierCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)applicationBundleIDForIconView:(id)view
{
  icon = [view icon];
  if ([icon isLeafIcon])
  {
    v4 = objc_opt_class();
    v5 = icon;
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

    applicationBundleID = [v8 applicationBundleID];
  }

  else
  {
    applicationBundleID = 0;
  }

  return applicationBundleID;
}

- (SBHOpenApplicationWindowsContextMenuProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end