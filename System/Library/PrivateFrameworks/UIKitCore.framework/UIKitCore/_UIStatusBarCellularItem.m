@interface _UIStatusBarCellularItem
+ (id)groupWithHighPriority:(int64_t)a3 lowPriority:(int64_t)a4 typeClass:(Class)a5 allowDualNetwork:(BOOL)a6;
- (BOOL)_updateSignalView:(id)a3 withUpdate:(id)a4 entry:(id)a5 forceShowingDisabledSignalBars:(BOOL)a6;
- (_UIStatusBarCellularItem)initWithIdentifier:(id)a3 statusBar:(id)a4;
- (_UIStatusBarCellularItemTypeStringProvider)typeStringProvider;
- (_UIStatusBarCellularSignalView)signalView;
- (_UIStatusBarImageView)callForwardingView;
- (_UIStatusBarImageView)warningView;
- (_UIStatusBarStringView)networkTypeView;
- (_UIStatusBarStringView)rawStringView;
- (_UIStatusBarStringView)serviceNameView;
- (id)_backgroundColorForUpdate:(id)a3 entry:(id)a4;
- (id)_fillColorForUpdate:(id)a3 entry:(id)a4;
- (id)_stringForCellularType:(int64_t)a3;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (id)dependentEntryKeys;
- (id)entryForDisplayItemWithIdentifier:(id)a3;
- (id)viewForIdentifier:(id)a3;
- (void)_create_callForwardingView;
- (void)_create_networkTypeView;
- (void)_create_rawStringView;
- (void)_create_serviceNameView;
- (void)_create_signalView;
- (void)_create_warningView;
- (void)prepareAnimation:(id)a3 forDisplayItem:(id)a4;
- (void)setmarqueeServiceName:(BOOL)a3;
@end

@implementation _UIStatusBarCellularItem

- (_UIStatusBarCellularItem)initWithIdentifier:(id)a3 statusBar:(id)a4
{
  v6.receiver = self;
  v6.super_class = _UIStatusBarCellularItem;
  v4 = [(_UIStatusBarItem *)&v6 initWithIdentifier:a3 statusBar:a4];
  [(_UIStatusBarCellularItem *)v4 setShowsDisabledSignalBars:1];
  [(_UIStatusBarCellularItem *)v4 setMarqueeServiceName:1];
  return v4;
}

- (id)dependentEntryKeys
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(_UIStatusBarCellularItem *)self cellularDataEntryKey];
  v4 = [v2 setWithObjects:{v3, 0}];

  return v4;
}

- (id)_fillColorForUpdate:(id)a3 entry:(id)a4
{
  v5 = a3;
  if ([a4 lowDataModeActive])
  {
    v6 = +[UIColor systemYellowColor];
  }

  else
  {
    v7 = [v5 styleAttributes];
    v8 = [v7 imageTintColor];
    v6 = [v8 colorWithAlphaComponent:1.0];
  }

  return v6;
}

- (id)_backgroundColorForUpdate:(id)a3 entry:(id)a4
{
  v5 = a3;
  if ([a4 lowDataModeActive])
  {
    v6 = +[UIColor systemYellowColor];
    [v6 colorWithAlphaComponent:0.3];
  }

  else
  {
    v6 = [v5 styleAttributes];
    [v6 imageDimmedTintColor];
  }
  v7 = ;

  return v7;
}

- (BOOL)_updateSignalView:(id)a3 withUpdate:(id)a4 entry:(id)a5 forceShowingDisabledSignalBars:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (([v11 styleAttributesChanged] & 1) != 0 || objc_msgSend(v11, "dataChanged"))
  {
    v13 = [(_UIStatusBarCellularItem *)self _backgroundColorForUpdate:v11 entry:v12];
    [v10 setInactiveColor:v13];

    v14 = [(_UIStatusBarCellularItem *)self _fillColorForUpdate:v11 entry:v12];
    [v10 setActiveColor:v14];
  }

  if (![v11 dataChanged])
  {
    goto LABEL_27;
  }

  if ([v12 isEnabled])
  {
    v15 = [v12 status] != 4;
  }

  else
  {
    v15 = 0;
  }

  v16 = [v10 signalMode];
  v17 = [v12 status];
  if (v17 <= 1)
  {
    if (!v17)
    {
      [v12 isBootstrapCellular];
      goto LABEL_27;
    }

    if (v17 == 1)
    {
      v15 &= self->_showsDisabledSignalBars || v6;
      if (self->_showsDisabledSignalBars || v6)
      {
        v16 = 0;
      }
    }
  }

  else
  {
    switch(v17)
    {
      case 2:
        v16 = 0;
        break;
      case 3:
        v16 = 1;
        break;
      case 5:
        v16 = 2;
        break;
    }
  }

  if (![v12 isBootstrapCellular] || (v15 & 1) == 0)
  {
    if (v15)
    {
      goto LABEL_25;
    }

LABEL_27:
    v18 = 0;
    goto LABEL_28;
  }

  if ([v12 status] != 5)
  {
    goto LABEL_27;
  }

