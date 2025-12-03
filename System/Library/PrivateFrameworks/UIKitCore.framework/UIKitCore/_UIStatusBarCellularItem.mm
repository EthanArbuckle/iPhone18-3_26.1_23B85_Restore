@interface _UIStatusBarCellularItem
+ (id)groupWithHighPriority:(int64_t)priority lowPriority:(int64_t)lowPriority typeClass:(Class)class allowDualNetwork:(BOOL)network;
- (BOOL)_updateSignalView:(id)view withUpdate:(id)update entry:(id)entry forceShowingDisabledSignalBars:(BOOL)bars;
- (_UIStatusBarCellularItem)initWithIdentifier:(id)identifier statusBar:(id)bar;
- (_UIStatusBarCellularItemTypeStringProvider)typeStringProvider;
- (_UIStatusBarCellularSignalView)signalView;
- (_UIStatusBarImageView)callForwardingView;
- (_UIStatusBarImageView)warningView;
- (_UIStatusBarStringView)networkTypeView;
- (_UIStatusBarStringView)rawStringView;
- (_UIStatusBarStringView)serviceNameView;
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
- (void)_create_warningView;
- (void)prepareAnimation:(id)animation forDisplayItem:(id)item;
- (void)setmarqueeServiceName:(BOOL)name;
@end

@implementation _UIStatusBarCellularItem

- (_UIStatusBarCellularItem)initWithIdentifier:(id)identifier statusBar:(id)bar
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarCellularItem;
  v4 = [(_UIStatusBarItem *)&v6 initWithIdentifier:identifier statusBar:bar];
  [(_UIStatusBarCellularItem *)v4 setShowsDisabledSignalBars:1];
  [(_UIStatusBarCellularItem *)v4 setMarqueeServiceName:1];
  return v4;
}

- (id)dependentEntryKeys
{
  v2 = MEMORY[0x1E695DFD8];
  cellularDataEntryKey = [(_UIStatusBarCellularItem *)self cellularDataEntryKey];
  v4 = [v2 setWithObjects:{cellularDataEntryKey, 0}];

  return v4;
}

- (id)_fillColorForUpdate:(id)update entry:(id)entry
{
  updateCopy = update;
  if ([entry lowDataModeActive])
  {
    v6 = +[UIColor systemYellowColor];
  }

  else
  {
    styleAttributes = [updateCopy styleAttributes];
    imageTintColor = [styleAttributes imageTintColor];
    v6 = [imageTintColor colorWithAlphaComponent:1.0];
  }

  return v6;
}

