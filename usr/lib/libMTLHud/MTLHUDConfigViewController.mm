@interface MTLHUDConfigViewController
- (void)addDescription:(id)description;
- (void)addEntry:(id)entry;
- (void)addLink:(id)link andURL:(id)l;
- (void)addPanel:(id)panel;
- (void)addSection:(id)section;
@end

@implementation MTLHUDConfigViewController

- (void)addPanel:(id)panel
{
  panelCopy = panel;
  if (!self->_panels)
  {
    v4 = objc_opt_new();
    panels = self->_panels;
    self->_panels = v4;
  }

  v6 = objc_opt_new();
  [v6 setName:panelCopy];
  [(NSMutableArray *)self->_panels addObject:v6];
}

- (void)addEntry:(id)entry
{
  entryCopy = entry;
  panels = self->_panels;
  if (!panels)
  {
    v5 = objc_opt_new();
    v6 = self->_panels;
    self->_panels = v5;

    v7 = objc_opt_new();
    [(NSMutableArray *)self->_panels addObject:v7];

    panels = self->_panels;
  }

  lastObject = [(NSMutableArray *)panels lastObject];
  entries = [lastObject entries];
  [entries addObject:entryCopy];
}

- (void)addSection:(id)section
{
  sectionCopy = section;
  v5 = [[MTLHUDConfigViewControllerSectionEntry alloc] initWithTitle:sectionCopy];

  [(MTLHUDConfigViewController *)self addEntry:v5];
}

- (void)addDescription:(id)description
{
  descriptionCopy = description;
  v5 = [[MTLHUDConfigViewControllerMessageEntry alloc] initWithMessage:descriptionCopy color:1];

  [(MTLHUDConfigViewController *)self addEntry:v5];
}

- (void)addLink:(id)link andURL:(id)l
{
  lCopy = l;
  linkCopy = link;
  v8 = [[MTLHUDConfigViewControllerLinkEntry alloc] initWithTitle:linkCopy andURL:lCopy];

  [(MTLHUDConfigViewController *)self addEntry:v8];
}

@end