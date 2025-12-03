@interface STUIStatusBarWeatherItem
- (STUIStatusBarImageView)conditionView;
- (STUIStatusBarStringView)aqiView;
- (STUIStatusBarStringView)temperatureView;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)viewForIdentifier:(id)identifier;
- (void)_create_aqiView;
- (void)_create_conditionView;
- (void)_create_temperatureView;
@end

@implementation STUIStatusBarWeatherItem

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  updateCopy = update;
  itemCopy = item;
  v37.receiver = self;
  v37.super_class = STUIStatusBarWeatherItem;
  v8 = [(STUIStatusBarItem *)&v37 applyUpdate:updateCopy toDisplayItem:itemCopy];
  if (![updateCopy dataChanged])
  {
    goto LABEL_30;
  }

  identifier = [itemCopy identifier];
  temperatureDisplayIdentifier = [objc_opt_class() temperatureDisplayIdentifier];

  if (identifier == temperatureDisplayIdentifier)
  {
    if ([itemCopy isEnabled])
    {
      data = [updateCopy data];
      weatherEntry = [data weatherEntry];
      if ([weatherEntry isEnabled])
      {
        data2 = [updateCopy data];
        weatherEntry2 = [data2 weatherEntry];
        temperature = [weatherEntry2 temperature];
        [itemCopy setEnabled:temperature != 0];
      }

      else
      {
        [itemCopy setEnabled:0];
      }
    }

    else
    {
      [itemCopy setEnabled:0];
    }

    if (![itemCopy isEnabled])
    {
      goto LABEL_30;
    }

    data3 = [updateCopy data];
    weatherEntry3 = [data3 weatherEntry];
    temperature2 = [weatherEntry3 temperature];
    temperatureView = [(STUIStatusBarWeatherItem *)self temperatureView];
LABEL_28:
    v33 = temperatureView;
    [temperatureView setText:temperature2];
    goto LABEL_29;
  }

  identifier2 = [itemCopy identifier];
  aqiDisplayIdentifier = [objc_opt_class() aqiDisplayIdentifier];

  isEnabled = [itemCopy isEnabled];
  if (identifier2 == aqiDisplayIdentifier)
  {
    if (isEnabled)
    {
      data4 = [updateCopy data];
      weatherEntry4 = [data4 weatherEntry];
      if ([weatherEntry4 isEnabled])
      {
        data5 = [updateCopy data];
        weatherEntry5 = [data5 weatherEntry];
        v28 = [weatherEntry5 aqi];
        [itemCopy setEnabled:v28 != 0];
      }

      else
      {
        [itemCopy setEnabled:0];
      }
    }

    else
    {
      [itemCopy setEnabled:0];
    }

    if (![itemCopy isEnabled])
    {
      goto LABEL_30;
    }

    data3 = [updateCopy data];
    weatherEntry3 = [data3 weatherEntry];
    temperature2 = [weatherEntry3 aqi];
    temperatureView = [(STUIStatusBarWeatherItem *)self aqiView];
    goto LABEL_28;
  }

  if (isEnabled)
  {
    data6 = [updateCopy data];
    weatherEntry6 = [data6 weatherEntry];
    if ([weatherEntry6 isEnabled])
    {
      data7 = [updateCopy data];
      weatherEntry7 = [data7 weatherEntry];
      imageName = [weatherEntry7 imageName];
      [itemCopy setEnabled:imageName != 0];
    }

    else
    {
      [itemCopy setEnabled:0];
    }
  }

  else
  {
    [itemCopy setEnabled:0];
  }

  if ([itemCopy isEnabled])
  {
    v29 = MEMORY[0x277D755B8];
    data3 = [updateCopy data];
    weatherEntry3 = [data3 weatherEntry];
    temperature2 = [weatherEntry3 imageName];
    v33 = [v29 _systemImageNamed:temperature2];
    conditionView = [(STUIStatusBarWeatherItem *)self conditionView];
    [conditionView setImage:v33];

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

- (id)viewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  temperatureDisplayIdentifier = [objc_opt_class() temperatureDisplayIdentifier];

  if (temperatureDisplayIdentifier == identifierCopy)
  {
    temperatureView = [(STUIStatusBarWeatherItem *)self temperatureView];
  }

  else
  {
    aqiDisplayIdentifier = [objc_opt_class() aqiDisplayIdentifier];

    if (aqiDisplayIdentifier == identifierCopy)
    {
      [(STUIStatusBarWeatherItem *)self aqiView];
    }

    else
    {
      [(STUIStatusBarWeatherItem *)self conditionView];
    }
    temperatureView = ;
  }

  v8 = temperatureView;

  return v8;
}

@end