- (id)_backgroundColorForUpdate:(id)update entry:(id)entry
{
  updateCopy = update;
  if ([entry lowDataModeActive])
  {
    styleAttributes = +[UIColor systemYellowColor];
    [styleAttributes colorWithAlphaComponent:0.3];
  }

  else
  {
    styleAttributes = [updateCopy styleAttributes];
    [styleAttributes imageDimmedTintColor];
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
    v13 = [(_UIStatusBarCellularItem *)self _backgroundColorForUpdate:updateCopy entry:entryCopy];
    [viewCopy setInactiveColor:v13];

    v14 = [(_UIStatusBarCellularItem *)self _fillColorForUpdate:updateCopy entry:entryCopy];
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
  statusBar = [(_UIStatusBarItem *)self statusBar];
  currentAggregatedData = [statusBar currentAggregatedData];
  cellularDataEntryKey = [(_UIStatusBarCellularItem *)self cellularDataEntryKey];
  v7 = [currentAggregatedData valueForKey:cellularDataEntryKey];

  return v7;
}

- (id)applyUpdate:(id)update toDisplayItem:(id)item
{
  updateCopy = update;
  itemCopy = item;
  v41.receiver = self;
  v41.super_class = _UIStatusBarCellularItem;
  v8 = [(_UIStatusBarItem *)&v41 applyUpdate:updateCopy toDisplayItem:itemCopy];
  identifier = [itemCopy identifier];
  v10 = [(_UIStatusBarCellularItem *)self entryForDisplayItemWithIdentifier:identifier];

  identifier2 = [itemCopy identifier];
  signalStrengthDisplayIdentifier = [objc_opt_class() signalStrengthDisplayIdentifier];

  if (identifier2 != signalStrengthDisplayIdentifier)
  {
    identifier3 = [itemCopy identifier];
    nameDisplayIdentifier = [objc_opt_class() nameDisplayIdentifier];

    if (identifier3 == nameDisplayIdentifier)
    {
      string = [v10 string];
      if ([itemCopy isEnabled] && objc_msgSend(string, "length"))
      {
        v27 = [v10 isBootstrapCellular] ^ 1;
      }

      else
      {
        v27 = 0;
      }

      [itemCopy setEnabled:v27];
      if (![itemCopy isEnabled])
      {
        goto LABEL_47;
      }

      serviceNameView = [(_UIStatusBarCellularItem *)self serviceNameView];
      [serviceNameView setText:string];
      crossfadeString = [v10 crossfadeString];
      [serviceNameView setAlternateText:crossfadeString];

      [serviceNameView setMarqueeRunning:1];
LABEL_46:

LABEL_47:
      goto LABEL_48;
    }

    identifier4 = [itemCopy identifier];
    typeDisplayIdentifier = [objc_opt_class() typeDisplayIdentifier];

    if (identifier4 != typeDisplayIdentifier)
    {
      identifier5 = [itemCopy identifier];
      warningDisplayIdentifier = [objc_opt_class() warningDisplayIdentifier];

      if (identifier5 == warningDisplayIdentifier)
      {
        if (!v10)
        {
          goto LABEL_48;
        }

        v32 = [itemCopy isEnabled] && (objc_msgSend(v10, "status") == 4);
        [itemCopy setEnabled:v32];
        if (![itemCopy isEnabled])
        {
          goto LABEL_48;
        }

        warningView = [(_UIStatusBarCellularItem *)self warningView];
        image = [warningView image];

        if (image)
        {
          goto LABEL_48;
        }

        string = [UIImage systemImageNamed:@"exclamationmark.triangle.fill"];
        warningView2 = [(_UIStatusBarCellularItem *)self warningView];
      }

      else
      {
        identifier6 = [itemCopy identifier];
        callForwardingDisplayIdentifier = [objc_opt_class() callForwardingDisplayIdentifier];

        if (identifier6 != callForwardingDisplayIdentifier)
        {
          identifier7 = [itemCopy identifier];
          rawDisplayIdentifier = [objc_opt_class() rawDisplayIdentifier];

          if (identifier7 != rawDisplayIdentifier || !v10)
          {
            goto LABEL_48;
          }

          v23 = [itemCopy isEnabled] ? objc_msgSend(v10, "displayRawValue") : 0;
          [itemCopy setEnabled:v23];
          if (![itemCopy isEnabled])
          {
            goto LABEL_48;
          }

          string = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(v10, "rawValue")];
          rawStringView = [(_UIStatusBarCellularItem *)self rawStringView];
LABEL_40:
          serviceNameView = rawStringView;
          [rawStringView setText:string];
          goto LABEL_46;
        }

        if (!v10)
        {
          goto LABEL_48;
        }

        v33 = [itemCopy isEnabled] && -[_UIStatusBarCellularItem _showCallFowardingForEntry:](self, "_showCallFowardingForEntry:", v10);
        [itemCopy setEnabled:v33];
        if (![itemCopy isEnabled])
        {
          goto LABEL_48;
        }

        callForwardingView = [(_UIStatusBarCellularItem *)self callForwardingView];
        image2 = [callForwardingView image];

        if (image2)
        {
          goto LABEL_48;
        }

        string = [UIImage systemImageNamed:@"phone.fill.arrow.right"];
        warningView2 = [(_UIStatusBarCellularItem *)self callForwardingView];
      }

      serviceNameView = warningView2;
      [warningView2 setImage:string];
      goto LABEL_46;
    }

    if (!v10)
    {
      goto LABEL_48;
    }

    if ([v10 isEnabled])
    {
      string = -[_UIStatusBarCellularItem _stringForCellularType:](self, "_stringForCellularType:", [v10 type]);
      isEnabled = [itemCopy isEnabled];
      v31 = 0;
      if (isEnabled && string)
      {
        v31 = [v10 isBootstrapCellular] ^ 1;
      }
    }

    else
    {
      [itemCopy isEnabled];
      string = 0;
      v31 = 0;
    }

    [itemCopy setEnabled:v31];
    if (![itemCopy isEnabled])
    {
      goto LABEL_47;
    }

    rawStringView = [(_UIStatusBarCellularItem *)self networkTypeView];
    goto LABEL_40;
  }

  signalView = [(_UIStatusBarCellularItem *)self signalView];
  v25 = [(_UIStatusBarCellularItem *)self _updateSignalView:signalView withUpdate:updateCopy entry:v10 forceShowingDisabledSignalBars:0];

  if ([updateCopy dataChanged] && v10)
  {
    [itemCopy setEnabled:v25];
  }

LABEL_48:

  return v8;
}

