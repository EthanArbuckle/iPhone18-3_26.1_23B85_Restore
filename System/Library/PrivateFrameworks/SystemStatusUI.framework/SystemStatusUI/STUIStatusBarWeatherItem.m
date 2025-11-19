@interface STUIStatusBarWeatherItem
- (STUIStatusBarImageView)conditionView;
- (STUIStatusBarStringView)aqiView;
- (STUIStatusBarStringView)temperatureView;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)viewForIdentifier:(id)a3;
- (void)_create_aqiView;
- (void)_create_conditionView;
- (void)_create_temperatureView;
@end

@implementation STUIStatusBarWeatherItem

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v37.receiver = self;
  v37.super_class = STUIStatusBarWeatherItem;
  v8 = [(STUIStatusBarItem *)&v37 applyUpdate:v6 toDisplayItem:v7];
  if (![v6 dataChanged])
  {
    goto LABEL_30;
  }

  v9 = [v7 identifier];
  v10 = [objc_opt_class() temperatureDisplayIdentifier];

  if (v9 == v10)
  {
    if ([v7 isEnabled])
    {
      v19 = [v6 data];
      v20 = [v19 weatherEntry];
      if ([v20 isEnabled])
      {
        v21 = [v6 data];
        v22 = [v21 weatherEntry];
        v23 = [v22 temperature];
        [v7 setEnabled:v23 != 0];
      }

      else
      {
        [v7 setEnabled:0];
      }
    }

    else
    {
      [v7 setEnabled:0];
    }

    if (![v7 isEnabled])
    {
      goto LABEL_30;
    }

    v30 = [v6 data];
    v31 = [v30 weatherEntry];
    v32 = [v31 temperature];
    v35 = [(STUIStatusBarWeatherItem *)self temperatureView];
LABEL_28:
    v33 = v35;
    [v35 setText:v32];
    goto LABEL_29;
  }

  v11 = [v7 identifier];
  v12 = [objc_opt_class() aqiDisplayIdentifier];

  v13 = [v7 isEnabled];
  if (v11 == v12)
  {
    if (v13)
    {
      v24 = [v6 data];
      v25 = [v24 weatherEntry];
      if ([v25 isEnabled])
      {
        v26 = [v6 data];
        v27 = [v26 weatherEntry];
        v28 = [v27 aqi];
        [v7 setEnabled:v28 != 0];
      }

      else
      {
        [v7 setEnabled:0];
      }
    }

    else
    {
      [v7 setEnabled:0];
    }

    if (![v7 isEnabled])
    {
      goto LABEL_30;
    }

    v30 = [v6 data];
    v31 = [v30 weatherEntry];
    v32 = [v31 aqi];
    v35 = [(STUIStatusBarWeatherItem *)self aqiView];
    goto LABEL_28;
  }

  if (v13)
  {
    v14 = [v6 data];
    v15 = [v14 weatherEntry];
    if ([v15 isEnabled])
    {
      v16 = [v6 data];
      v17 = [v16 weatherEntry];
      v18 = [v17 imageName];
      [v7 setEnabled:v18 != 0];
    }

    else
    {
      [v7 setEnabled:0];
    }
  }

  else
  {
    [v7 setEnabled:0];
  }

  if ([v7 isEnabled])
  {
    v29 = MEMORY[0x277D755B8];
    v30 = [v6 data];
    v31 = [v30 weatherEntry];
    v32 = [v31 imageName];
    v33 = [v29 _systemImageNamed:v32];
    v34 = [(STUIStatusBarWeatherItem *)self conditionView];
    [v34 setImage:v33];

LABEL_29:
  }

LABEL_30:

  return v8;
}

- (STUIStatusBarImageView)conditionView
{
  conditionView = self->_conditionView;
  if (!conditionView)
  {
    [(STUIStatusBarWeatherItem *)self _create_conditionView];
    conditionView = self->_conditionView;
  }

  return conditionView;
}

- (void)_create_conditionView
{
  v3 = [STUIStatusBarImageView alloc];
  v4 = [(STUIStatusBarImageView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  conditionView = self->_conditionView;
  self->_conditionView = v4;

  MEMORY[0x2821F96F8](v4, conditionView);
}

- (STUIStatusBarStringView)temperatureView
{
  temperatureView = self->_temperatureView;
  if (!temperatureView)
  {
    [(STUIStatusBarWeatherItem *)self _create_temperatureView];
    temperatureView = self->_temperatureView;
  }

  return temperatureView;
}

- (void)_create_temperatureView
{
  v3 = [STUIStatusBarStringView alloc];
  v4 = [(STUIStatusBarStringView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  temperatureView = self->_temperatureView;
  self->_temperatureView = v4;

  MEMORY[0x2821F96F8](v4, temperatureView);
}

- (STUIStatusBarStringView)aqiView
{
  aqiView = self->_aqiView;
  if (!aqiView)
  {
    [(STUIStatusBarWeatherItem *)self _create_aqiView];
    aqiView = self->_aqiView;
  }

  return aqiView;
}

- (void)_create_aqiView
{
  v3 = [STUIStatusBarStringView alloc];
  v4 = [(STUIStatusBarStringView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  aqiView = self->_aqiView;
  self->_aqiView = v4;

  MEMORY[0x2821F96F8](v4, aqiView);
}

- (id)viewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() temperatureDisplayIdentifier];

  if (v5 == v4)
  {
    v7 = [(STUIStatusBarWeatherItem *)self temperatureView];
  }

  else
  {
    v6 = [objc_opt_class() aqiDisplayIdentifier];

    if (v6 == v4)
    {
      [(STUIStatusBarWeatherItem *)self aqiView];
    }

    else
    {
      [(STUIStatusBarWeatherItem *)self conditionView];
    }
    v7 = ;
  }

  v8 = v7;

  return v8;
}

@end