LABEL_25:
  [v10 setSignalMode:v16];
  [v10 setNumberOfActiveBars:{objc_msgSend(v12, "displayValue")}];
  v18 = 1;
LABEL_28:

  return v18;
}

- (id)entryForDisplayItemWithIdentifier:(id)a3
{
  v4 = [(_UIStatusBarItem *)self statusBar];
  v5 = [v4 currentAggregatedData];
  v6 = [(_UIStatusBarCellularItem *)self cellularDataEntryKey];
  v7 = [v5 valueForKey:v6];

  return v7;
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v41.receiver = self;
  v41.super_class = _UIStatusBarCellularItem;
  v8 = [(_UIStatusBarItem *)&v41 applyUpdate:v6 toDisplayItem:v7];
  v9 = [v7 identifier];
  v10 = [(_UIStatusBarCellularItem *)self entryForDisplayItemWithIdentifier:v9];

  v11 = [v7 identifier];
  v12 = [objc_opt_class() signalStrengthDisplayIdentifier];

  if (v11 != v12)
  {
    v13 = [v7 identifier];
    v14 = [objc_opt_class() nameDisplayIdentifier];

    if (v13 == v14)
    {
      v26 = [v10 string];
      if ([v7 isEnabled] && objc_msgSend(v26, "length"))
      {
        v27 = [v10 isBootstrapCellular] ^ 1;
      }

      else
      {
        v27 = 0;
      }

      [v7 setEnabled:v27];
      if (![v7 isEnabled])
      {
        goto LABEL_47;
      }

      v28 = [(_UIStatusBarCellularItem *)self serviceNameView];
      [v28 setText:v26];
      v29 = [v10 crossfadeString];
      [v28 setAlternateText:v29];

      [v28 setMarqueeRunning:1];
LABEL_46:

LABEL_47:
      goto LABEL_48;
    }

    v15 = [v7 identifier];
    v16 = [objc_opt_class() typeDisplayIdentifier];

    if (v15 != v16)
    {
      v17 = [v7 identifier];
      v18 = [objc_opt_class() warningDisplayIdentifier];

      if (v17 == v18)
      {
        if (!v10)
        {
          goto LABEL_48;
        }

        v32 = [v7 isEnabled] && (objc_msgSend(v10, "status") == 4);
        [v7 setEnabled:v32];
        if (![v7 isEnabled])
        {
          goto LABEL_48;
        }

        v35 = [(_UIStatusBarCellularItem *)self warningView];
        v36 = [v35 image];

        if (v36)
        {
          goto LABEL_48;
        }

        v26 = [UIImage systemImageNamed:@"exclamationmark.triangle.fill"];
        v37 = [(_UIStatusBarCellularItem *)self warningView];
      }

      else
      {
        v19 = [v7 identifier];
        v20 = [objc_opt_class() callForwardingDisplayIdentifier];

        if (v19 != v20)
        {
          v21 = [v7 identifier];
          v22 = [objc_opt_class() rawDisplayIdentifier];

          if (v21 != v22 || !v10)
          {
            goto LABEL_48;
          }

          v23 = [v7 isEnabled] ? objc_msgSend(v10, "displayRawValue") : 0;
          [v7 setEnabled:v23];
          if (![v7 isEnabled])
          {
            goto LABEL_48;
          }

          v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", objc_msgSend(v10, "rawValue")];
          v34 = [(_UIStatusBarCellularItem *)self rawStringView];
LABEL_40:
          v28 = v34;
          [v34 setText:v26];
          goto LABEL_46;
        }

        if (!v10)
        {
          goto LABEL_48;
        }

        v33 = [v7 isEnabled] && -[_UIStatusBarCellularItem _showCallFowardingForEntry:](self, "_showCallFowardingForEntry:", v10);
        [v7 setEnabled:v33];
        if (![v7 isEnabled])
        {
          goto LABEL_48;
        }

        v38 = [(_UIStatusBarCellularItem *)self callForwardingView];
        v39 = [v38 image];

        if (v39)
        {
          goto LABEL_48;
        }

        v26 = [UIImage systemImageNamed:@"phone.fill.arrow.right"];
        v37 = [(_UIStatusBarCellularItem *)self callForwardingView];
      }

      v28 = v37;
      [v37 setImage:v26];
      goto LABEL_46;
    }

    if (!v10)
    {
      goto LABEL_48;
    }

    if ([v10 isEnabled])
    {
      v26 = -[_UIStatusBarCellularItem _stringForCellularType:](self, "_stringForCellularType:", [v10 type]);
      v30 = [v7 isEnabled];
      v31 = 0;
      if (v30 && v26)
      {
        v31 = [v10 isBootstrapCellular] ^ 1;
      }
    }

    else
    {
      [v7 isEnabled];
      v26 = 0;
      v31 = 0;
    }

    [v7 setEnabled:v31];
    if (![v7 isEnabled])
    {
      goto LABEL_47;
    }

    v34 = [(_UIStatusBarCellularItem *)self networkTypeView];
    goto LABEL_40;
  }

  v24 = [(_UIStatusBarCellularItem *)self signalView];
  v25 = [(_UIStatusBarCellularItem *)self _updateSignalView:v24 withUpdate:v6 entry:v10 forceShowingDisabledSignalBars:0];

  if ([v6 dataChanged] && v10)
  {
    [v7 setEnabled:v25];
  }

LABEL_48:

  return v8;
}

