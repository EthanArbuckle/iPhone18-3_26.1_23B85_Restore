@interface STUIStatusBarCellularItem
+ (id)groupWithHighPriority:(int64_t)priority lowPriority:(int64_t)lowPriority typeClass:(Class)class allowDualNetwork:(BOOL)network;
- (BOOL)_updateSignalView:(id)view withUpdate:(id)update entry:(id)entry forceShowingDisabledSignalBars:(BOOL)bars;
- (STUIStatusBarCellularItem)initWithIdentifier:(id)identifier statusBar:(id)bar;
- (STUIStatusBarCellularItemTypeStringProvider)typeStringProvider;
- (STUIStatusBarCellularSignalView)signalView;
- (STUIStatusBarImageView)callForwardingView;
- (STUIStatusBarImageView)sosView;
- (STUIStatusBarImageView)warningView;
- (STUIStatusBarStringView)networkTypeView;
- (STUIStatusBarStringView)rawStringView;
- (STUIStatusBarStringView)serviceNameView;
- (id)_backgroundColorForUpdate:(id)update entry:(id)entry;
- (id)_fillColorForUpdate:(id)update entry:(id)entry;
- (id)_stringForCellularType:(int64_t)type;
- (id)applyUpdate:(id)update toDisplayItem:(id)item;
- (id)dependentEntryKeys;
- (id)entryForDisplayItemWithIdentifier:(id)identifier;
- (id)viewForIdentifier:(id)identifier;
- (void)_create_callForwardingView;
- (void)_create_networkTypeView;
- (void)_create_rawStringView;
- (void)_create_serviceNameView;
- (void)_create_signalView;
- (void)_create_sosView;
- (void)_create_warningView;
- (void)_updateServiceNameMarquee;
- (void)prepareAnimation:(id)animation forDisplayItem:(id)item;
- (void)setmarqueeServiceName:(BOOL)name;
@end

@implementation STUIStatusBarCellularItem

- (id)dependentEntryKeys
{
  v2 = MEMORY[0x277CBEB98];
  cellularDataEntryKey = [(STUIStatusBarCellularItem *)self cellularDataEntryKey];
  v4 = [v2 setWithObjects:{cellularDataEntryKey, 0}];

  return v4;
}

- (STUIStatusBarImageView)sosView
{
  sosView = self->_sosView;
  if (!sosView)
  {
    [(STUIStatusBarCellularItem *)self _create_sosView];
    sosView = self->_sosView;
  }

  return sosView;
}

