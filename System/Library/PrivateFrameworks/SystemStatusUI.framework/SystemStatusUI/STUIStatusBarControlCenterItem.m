@interface STUIStatusBarControlCenterItem
- (STUIStatusBarControlCenterGrabberView)grabberView;
- (id)systemImageNameForUpdate:(id)a3;
- (id)viewForIdentifier:(id)a3;
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

- (id)systemImageNameForUpdate:(id)a3
{
  v3 = [a3 data];
  v4 = [v3 controlCenterEntry];
  v5 = [v4 imageName];

  return v5;
}

- (id)viewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = +[STUIStatusBarControlCenterItem grabberIdentifier];

  if (v5 == v4)
  {
    v6 = [(STUIStatusBarControlCenterItem *)self grabberView];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = STUIStatusBarControlCenterItem;
    v6 = [(STUIStatusBarIndicatorItem *)&v9 viewForIdentifier:v4];
  }

  v7 = v6;

  return v7;
}

@end