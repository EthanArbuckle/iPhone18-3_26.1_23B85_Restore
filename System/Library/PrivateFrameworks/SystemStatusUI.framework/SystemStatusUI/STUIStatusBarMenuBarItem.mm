@interface STUIStatusBarMenuBarItem
- (STUIStatusBarDisplayableContainerView)menuBarContainer;
- (UIView)backgroundView;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)createDisplayItemForIdentifier:(id)a3;
- (id)viewForIdentifier:(id)a3;
- (void)_create_backgroundView;
- (void)_create_menuBarContainer;
- (void)invalidateMenuBar;
- (void)updateMenuBarContainer;
@end

@implementation STUIStatusBarMenuBarItem

- (void)updateMenuBarContainer
{
  v22[4] = *MEMORY[0x277D85DE8];
  v3 = [(STUIStatusBarMenuBarItem *)self menuBarView];

  if (!v3)
  {
    v4 = [(STUIStatusBarMenuBarItem *)self menuBarContainer];
    v5 = [(STUIStatusBarItem *)self statusBar];
    v6 = [v5 menuBarProvider];
    v7 = [(STUIStatusBarItem *)self statusBar];
    v8 = [v6 menuBarViewForStatusBar:v7];

    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 addSubview:v8];
    [v4 setSubviewForBaselineAlignment:v8];
    v21 = [v8 leadingAnchor];
    v20 = [v4 leadingAnchor];
    v19 = [v21 constraintEqualToAnchor:v20];
    v22[0] = v19;
    v18 = [v8 trailingAnchor];
    v17 = [v4 trailingAnchor];
    v16 = [v18 constraintEqualToAnchor:v17];
    v22[1] = v16;
    v9 = [v8 topAnchor];
    v10 = [v4 topAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v22[2] = v11;
    v12 = [v8 bottomAnchor];
    v13 = [v4 bottomAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v22[3] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];

    [MEMORY[0x277CCAAD0] activateConstraints:v15];
    [v4 invalidateIntrinsicContentSize];
    [(STUIStatusBarMenuBarItem *)self setMenuBarView:v8];
  }
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v11.receiver = self;
  v11.super_class = STUIStatusBarMenuBarItem;
  v6 = a4;
  v7 = [(STUIStatusBarItem *)&v11 applyUpdate:a3 toDisplayItem:v6];
  v8 = [v6 identifier];

  v9 = [objc_opt_class() defaultDisplayIdentifier];

  if (v8 == v9)
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

  v6 = [MEMORY[0x277D75348] blackColor];
  [(UIView *)self->_backgroundView setBackgroundColor:v6];
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

- (id)viewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() backgroundDisplayIdentifier];

  if (v5 == v4)
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

- (id)createDisplayItemForIdentifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = STUIStatusBarMenuBarItem;
  v3 = [(STUIStatusBarItem *)&v7 createDisplayItemForIdentifier:a3];
  v4 = [v3 identifier];
  v5 = [objc_opt_class() backgroundDisplayIdentifier];

  if (v4 == v5)
  {
    [v3 setBackground:1];
  }

  return v3;
}

- (void)invalidateMenuBar
{
  v3 = [(STUIStatusBarMenuBarItem *)self menuBarView];
  [v3 removeFromSuperview];

  [(STUIStatusBarMenuBarItem *)self setMenuBarView:0];

  [(STUIStatusBarItem *)self setNeedsUpdate];
}

@end