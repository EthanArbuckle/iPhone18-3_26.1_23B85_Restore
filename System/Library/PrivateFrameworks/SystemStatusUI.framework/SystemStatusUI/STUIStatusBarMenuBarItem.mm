@interface STUIStatusBarMenuBarItem
- (STUIStatusBarDisplayableContainerView)menuBarContainer;
- (UIView)backgroundView;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)createDisplayItemForIdentifier:(id)identifier;
- (id)viewForIdentifier:(id)identifier;
- (void)_create_backgroundView;
- (void)_create_menuBarContainer;
- (void)invalidateMenuBar;
- (void)updateMenuBarContainer;
@end

@implementation STUIStatusBarMenuBarItem

- (void)updateMenuBarContainer
{
  v22[4] = *MEMORY[0x277D85DE8];
  menuBarView = [(STUIStatusBarMenuBarItem *)self menuBarView];

  if (!menuBarView)
  {
    menuBarContainer = [(STUIStatusBarMenuBarItem *)self menuBarContainer];
    statusBar = [(STUIStatusBarItem *)self statusBar];
    menuBarProvider = [statusBar menuBarProvider];
    statusBar2 = [(STUIStatusBarItem *)self statusBar];
    v8 = [menuBarProvider menuBarViewForStatusBar:statusBar2];

    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [menuBarContainer addSubview:v8];
    [menuBarContainer setSubviewForBaselineAlignment:v8];
    leadingAnchor = [v8 leadingAnchor];
    leadingAnchor2 = [menuBarContainer leadingAnchor];
    v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v22[0] = v19;
    trailingAnchor = [v8 trailingAnchor];
    trailingAnchor2 = [menuBarContainer trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v22[1] = v16;
    topAnchor = [v8 topAnchor];
    topAnchor2 = [menuBarContainer topAnchor];
    v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v22[2] = v11;
    bottomAnchor = [v8 bottomAnchor];
    bottomAnchor2 = [menuBarContainer bottomAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v22[3] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];

    [MEMORY[0x277CCAAD0] activateConstraints:v15];
    [menuBarContainer invalidateIntrinsicContentSize];
    [(STUIStatusBarMenuBarItem *)self setMenuBarView:v8];
  }
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  v11.receiver = self;
  v11.super_class = STUIStatusBarMenuBarItem;
  itemCopy = item;
  v7 = [(STUIStatusBarItem *)&v11 applyUpdate:update toDisplayItem:itemCopy];
  identifier = [itemCopy identifier];

  defaultDisplayIdentifier = [objc_opt_class() defaultDisplayIdentifier];

  if (identifier == defaultDisplayIdentifier)
  {
    [(STUIStatusBarMenuBarItem *)self updateMenuBarContainer];
  }

  return v7;
}

- (UIView)backgroundView
{
  backgroundView = self->_backgroundView;
  if (!backgroundView)
  {
    [(STUIStatusBarMenuBarItem *)self _create_backgroundView];
    backgroundView = self->_backgroundView;
  }

  return backgroundView;
}

- (void)_create_backgroundView
{
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v4;

  blackColor = [MEMORY[0x277D75348] blackColor];
  [(UIView *)self->_backgroundView setBackgroundColor:blackColor];
}

- (STUIStatusBarDisplayableContainerView)menuBarContainer
{
  menuBarContainer = self->_menuBarContainer;
  if (!menuBarContainer)
  {
    [(STUIStatusBarMenuBarItem *)self _create_menuBarContainer];
    menuBarContainer = self->_menuBarContainer;
  }

  return menuBarContainer;
}

- (void)_create_menuBarContainer
{
  v3 = [STUIStatusBarDisplayableContainerView alloc];
  v4 = [(STUIStatusBarDisplayableContainerView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  menuBarContainer = self->_menuBarContainer;
  self->_menuBarContainer = v4;

  [(STUIStatusBarDisplayableContainerView *)self->_menuBarContainer setForceAllowInteraction:1];
  v6 = self->_menuBarContainer;

  [(STUIStatusBarDisplayableContainerView *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (id)viewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  backgroundDisplayIdentifier = [objc_opt_class() backgroundDisplayIdentifier];

  if (backgroundDisplayIdentifier == identifierCopy)
  {
    [(STUIStatusBarMenuBarItem *)self backgroundView];
  }

  else
  {
    [(STUIStatusBarMenuBarItem *)self updateMenuBarContainer];
    [(STUIStatusBarMenuBarItem *)self menuBarContainer];
  }
  v6 = ;

  return v6;
}

- (id)createDisplayItemForIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = STUIStatusBarMenuBarItem;
  v3 = [(STUIStatusBarItem *)&v7 createDisplayItemForIdentifier:identifier];
  identifier = [v3 identifier];
  backgroundDisplayIdentifier = [objc_opt_class() backgroundDisplayIdentifier];

  if (identifier == backgroundDisplayIdentifier)
  {
    [v3 setBackground:1];
  }

  return v3;
}

- (void)invalidateMenuBar
{
  menuBarView = [(STUIStatusBarMenuBarItem *)self menuBarView];
  [menuBarView removeFromSuperview];

  [(STUIStatusBarMenuBarItem *)self setMenuBarView:0];

  [(STUIStatusBarItem *)self setNeedsUpdate];
}

@end