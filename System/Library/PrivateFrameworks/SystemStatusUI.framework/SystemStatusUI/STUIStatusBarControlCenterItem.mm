@interface STUIStatusBarControlCenterItem
- (STUIStatusBarControlCenterGrabberView)grabberView;
- (id)systemImageNameForUpdate:(id)update;
- (id)viewForIdentifier:(id)identifier;
- (void)_create_grabberView;
@end

@implementation STUIStatusBarControlCenterItem

- (STUIStatusBarControlCenterGrabberView)grabberView
{
  grabberView = self->_grabberView;
  if (!grabberView)
  {
    [(STUIStatusBarControlCenterItem *)self _create_grabberView];
    grabberView = self->_grabberView;
  }

  return grabberView;
}

- (void)_create_grabberView
{
  v3 = [STUIStatusBarControlCenterGrabberView alloc];
  self->_grabberView = [(STUIStatusBarControlCenterGrabberView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  MEMORY[0x2821F96F8]();
}

- (id)systemImageNameForUpdate:(id)update
{
  data = [update data];
  controlCenterEntry = [data controlCenterEntry];
  imageName = [controlCenterEntry imageName];

  return imageName;
}

- (id)viewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[STUIStatusBarControlCenterItem grabberIdentifier];

  if (v5 == identifierCopy)
  {
    grabberView = [(STUIStatusBarControlCenterItem *)self grabberView];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = STUIStatusBarControlCenterItem;
    grabberView = [(STUIStatusBarIndicatorItem *)&v9 viewForIdentifier:identifierCopy];
  }

  v7 = grabberView;

  return v7;
}

@end