- (void)_create_sosView
{
  v3 = [STUIStatusBarImageView alloc];
  self->_sosView = [(STUIStatusBarImageView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  MEMORY[0x2821F96F8]();
}

- (STUIStatusBarStringView)networkTypeView
{
  networkTypeView = self->_networkTypeView;
  if (!networkTypeView)
  {
    [(STUIStatusBarCellularItem *)self _create_networkTypeView];
    networkTypeView = self->_networkTypeView;
  }

  return networkTypeView;
}

- (void)_create_networkTypeView
{
  v3 = [STUIStatusBarStringView alloc];
  v4 = [(STUIStatusBarStringView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  networkTypeView = self->_networkTypeView;
  self->_networkTypeView = v4;

  v6 = self->_networkTypeView;

  [(STUIStatusBarStringView *)v6 setLineBreakMode:2];
}

- (STUIStatusBarCellularSignalView)signalView
{
  signalView = self->_signalView;
  if (!signalView)
  {
    [(STUIStatusBarCellularItem *)self _create_signalView];
    signalView = self->_signalView;
  }

  return signalView;
}

- (void)_create_signalView
{
  v3 = [STUIStatusBarCellularSignalView alloc];
  v4 = [(STUIStatusBarCellularSignalView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  signalView = self->_signalView;
  self->_signalView = v4;

  v6 = self->_signalView;

  [(STUIStatusBarSignalView *)v6 setNumberOfBars:4];
}

- (STUIStatusBarImageView)callForwardingView
{
  callForwardingView = self->_callForwardingView;
  if (!callForwardingView)
  {
    [(STUIStatusBarCellularItem *)self _create_callForwardingView];
    callForwardingView = self->_callForwardingView;
  }

  return callForwardingView;
}

- (void)_create_callForwardingView
{
  v3 = [STUIStatusBarImageView alloc];
  self->_callForwardingView = [(STUIStatusBarImageView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  MEMORY[0x2821F96F8]();
}

- (STUIStatusBarCellularItemTypeStringProvider)typeStringProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_typeStringProvider);

  return WeakRetained;
}

- (STUIStatusBarCellularItem)initWithIdentifier:(id)identifier statusBar:(id)bar
{
  v6.receiver = self;
  v6.super_class = STUIStatusBarCellularItem;
  v4 = [(STUIStatusBarItem *)&v6 initWithIdentifier:identifier statusBar:bar];
  [(STUIStatusBarCellularItem *)v4 setShowsDisabledSignalBars:1];
  [(STUIStatusBarCellularItem *)v4 setMarqueeServiceName:1];
  return v4;
}

- (id)_fillColorForUpdate:(id)update entry:(id)entry
{
  updateCopy = update;
  if ([entry lowDataModeActive])
  {
    systemYellowColor = [MEMORY[0x277D75348] systemYellowColor];
  }

  else
  {
    styleAttributes = [updateCopy styleAttributes];
    imageTintColor = [styleAttributes imageTintColor];
    systemYellowColor = [imageTintColor colorWithAlphaComponent:1.0];
  }

  return systemYellowColor;
}

- (id)_backgroundColorForUpdate:(id)update entry:(id)entry
{
  updateCopy = update;
  if ([entry lowDataModeActive])
  {
    systemYellowColor = [MEMORY[0x277D75348] systemYellowColor];
    [systemYellowColor colorWithAlphaComponent:0.3];
  }

  else
  {
    systemYellowColor = [updateCopy styleAttributes];
    [systemYellowColor imageDimmedTintColor];
  }
  v7 = ;

  return v7;
}

- (BOOL)_updateSignalView:(id)view withUpdate:(id)update entry:(id)entry forceShowingDisabledSignalBars:(BOOL)bars
{
  barsCopy = bars;
  viewCopy = view;
  updateCopy = update;
  entryCopy = entry;
  if (([updateCopy styleAttributesChanged] & 1) != 0 || objc_msgSend(updateCopy, "dataChanged"))
  {
    v13 = [(STUIStatusBarCellularItem *)self _backgroundColorForUpdate:updateCopy entry:entryCopy];
    [viewCopy setInactiveColor:v13];

    v14 = [(STUIStatusBarCellularItem *)self _fillColorForUpdate:updateCopy entry:entryCopy];
    [viewCopy setActiveColor:v14];
  }

  if (![updateCopy dataChanged])
  {
    goto LABEL_27;
  }

  if ([entryCopy isEnabled])
  {
    v15 = [entryCopy status] != 4;
  }

  else
  {
    v15 = 0;
  }

  signalMode = [viewCopy signalMode];
  status = [entryCopy status];
  if (status <= 1)
  {
    if (!status)
    {
      [entryCopy isBootstrapCellular];
      goto LABEL_27;
    }

    if (status == 1)
    {
      v15 &= self->_showsDisabledSignalBars || barsCopy;
      if (self->_showsDisabledSignalBars || barsCopy)
      {
        signalMode = 0;
      }
    }
  }

  else
  {
    switch(status)
    {
      case 2:
        signalMode = 0;
        break;
      case 3:
        signalMode = 1;
        break;
      case 5:
        signalMode = 2;
        break;
    }
  }

  if (![entryCopy isBootstrapCellular] || (v15 & 1) == 0)
  {
    if (v15)
    {
      goto LABEL_25;
    }

LABEL_27:
    v18 = 0;
    goto LABEL_28;
  }

  if ([entryCopy status] != 5)
  {
    goto LABEL_27;
  }

LABEL_25:
  [viewCopy setSignalMode:signalMode];
  [viewCopy setNumberOfActiveBars:{objc_msgSend(entryCopy, "displayValue")}];
  v18 = 1;
LABEL_28:

  return v18;
}

- (id)entryForDisplayItemWithIdentifier:(id)identifier
{
  statusBar = [(STUIStatusBarItem *)self statusBar];
  currentAggregatedData = [statusBar currentAggregatedData];
  cellularDataEntryKey = [(STUIStatusBarCellularItem *)self cellularDataEntryKey];
  v7 = [currentAggregatedData valueForKey:cellularDataEntryKey];

  return v7;
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  updateCopy = update;
  itemCopy = item;
  v60.receiver = self;
  v60.super_class = STUIStatusBarCellularItem;
  v8 = [(STUIStatusBarItem *)&v60 applyUpdate:updateCopy toDisplayItem:itemCopy];
  identifier = [itemCopy identifier];
  v10 = [(STUIStatusBarCellularItem *)self entryForDisplayItemWithIdentifier:identifier];

  identifier2 = [itemCopy identifier];
  signalStrengthDisplayIdentifier = [objc_opt_class() signalStrengthDisplayIdentifier];
  v13 = signalStrengthDisplayIdentifier;
  if (identifier2 == signalStrengthDisplayIdentifier)
  {

    goto LABEL_15;
  }

  identifier3 = [itemCopy identifier];
  externalSignalStrengthDisplayIdentifier = [objc_opt_class() externalSignalStrengthDisplayIdentifier];

  if (identifier3 == externalSignalStrengthDisplayIdentifier)
  {
LABEL_15:
    signalView = [(STUIStatusBarCellularItem *)self signalView];
    v36 = [(STUIStatusBarCellularItem *)self _updateSignalView:signalView withUpdate:updateCopy entry:v10 forceShowingDisabledSignalBars:0];

    if ([updateCopy dataChanged] && v10)
    {
      [itemCopy setEnabled:v36];
    }

    goto LABEL_36;
  }

  identifier4 = [itemCopy identifier];
  nameDisplayIdentifier = [objc_opt_class() nameDisplayIdentifier];

  if (identifier4 == nameDisplayIdentifier)
  {
    string = [v10 string];
    if ([itemCopy isEnabled] && objc_msgSend(string, "length"))
    {
      v38 = [v10 isBootstrapCellular] ^ 1;
    }

    else
    {
      v38 = 0;
    }

    [itemCopy setEnabled:v38];
    if (![itemCopy isEnabled])
    {
      goto LABEL_35;
    }

    serviceNameView = [(STUIStatusBarCellularItem *)self serviceNameView];
    [serviceNameView setText:string];
    crossfadeString = [v10 crossfadeString];
    [serviceNameView setAlternateText:crossfadeString];

    [serviceNameView setMarqueeRunning:1];
LABEL_34:

LABEL_35:
    goto LABEL_36;
  }

  identifier5 = [itemCopy identifier];
  typeDisplayIdentifier = [objc_opt_class() typeDisplayIdentifier];
  v20 = typeDisplayIdentifier;
  if (identifier5 == typeDisplayIdentifier)
  {

    goto LABEL_25;
  }

  identifier6 = [itemCopy identifier];
  externalTypeDisplayIdentifier = [objc_opt_class() externalTypeDisplayIdentifier];

  if (identifier6 == externalTypeDisplayIdentifier)
  {
LABEL_25:
    if (!v10)
    {
      goto LABEL_36;
    }

    if ([v10 isEnabled])
    {
      string = -[STUIStatusBarCellularItem _stringForCellularType:](self, "_stringForCellularType:", [v10 type]);
      isEnabled = [itemCopy isEnabled];
      v42 = 0;
      if (isEnabled && string)
      {
        v42 = [v10 isBootstrapCellular] ^ 1;
      }
    }

    else
    {
      [itemCopy isEnabled];
      string = 0;
      v42 = 0;
    }

    [itemCopy setEnabled:v42];
    if (![itemCopy isEnabled])
    {
      goto LABEL_35;
    }

    networkTypeView = [(STUIStatusBarCellularItem *)self networkTypeView];
    goto LABEL_33;
  }

  identifier7 = [itemCopy identifier];
  sosDisplayIdentifier = [objc_opt_class() sosDisplayIdentifier];

  if (identifier7 != sosDisplayIdentifier)
  {
    identifier8 = [itemCopy identifier];
    warningDisplayIdentifier = [objc_opt_class() warningDisplayIdentifier];
    v27 = warningDisplayIdentifier;
    if (identifier8 == warningDisplayIdentifier)
    {
    }

    else
    {
      identifier9 = [itemCopy identifier];
      externalWarningDisplayIdentifier = [objc_opt_class() externalWarningDisplayIdentifier];

      if (identifier9 != externalWarningDisplayIdentifier)
      {
        identifier10 = [itemCopy identifier];
        callForwardingDisplayIdentifier = [objc_opt_class() callForwardingDisplayIdentifier];

        if (identifier10 != callForwardingDisplayIdentifier)
        {
          identifier11 = [itemCopy identifier];
          rawDisplayIdentifier = [objc_opt_class() rawDisplayIdentifier];

          if (identifier11 != rawDisplayIdentifier || !v10)
          {
            goto LABEL_36;
          }

          v34 = [itemCopy isEnabled] ? objc_msgSend(v10, "displayRawValue") : 0;
          [itemCopy setEnabled:v34];
          if (![itemCopy isEnabled])
          {
            goto LABEL_36;
          }

          string = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(v10, "rawValue")];
          networkTypeView = [(STUIStatusBarCellularItem *)self rawStringView];
LABEL_33:
          serviceNameView = networkTypeView;
          [networkTypeView setText:string];
          goto LABEL_34;
        }

        if (!v10)
        {
          goto LABEL_36;
        }

        v57 = [itemCopy isEnabled] && -[STUIStatusBarCellularItem _showCallFowardingForEntry:](self, "_showCallFowardingForEntry:", v10);
        [itemCopy setEnabled:v57];
        if (![itemCopy isEnabled])
        {
          goto LABEL_36;
        }

        callForwardingView = [(STUIStatusBarCellularItem *)self callForwardingView];
        image = [callForwardingView image];

        if (image)
        {
          goto LABEL_36;
        }

        string = [MEMORY[0x277D755B8] systemImageNamed:@"phone.fill.arrow.right"];
        callForwardingView2 = [(STUIStatusBarCellularItem *)self callForwardingView];
LABEL_58:
        serviceNameView = callForwardingView2;
        [callForwardingView2 setImage:string];
        goto LABEL_34;
      }
    }

    if (!v10)
    {
      goto LABEL_36;
    }

    v46 = [itemCopy isEnabled] && (objc_msgSend(v10, "status") == 4);
    [itemCopy setEnabled:v46];
    if (![itemCopy isEnabled])
    {
      goto LABEL_36;
    }

    warningView = [(STUIStatusBarCellularItem *)self warningView];
    image2 = [warningView image];

    if (image2)
    {
      goto LABEL_36;
    }

    string = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle.fill"];
    callForwardingView2 = [(STUIStatusBarCellularItem *)self warningView];
    goto LABEL_58;
  }

  if (v10)
  {
    v45 = [itemCopy isEnabled] && objc_msgSend(v10, "showsSOSWhenDisabled") && (objc_msgSend(v10, "status") == 1);
    [itemCopy setEnabled:v45];
    if ([itemCopy isEnabled])
    {
      sosView = [(STUIStatusBarCellularItem *)self sosView];
      image3 = [sosView image];

      if (!image3)
      {
        v49 = [MEMORY[0x277D755B8] systemImageNamed:@"sos"];
        sosView2 = [(STUIStatusBarCellularItem *)self sosView];
        [sosView2 setImage:v49];
      }

      sosAvailable = [v10 sosAvailable];
      v52 = 0.3;
      if (sosAvailable)
      {
        v52 = 1.0;
      }

      [itemCopy setViewAlpha:v52];
      sosView3 = [(STUIStatusBarCellularItem *)self sosView];
      [sosView3 setUseDisabledAppearanceForAccessibilityHUD:sosAvailable ^ 1u];
    }
  }

LABEL_36:

  return v8;
}

- (id)_stringForCellularType:(int64_t)type
{
  WeakRetained = objc_loadWeakRetained(&self->_typeStringProvider);

  if (!WeakRetained || (v6 = objc_loadWeakRetained(&self->_typeStringProvider), [v6 stringForCellularType:type condensed:0], v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = v8;
    switch(type)
    {
      case 1:
        v10 = @"1x[statusBarDataNetwork]";
        v11 = @"1x";
        goto LABEL_21;
      case 2:
        v10 = @"GPRS";
        goto LABEL_20;
      case 3:
        v10 = @"EDGE";
        goto LABEL_20;
      case 4:
        v10 = @"3G";
        goto LABEL_20;
      case 5:
        v10 = @"4G";
        goto LABEL_20;
      case 6:
        v10 = @"LTE";
        goto LABEL_20;
      case 7:
        v10 = @"5GE";
        v11 = @"5G   ";
        goto LABEL_21;
      case 8:
        v10 = @"LTE-A";
        goto LABEL_20;
      case 9:
        v10 = @"LTE+";
        goto LABEL_20;
      case 10:
        v10 = @"5G";
        goto LABEL_20;
      case 11:
        v10 = @"5G+";
        goto LABEL_20;
      case 12:
        v10 = @"5GUW";
        v11 = @"5G";
        goto LABEL_21;
      case 13:
        v10 = @"5GUC";
        v11 = @"5G";
        goto LABEL_21;
      case 14:
        v10 = @"SAT";
LABEL_20:
        v11 = &stru_287D04F38;
        goto LABEL_21;
      case 15:
        v10 = @"5GA";
        v11 = @"5Gᴀ";
LABEL_21:
        v7 = [v8 localizedStringForKey:v10 value:v11 table:0];
        break;
      default:
        v7 = 0;
        break;
    }
  }

  return v7;
}

- (void)prepareAnimation:(id)animation forDisplayItem:(id)item
{
  animationCopy = animation;
  itemCopy = item;
  if ([animationCopy type] == 1)
  {
    identifier = [itemCopy identifier];
    nameDisplayIdentifier = [objc_opt_class() nameDisplayIdentifier];

    if (identifier == nameDisplayIdentifier)
    {
      serviceNameView = [(STUIStatusBarCellularItem *)self serviceNameView];
      [serviceNameView setMarqueeRunning:0];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __61__STUIStatusBarCellularItem_prepareAnimation_forDisplayItem___block_invoke;
      v12[3] = &unk_279D37E28;
      v13 = serviceNameView;
      v11 = serviceNameView;
      [animationCopy addCompletionHandler:v12];
    }
  }
}

uint64_t __61__STUIStatusBarCellularItem_prepareAnimation_forDisplayItem___block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return [*(result + 32) setMarqueeRunning:1];
  }

  return result;
}

- (STUIStatusBarStringView)serviceNameView
{
  serviceNameView = self->_serviceNameView;
  if (!serviceNameView)
  {
    [(STUIStatusBarCellularItem *)self _create_serviceNameView];
    serviceNameView = self->_serviceNameView;
  }

  return serviceNameView;
}

- (void)_create_serviceNameView
{
  v3 = [STUIStatusBarStringView alloc];
  v4 = [(STUIStatusBarStringView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  serviceNameView = self->_serviceNameView;
  self->_serviceNameView = v4;

  [(STUIStatusBarStringView *)self->_serviceNameView setNumberOfLines:1];
  [(STUIStatusBarStringView *)self->_serviceNameView setFontStyle:0];
  if (self->_marqueeServiceName)
  {
    if ([(STUIStatusBarCellularItem *)self shouldShrinkCarrierNameBeforeMarquee])
    {
      [(STUIStatusBarStringView *)self->_serviceNameView _setMarqueeMinimumScaleFactor:0.95];
      [(STUIStatusBarStringView *)self->_serviceNameView setAdjustsFontSizeToFitWidth:1];
    }

    [(STUIStatusBarStringView *)self->_serviceNameView setMarqueeEnabled:1];
  }

  else
  {
    [(STUIStatusBarStringView *)self->_serviceNameView setLineBreakMode:4];
  }

  v7 = self->_serviceNameView;
  LODWORD(v6) = 1132068864;

  [(STUIStatusBarStringView *)v7 setContentCompressionResistancePriority:0 forAxis:v6];
}

- (STUIStatusBarImageView)warningView
{
  warningView = self->_warningView;
  if (!warningView)
  {
    [(STUIStatusBarCellularItem *)self _create_warningView];
    warningView = self->_warningView;
  }

  return warningView;
}

- (void)_create_warningView
{
  v3 = [STUIStatusBarImageView alloc];
  self->_warningView = [(STUIStatusBarImageView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  MEMORY[0x2821F96F8]();
}

- (STUIStatusBarStringView)rawStringView
{
  rawStringView = self->_rawStringView;
  if (!rawStringView)
  {
    [(STUIStatusBarCellularItem *)self _create_rawStringView];
    rawStringView = self->_rawStringView;
  }

  return rawStringView;
}

- (void)_create_rawStringView
{
  v3 = [STUIStatusBarStringView alloc];
  self->_rawStringView = [(STUIStatusBarStringView *)v3 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  MEMORY[0x2821F96F8]();
}

- (void)_updateServiceNameMarquee
{
  if (self->_serviceNameView)
  {
    marqueeServiceName = self->_marqueeServiceName;
    shouldShrinkCarrierNameBeforeMarquee = [(STUIStatusBarCellularItem *)self shouldShrinkCarrierNameBeforeMarquee];
    if (marqueeServiceName)
    {
      if (shouldShrinkCarrierNameBeforeMarquee)
      {
        [(STUIStatusBarStringView *)self->_serviceNameView _setMarqueeMinimumScaleFactor:0.95];
        [(STUIStatusBarStringView *)self->_serviceNameView setAdjustsFontSizeToFitWidth:1];
      }

      serviceNameView = self->_serviceNameView;

      [(STUIStatusBarStringView *)serviceNameView setMarqueeEnabled:1];
    }

    else
    {
      if (shouldShrinkCarrierNameBeforeMarquee)
      {
        [(STUIStatusBarStringView *)self->_serviceNameView _setMarqueeMinimumScaleFactor:0.0];
        [(STUIStatusBarStringView *)self->_serviceNameView setAdjustsFontSizeToFitWidth:0];
      }

      [(STUIStatusBarStringView *)self->_serviceNameView setMarqueeEnabled:0];
      v6 = self->_serviceNameView;

      [(STUIStatusBarStringView *)v6 setLineBreakMode:4];
    }
  }
}

- (void)setmarqueeServiceName:(BOOL)name
{
  if (self->_marqueeServiceName != name)
  {
    self->_marqueeServiceName = name;
    [(STUIStatusBarCellularItem *)self _updateServiceNameMarquee];
  }
}

- (id)viewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  signalStrengthDisplayIdentifier = [objc_opt_class() signalStrengthDisplayIdentifier];

  if (signalStrengthDisplayIdentifier == identifierCopy)
  {
    signalView = [(STUIStatusBarCellularItem *)self signalView];
  }

  else
  {
    nameDisplayIdentifier = [objc_opt_class() nameDisplayIdentifier];

    if (nameDisplayIdentifier == identifierCopy)
    {
      signalView = [(STUIStatusBarCellularItem *)self serviceNameView];
    }

    else
    {
      typeDisplayIdentifier = [objc_opt_class() typeDisplayIdentifier];

      if (typeDisplayIdentifier == identifierCopy)
      {
        signalView = [(STUIStatusBarCellularItem *)self networkTypeView];
      }

      else
      {
        sosDisplayIdentifier = [objc_opt_class() sosDisplayIdentifier];

        if (sosDisplayIdentifier == identifierCopy)
        {
          signalView = [(STUIStatusBarCellularItem *)self sosView];
        }

        else
        {
          warningDisplayIdentifier = [objc_opt_class() warningDisplayIdentifier];

          if (warningDisplayIdentifier == identifierCopy)
          {
            signalView = [(STUIStatusBarCellularItem *)self warningView];
          }

          else
          {
            callForwardingDisplayIdentifier = [objc_opt_class() callForwardingDisplayIdentifier];

            if (callForwardingDisplayIdentifier == identifierCopy)
            {
              signalView = [(STUIStatusBarCellularItem *)self callForwardingView];
            }

            else
            {
              rawDisplayIdentifier = [objc_opt_class() rawDisplayIdentifier];

              if (rawDisplayIdentifier == identifierCopy)
              {
                signalView = [(STUIStatusBarCellularItem *)self rawStringView];
              }

              else
              {
                v15.receiver = self;
                v15.super_class = STUIStatusBarCellularItem;
                signalView = [(STUIStatusBarItem *)&v15 viewForIdentifier:identifierCopy];
              }
            }
          }
        }
      }
    }
  }

  v13 = signalView;

  return v13;
}

+ (id)groupWithHighPriority:(int64_t)priority lowPriority:(int64_t)lowPriority typeClass:(Class)class allowDualNetwork:(BOOL)network
{
  v35[1] = *MEMORY[0x277D85DE8];
  v7 = priority - lowPriority;
  signalStrengthDisplayIdentifier = [self signalStrengthDisplayIdentifier];
  v9 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:signalStrengthDisplayIdentifier priority:v7 + 6];

  warningDisplayIdentifier = [self warningDisplayIdentifier];
  v11 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:warningDisplayIdentifier priority:v7 + 8];

  sosDisplayIdentifier = [self sosDisplayIdentifier];
  v30 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:sosDisplayIdentifier priority:v7 + 1];

  nameDisplayIdentifier = [self nameDisplayIdentifier];
  v14 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:nameDisplayIdentifier priority:v7 + 2];
  v35[0] = v30;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  v16 = [v14 excludingPlacements:v15];

  typeDisplayIdentifier = [(objc_class *)class typeDisplayIdentifier];
  v18 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:typeDisplayIdentifier priority:v7 + 4];
  v34 = v9;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  v20 = [v18 requiringAnyPlacements:v19];

  callForwardingDisplayIdentifier = [self callForwardingDisplayIdentifier];
  v22 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:callForwardingDisplayIdentifier priority:2];

  rawDisplayIdentifier = [self rawDisplayIdentifier];
  v24 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:rawDisplayIdentifier priority:1];

  v33[0] = v9;
  v33[1] = v11;
  v33[2] = v24;
  v33[3] = v16;
  v33[4] = v20;
  v33[5] = v22;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:6];
  v26 = [(STUIStatusBarDisplayItemPlacementGroup *)STUIStatusBarDisplayItemPlacementCellularGroup groupWithPriority:lowPriority placements:v25];

  [v26 setSignalStrengthPlacement:v9];
  [v26 setWarningPlacement:v11];
  [v26 setNamePlacement:v16];
  [v26 setTypePlacement:v20];
  [v26 setCallForwardingPlacement:v22];
  [v26 setRawPlacement:v24];
  v32[0] = v9;
  v32[1] = v11;
  v32[2] = v24;
  v32[3] = v20;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:4];
  [v26 setPlacementsAffectedByAirplaneMode:v27];

  [v26 setSosPlacement:v30];

  return v26;
}

@end