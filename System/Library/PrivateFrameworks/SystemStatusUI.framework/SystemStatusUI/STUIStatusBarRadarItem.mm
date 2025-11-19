@interface STUIStatusBarRadarItem
- (STUIStatusBarRadarView)radarItemView;
- (id)imageForUpdate:(id)a3;
- (void)_create_radarItemView;
@end

@implementation STUIStatusBarRadarItem

- (id)imageForUpdate:(id)a3
{
  v3 = a3;
  v4 = [v3 data];
  v5 = [v4 radarEntry];
  v6 = [v5 BOOLValue];

  v7 = MEMORY[0x277D755B8];
  v8 = DashBoardFrameworkBundle();
  v9 = [v3 styleAttributes];

  v10 = [v9 traitCollection];
  v11 = [v7 imageNamed:@"Black_Radar" inBundle:v8 compatibleWithTraitCollection:v10];

  if ((v6 & 1) == 0)
  {
    [v11 size];
    UIGraphicsBeginImageContext(v16);
    v12 = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();
    v11 = v12;
  }

  v13 = [v11 imageWithRenderingMode:2];

  return v13;
}

- (STUIStatusBarRadarView)radarItemView
{
  radarItemView = self->_radarItemView;
  if (!radarItemView)
  {
    [(STUIStatusBarRadarItem *)self _create_radarItemView];
    radarItemView = self->_radarItemView;
  }

  return radarItemView;
}

- (void)_create_radarItemView
{
  v3 = [STUIStatusBarRadarView alloc];
  self->_radarItemView = [(STUIStatusBarRadarView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  MEMORY[0x2821F96F8]();
}

@end