- (id)_stringForCellularType:(int64_t)type
{
  WeakRetained = objc_loadWeakRetained(&self->_typeStringProvider);

  if (!WeakRetained || (v6 = objc_loadWeakRetained(&self->_typeStringProvider), [v6 stringForCellularType:type condensed:0], v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    switch(type)
    {
      case 1:
        v8 = @"1x[statusBarDataNetwork]";
        v9 = @"1x";
        goto LABEL_19;
      case 2:
        v8 = @"GPRS";
        goto LABEL_18;
      case 3:
        v8 = @"EDGE";
        goto LABEL_18;
      case 4:
        v8 = @"3G";
        goto LABEL_18;
      case 5:
        v8 = @"4G";
        goto LABEL_18;
      case 6:
        v8 = @"LTE";
        goto LABEL_18;
      case 7:
        v8 = @"5GE";
        v9 = @"5G   ";
        goto LABEL_19;
      case 8:
        v8 = @"LTE-A";
        goto LABEL_18;
      case 9:
        v8 = @"LTE+";
        goto LABEL_18;
      case 10:
        v8 = @"5G";
        goto LABEL_18;
      case 11:
        v8 = @"5G+";
LABEL_18:
        v9 = v8;
        goto LABEL_19;
      case 12:
        v8 = @"5GUW";
        v9 = @"5G";
        goto LABEL_19;
      case 13:
        v8 = @"5GUC";
        v9 = @"5G";
LABEL_19:
        v7 = _UINSLocalizedStringWithDefaultValue(v8, v9);
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
      serviceNameView = [(_UIStatusBarCellularItem *)self serviceNameView];
      [serviceNameView setMarqueeRunning:0];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __60___UIStatusBarCellularItem_prepareAnimation_forDisplayItem___block_invoke;
      v12[3] = &unk_1E70F5DB8;
      v13 = serviceNameView;
      v11 = serviceNameView;
      [animationCopy addCompletionHandler:v12];
    }
  }
}

- (_UIStatusBarCellularSignalView)signalView
{
  signalView = self->_signalView;
  if (!signalView)
  {
    [(_UIStatusBarCellularItem *)self _create_signalView];
    signalView = self->_signalView;
  }

  return signalView;
}

- (void)_create_signalView
{
  v3 = [_UIStatusBarCellularSignalView alloc];
  v4 = [(UIView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  signalView = self->_signalView;
  self->_signalView = v4;

  v6 = self->_signalView;

  [(_UIStatusBarSignalView *)v6 setNumberOfBars:4];
}

- (_UIStatusBarStringView)serviceNameView
{
  serviceNameView = self->_serviceNameView;
  if (!serviceNameView)
  {
    [(_UIStatusBarCellularItem *)self _create_serviceNameView];
    serviceNameView = self->_serviceNameView;
  }

  return serviceNameView;
}

- (void)_create_serviceNameView
{
  v3 = [_UIStatusBarStringView alloc];
  v4 = [(_UIStatusBarStringView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  serviceNameView = self->_serviceNameView;
  self->_serviceNameView = v4;

  [(UILabel *)self->_serviceNameView setNumberOfLines:1];
  [(_UIStatusBarStringView *)self->_serviceNameView setFontStyle:0];
  v6 = self->_serviceNameView;
  if (self->_marqueeServiceName)
  {
    [(UILabel *)v6 setMarqueeEnabled:1];
  }

  else
  {
    [(UILabel *)v6 setLineBreakMode:4];
  }

  v8 = self->_serviceNameView;
  LODWORD(v7) = 1132068864;

  [(UIView *)v8 setContentCompressionResistancePriority:0 forAxis:v7];
}

- (_UIStatusBarStringView)networkTypeView
{
  networkTypeView = self->_networkTypeView;
  if (!networkTypeView)
  {
    [(_UIStatusBarCellularItem *)self _create_networkTypeView];
    networkTypeView = self->_networkTypeView;
  }

  return networkTypeView;
}

- (void)_create_networkTypeView
{
  v3 = [_UIStatusBarStringView alloc];
  v4 = [(_UIStatusBarStringView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  networkTypeView = self->_networkTypeView;
  self->_networkTypeView = v4;

  v6 = self->_networkTypeView;

  [(UILabel *)v6 setLineBreakMode:2];
}

- (_UIStatusBarImageView)warningView
{
  warningView = self->_warningView;
  if (!warningView)
  {
    [(_UIStatusBarCellularItem *)self _create_warningView];
    warningView = self->_warningView;
  }

  return warningView;
}

- (void)_create_warningView
{
  v3 = [_UIStatusBarImageView alloc];
  v4 = [(_UIStatusBarImageView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  warningView = self->_warningView;
  self->_warningView = v4;
}

- (_UIStatusBarImageView)callForwardingView
{
  callForwardingView = self->_callForwardingView;
  if (!callForwardingView)
  {
    [(_UIStatusBarCellularItem *)self _create_callForwardingView];
    callForwardingView = self->_callForwardingView;
  }

  return callForwardingView;
}

- (void)_create_callForwardingView
{
  v3 = [_UIStatusBarImageView alloc];
  v4 = [(_UIStatusBarImageView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  callForwardingView = self->_callForwardingView;
  self->_callForwardingView = v4;
}

- (_UIStatusBarStringView)rawStringView
{
  rawStringView = self->_rawStringView;
  if (!rawStringView)
  {
    [(_UIStatusBarCellularItem *)self _create_rawStringView];
    rawStringView = self->_rawStringView;
  }

  return rawStringView;
}

- (void)_create_rawStringView
{
  v3 = [_UIStatusBarStringView alloc];
  v4 = [(_UIStatusBarStringView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  rawStringView = self->_rawStringView;
  self->_rawStringView = v4;
}

- (void)setmarqueeServiceName:(BOOL)name
{
  if (self->_marqueeServiceName != name)
  {
    self->_marqueeServiceName = name;
    serviceNameView = self->_serviceNameView;
    if (serviceNameView)
    {
      if (name)
      {

        [(UILabel *)serviceNameView setMarqueeEnabled:1];
      }

      else
      {
        [(UILabel *)serviceNameView setMarqueeEnabled:?];
        v5 = self->_serviceNameView;

        [(UILabel *)v5 setLineBreakMode:4];
      }
    }
  }
}

- (id)viewForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  signalStrengthDisplayIdentifier = [objc_opt_class() signalStrengthDisplayIdentifier];

  if (signalStrengthDisplayIdentifier == identifierCopy)
  {
    signalView = [(_UIStatusBarCellularItem *)self signalView];
  }

  else
  {
    nameDisplayIdentifier = [objc_opt_class() nameDisplayIdentifier];

    if (nameDisplayIdentifier == identifierCopy)
    {
      signalView = [(_UIStatusBarCellularItem *)self serviceNameView];
    }

    else
    {
      typeDisplayIdentifier = [objc_opt_class() typeDisplayIdentifier];

      if (typeDisplayIdentifier == identifierCopy)
      {
        signalView = [(_UIStatusBarCellularItem *)self networkTypeView];
      }

      else
      {
        warningDisplayIdentifier = [objc_opt_class() warningDisplayIdentifier];

        if (warningDisplayIdentifier == identifierCopy)
        {
          signalView = [(_UIStatusBarCellularItem *)self warningView];
        }

        else
        {
          callForwardingDisplayIdentifier = [objc_opt_class() callForwardingDisplayIdentifier];

          if (callForwardingDisplayIdentifier == identifierCopy)
          {
            signalView = [(_UIStatusBarCellularItem *)self callForwardingView];
          }

          else
          {
            rawDisplayIdentifier = [objc_opt_class() rawDisplayIdentifier];

            if (rawDisplayIdentifier == identifierCopy)
            {
              signalView = [(_UIStatusBarCellularItem *)self rawStringView];
            }

            else
            {
              v14.receiver = self;
              v14.super_class = _UIStatusBarCellularItem;
              signalView = [(_UIStatusBarItem *)&v14 viewForIdentifier:identifierCopy];
            }
          }
        }
      }
    }
  }

  v12 = signalView;

  return v12;
}

- (_UIStatusBarCellularItemTypeStringProvider)typeStringProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_typeStringProvider);

  return WeakRetained;
}

+ (id)groupWithHighPriority:(int64_t)priority lowPriority:(int64_t)lowPriority typeClass:(Class)class allowDualNetwork:(BOOL)network
{
  v32[1] = *MEMORY[0x1E69E9840];
  v8 = priority - lowPriority;
  if (priority <= lowPriority)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIStatusBarDisplayItemPlacementCellularGroup.m" lineNumber:35 description:@"The lowPriority should be smaller than the highPriority"];
  }

  signalStrengthDisplayIdentifier = [self signalStrengthDisplayIdentifier];
  v10 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:signalStrengthDisplayIdentifier priority:v8 + 6];

  warningDisplayIdentifier = [self warningDisplayIdentifier];
  v12 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:warningDisplayIdentifier priority:v8 + 8];

  nameDisplayIdentifier = [self nameDisplayIdentifier];
  v14 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:nameDisplayIdentifier priority:v8 + 2];

  typeDisplayIdentifier = [(objc_class *)class typeDisplayIdentifier];
  v16 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:typeDisplayIdentifier priority:v8 + 4];
  v32[0] = v10;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  v18 = [v16 requiringAnyPlacements:v17];

  callForwardingDisplayIdentifier = [self callForwardingDisplayIdentifier];
  v20 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:callForwardingDisplayIdentifier priority:2];

  rawDisplayIdentifier = [self rawDisplayIdentifier];
  v22 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:rawDisplayIdentifier priority:1];

  v31[0] = v10;
  v31[1] = v12;
  v31[2] = v22;
  v31[3] = v14;
  v31[4] = v18;
  v31[5] = v20;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:6];
  v24 = [(_UIStatusBarDisplayItemPlacementGroup *)_UIStatusBarDisplayItemPlacementCellularGroup groupWithPriority:lowPriority placements:v23];

  [v24 setSignalStrengthPlacement:v10];
  [v24 setWarningPlacement:v12];
  [v24 setNamePlacement:v14];
  [v24 setTypePlacement:v18];
  [v24 setCallForwardingPlacement:v20];
  [v24 setRawPlacement:v22];
  v30[0] = v10;
  v30[1] = v12;
  v30[2] = v22;
  v30[3] = v18;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
  [v24 setPlacementsAffectedByAirplaneMode:v25];

  return v24;
}

@end