- (id)_stringForCellularType:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_typeStringProvider);

  if (!WeakRetained || (v6 = objc_loadWeakRetained(&self->_typeStringProvider), [v6 stringForCellularType:a3 condensed:0], v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    switch(a3)
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

- (void)prepareAnimation:(id)a3 forDisplayItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 type] == 1)
  {
    v8 = [v7 identifier];
    v9 = [objc_opt_class() nameDisplayIdentifier];

    if (v8 == v9)
    {
      v10 = [(_UIStatusBarCellularItem *)self serviceNameView];
      [v10 setMarqueeRunning:0];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __60___UIStatusBarCellularItem_prepareAnimation_forDisplayItem___block_invoke;
      v12[3] = &unk_1E70F5DB8;
      v13 = v10;
      v11 = v10;
      [v6 addCompletionHandler:v12];
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

- (void)setmarqueeServiceName:(BOOL)a3
{
  if (self->_marqueeServiceName != a3)
  {
    self->_marqueeServiceName = a3;
    serviceNameView = self->_serviceNameView;
    if (serviceNameView)
    {
      if (a3)
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

- (id)viewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() signalStrengthDisplayIdentifier];

  if (v5 == v4)
  {
    v11 = [(_UIStatusBarCellularItem *)self signalView];
  }

  else
  {
    v6 = [objc_opt_class() nameDisplayIdentifier];

    if (v6 == v4)
    {
      v11 = [(_UIStatusBarCellularItem *)self serviceNameView];
    }

    else
    {
      v7 = [objc_opt_class() typeDisplayIdentifier];

      if (v7 == v4)
      {
        v11 = [(_UIStatusBarCellularItem *)self networkTypeView];
      }

      else
      {
        v8 = [objc_opt_class() warningDisplayIdentifier];

        if (v8 == v4)
        {
          v11 = [(_UIStatusBarCellularItem *)self warningView];
        }

        else
        {
          v9 = [objc_opt_class() callForwardingDisplayIdentifier];

          if (v9 == v4)
          {
            v11 = [(_UIStatusBarCellularItem *)self callForwardingView];
          }

          else
          {
            v10 = [objc_opt_class() rawDisplayIdentifier];

            if (v10 == v4)
            {
              v11 = [(_UIStatusBarCellularItem *)self rawStringView];
            }

            else
            {
              v14.receiver = self;
              v14.super_class = _UIStatusBarCellularItem;
              v11 = [(_UIStatusBarItem *)&v14 viewForIdentifier:v4];
            }
          }
        }
      }
    }
  }

  v12 = v11;

  return v12;
}

- (_UIStatusBarCellularItemTypeStringProvider)typeStringProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_typeStringProvider);

  return WeakRetained;
}

+ (id)groupWithHighPriority:(int64_t)a3 lowPriority:(int64_t)a4 typeClass:(Class)a5 allowDualNetwork:(BOOL)a6
{
  v32[1] = *MEMORY[0x1E69E9840];
  v8 = a3 - a4;
  if (a3 <= a4)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:a1 file:@"_UIStatusBarDisplayItemPlacementCellularGroup.m" lineNumber:35 description:@"The lowPriority should be smaller than the highPriority"];
  }

  v9 = [a1 signalStrengthDisplayIdentifier];
  v10 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v9 priority:v8 + 6];

  v11 = [a1 warningDisplayIdentifier];
  v12 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v11 priority:v8 + 8];

  v13 = [a1 nameDisplayIdentifier];
  v14 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v13 priority:v8 + 2];

  v15 = [(objc_class *)a5 typeDisplayIdentifier];
  v16 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v15 priority:v8 + 4];
  v32[0] = v10;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  v18 = [v16 requiringAnyPlacements:v17];

  v19 = [a1 callForwardingDisplayIdentifier];
  v20 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v19 priority:2];

  v21 = [a1 rawDisplayIdentifier];
  v22 = [_UIStatusBarDisplayItemPlacement placementWithIdentifier:v21 priority:1];

  v31[0] = v10;
  v31[1] = v12;
  v31[2] = v22;
  v31[3] = v14;
  v31[4] = v18;
  v31[5] = v20;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:6];
  v24 = [(_UIStatusBarDisplayItemPlacementGroup *)_UIStatusBarDisplayItemPlacementCellularGroup groupWithPriority:a4 placements:v23];

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