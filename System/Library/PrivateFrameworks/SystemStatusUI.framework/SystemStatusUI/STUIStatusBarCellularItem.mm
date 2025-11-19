@interface STUIStatusBarCellularItem
+ (id)groupWithHighPriority:(int64_t)a3 lowPriority:(int64_t)a4 typeClass:(Class)a5 allowDualNetwork:(BOOL)a6;
- (BOOL)_updateSignalView:(id)a3 withUpdate:(id)a4 entry:(id)a5 forceShowingDisabledSignalBars:(BOOL)a6;
- (STUIStatusBarCellularItem)initWithIdentifier:(id)a3 statusBar:(id)a4;
- (STUIStatusBarCellularItemTypeStringProvider)typeStringProvider;
- (STUIStatusBarCellularSignalView)signalView;
- (STUIStatusBarImageView)callForwardingView;
- (STUIStatusBarImageView)sosView;
- (STUIStatusBarImageView)warningView;
- (STUIStatusBarStringView)networkTypeView;
- (STUIStatusBarStringView)rawStringView;
- (STUIStatusBarStringView)serviceNameView;
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
- (void)_create_sosView;
- (void)_create_warningView;
- (void)_updateServiceNameMarquee;
- (void)prepareAnimation:(id)a3 forDisplayItem:(id)a4;
- (void)setmarqueeServiceName:(BOOL)a3;
@end

@implementation STUIStatusBarCellularItem

- (id)dependentEntryKeys
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(STUIStatusBarCellularItem *)self cellularDataEntryKey];
  v4 = [v2 setWithObjects:{v3, 0}];

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

- (STUIStatusBarCellularItem)initWithIdentifier:(id)a3 statusBar:(id)a4
{
  v6.receiver = self;
  v6.super_class = STUIStatusBarCellularItem;
  v4 = [(STUIStatusBarItem *)&v6 initWithIdentifier:a3 statusBar:a4];
  [(STUIStatusBarCellularItem *)v4 setShowsDisabledSignalBars:1];
  [(STUIStatusBarCellularItem *)v4 setMarqueeServiceName:1];
  return v4;
}

- (id)_fillColorForUpdate:(id)a3 entry:(id)a4
{
  v5 = a3;
  if ([a4 lowDataModeActive])
  {
    v6 = [MEMORY[0x277D75348] systemYellowColor];
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
    v6 = [MEMORY[0x277D75348] systemYellowColor];
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
    v13 = [(STUIStatusBarCellularItem *)self _backgroundColorForUpdate:v11 entry:v12];
    [v10 setInactiveColor:v13];

    v14 = [(STUIStatusBarCellularItem *)self _fillColorForUpdate:v11 entry:v12];
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
  v4 = [(STUIStatusBarItem *)self statusBar];
  v5 = [v4 currentAggregatedData];
  v6 = [(STUIStatusBarCellularItem *)self cellularDataEntryKey];
  v7 = [v5 valueForKey:v6];

  return v7;
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v60.receiver = self;
  v60.super_class = STUIStatusBarCellularItem;
  v8 = [(STUIStatusBarItem *)&v60 applyUpdate:v6 toDisplayItem:v7];
  v9 = [v7 identifier];
  v10 = [(STUIStatusBarCellularItem *)self entryForDisplayItemWithIdentifier:v9];

  v11 = [v7 identifier];
  v12 = [objc_opt_class() signalStrengthDisplayIdentifier];
  v13 = v12;
  if (v11 == v12)
  {

    goto LABEL_15;
  }

  v14 = [v7 identifier];
  v15 = [objc_opt_class() externalSignalStrengthDisplayIdentifier];

  if (v14 == v15)
  {
LABEL_15:
    v35 = [(STUIStatusBarCellularItem *)self signalView];
    v36 = [(STUIStatusBarCellularItem *)self _updateSignalView:v35 withUpdate:v6 entry:v10 forceShowingDisabledSignalBars:0];

    if ([v6 dataChanged] && v10)
    {
      [v7 setEnabled:v36];
    }

    goto LABEL_36;
  }

  v16 = [v7 identifier];
  v17 = [objc_opt_class() nameDisplayIdentifier];

  if (v16 == v17)
  {
    v37 = [v10 string];
    if ([v7 isEnabled] && objc_msgSend(v37, "length"))
    {
      v38 = [v10 isBootstrapCellular] ^ 1;
    }

    else
    {
      v38 = 0;
    }

    [v7 setEnabled:v38];
    if (![v7 isEnabled])
    {
      goto LABEL_35;
    }

    v39 = [(STUIStatusBarCellularItem *)self serviceNameView];
    [v39 setText:v37];
    v40 = [v10 crossfadeString];
    [v39 setAlternateText:v40];

    [v39 setMarqueeRunning:1];
LABEL_34:

LABEL_35:
    goto LABEL_36;
  }

  v18 = [v7 identifier];
  v19 = [objc_opt_class() typeDisplayIdentifier];
  v20 = v19;
  if (v18 == v19)
  {

    goto LABEL_25;
  }

  v21 = [v7 identifier];
  v22 = [objc_opt_class() externalTypeDisplayIdentifier];

  if (v21 == v22)
  {
LABEL_25:
    if (!v10)
    {
      goto LABEL_36;
    }

    if ([v10 isEnabled])
    {
      v37 = -[STUIStatusBarCellularItem _stringForCellularType:](self, "_stringForCellularType:", [v10 type]);
      v41 = [v7 isEnabled];
      v42 = 0;
      if (v41 && v37)
      {
        v42 = [v10 isBootstrapCellular] ^ 1;
      }
    }

    else
    {
      [v7 isEnabled];
      v37 = 0;
      v42 = 0;
    }

    [v7 setEnabled:v42];
    if (![v7 isEnabled])
    {
      goto LABEL_35;
    }

    v43 = [(STUIStatusBarCellularItem *)self networkTypeView];
    goto LABEL_33;
  }

  v23 = [v7 identifier];
  v24 = [objc_opt_class() sosDisplayIdentifier];

  if (v23 != v24)
  {
    v25 = [v7 identifier];
    v26 = [objc_opt_class() warningDisplayIdentifier];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [v7 identifier];
      v29 = [objc_opt_class() externalWarningDisplayIdentifier];

      if (v28 != v29)
      {
        v30 = [v7 identifier];
        v31 = [objc_opt_class() callForwardingDisplayIdentifier];

        if (v30 != v31)
        {
          v32 = [v7 identifier];
          v33 = [objc_opt_class() rawDisplayIdentifier];

          if (v32 != v33 || !v10)
          {
            goto LABEL_36;
          }

          v34 = [v7 isEnabled] ? objc_msgSend(v10, "displayRawValue") : 0;
          [v7 setEnabled:v34];
          if (![v7 isEnabled])
          {
            goto LABEL_36;
          }

          v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", objc_msgSend(v10, "rawValue")];
          v43 = [(STUIStatusBarCellularItem *)self rawStringView];
LABEL_33:
          v39 = v43;
          [v43 setText:v37];
          goto LABEL_34;
        }

        if (!v10)
        {
          goto LABEL_36;
        }

        v57 = [v7 isEnabled] && -[STUIStatusBarCellularItem _showCallFowardingForEntry:](self, "_showCallFowardingForEntry:", v10);
        [v7 setEnabled:v57];
        if (![v7 isEnabled])
        {
          goto LABEL_36;
        }

        v58 = [(STUIStatusBarCellularItem *)self callForwardingView];
        v59 = [v58 image];

        if (v59)
        {
          goto LABEL_36;
        }

        v37 = [MEMORY[0x277D755B8] systemImageNamed:@"phone.fill.arrow.right"];
        v56 = [(STUIStatusBarCellularItem *)self callForwardingView];
LABEL_58:
        v39 = v56;
        [v56 setImage:v37];
        goto LABEL_34;
      }
    }

    if (!v10)
    {
      goto LABEL_36;
    }

    v46 = [v7 isEnabled] && (objc_msgSend(v10, "status") == 4);
    [v7 setEnabled:v46];
    if (![v7 isEnabled])
    {
      goto LABEL_36;
    }

    v54 = [(STUIStatusBarCellularItem *)self warningView];
    v55 = [v54 image];

    if (v55)
    {
      goto LABEL_36;
    }

    v37 = [MEMORY[0x277D755B8] systemImageNamed:@"exclamationmark.triangle.fill"];
    v56 = [(STUIStatusBarCellularItem *)self warningView];
    goto LABEL_58;
  }

  if (v10)
  {
    v45 = [v7 isEnabled] && objc_msgSend(v10, "showsSOSWhenDisabled") && (objc_msgSend(v10, "status") == 1);
    [v7 setEnabled:v45];
    if ([v7 isEnabled])
    {
      v47 = [(STUIStatusBarCellularItem *)self sosView];
      v48 = [v47 image];

      if (!v48)
      {
        v49 = [MEMORY[0x277D755B8] systemImageNamed:@"sos"];
        v50 = [(STUIStatusBarCellularItem *)self sosView];
        [v50 setImage:v49];
      }

      v51 = [v10 sosAvailable];
      v52 = 0.3;
      if (v51)
      {
        v52 = 1.0;
      }

      [v7 setViewAlpha:v52];
      v53 = [(STUIStatusBarCellularItem *)self sosView];
      [v53 setUseDisabledAppearanceForAccessibilityHUD:v51 ^ 1u];
    }
  }

LABEL_36:

  return v8;
}

- (id)_stringForCellularType:(int64_t)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_typeStringProvider);

  if (!WeakRetained || (v6 = objc_loadWeakRetained(&self->_typeStringProvider), [v6 stringForCellularType:a3 condensed:0], v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = v8;
    switch(a3)
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
      v10 = [(STUIStatusBarCellularItem *)self serviceNameView];
      [v10 setMarqueeRunning:0];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __61__STUIStatusBarCellularItem_prepareAnimation_forDisplayItem___block_invoke;
      v12[3] = &unk_279D37E28;
      v13 = v10;
      v11 = v10;
      [v6 addCompletionHandler:v12];
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
    v4 = [(STUIStatusBarCellularItem *)self shouldShrinkCarrierNameBeforeMarquee];
    if (marqueeServiceName)
    {
      if (v4)
      {
        [(STUIStatusBarStringView *)self->_serviceNameView _setMarqueeMinimumScaleFactor:0.95];
        [(STUIStatusBarStringView *)self->_serviceNameView setAdjustsFontSizeToFitWidth:1];
      }

      serviceNameView = self->_serviceNameView;

      [(STUIStatusBarStringView *)serviceNameView setMarqueeEnabled:1];
    }

    else
    {
      if (v4)
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

- (void)setmarqueeServiceName:(BOOL)a3
{
  if (self->_marqueeServiceName != a3)
  {
    self->_marqueeServiceName = a3;
    [(STUIStatusBarCellularItem *)self _updateServiceNameMarquee];
  }
}

- (id)viewForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() signalStrengthDisplayIdentifier];

  if (v5 == v4)
  {
    v12 = [(STUIStatusBarCellularItem *)self signalView];
  }

  else
  {
    v6 = [objc_opt_class() nameDisplayIdentifier];

    if (v6 == v4)
    {
      v12 = [(STUIStatusBarCellularItem *)self serviceNameView];
    }

    else
    {
      v7 = [objc_opt_class() typeDisplayIdentifier];

      if (v7 == v4)
      {
        v12 = [(STUIStatusBarCellularItem *)self networkTypeView];
      }

      else
      {
        v8 = [objc_opt_class() sosDisplayIdentifier];

        if (v8 == v4)
        {
          v12 = [(STUIStatusBarCellularItem *)self sosView];
        }

        else
        {
          v9 = [objc_opt_class() warningDisplayIdentifier];

          if (v9 == v4)
          {
            v12 = [(STUIStatusBarCellularItem *)self warningView];
          }

          else
          {
            v10 = [objc_opt_class() callForwardingDisplayIdentifier];

            if (v10 == v4)
            {
              v12 = [(STUIStatusBarCellularItem *)self callForwardingView];
            }

            else
            {
              v11 = [objc_opt_class() rawDisplayIdentifier];

              if (v11 == v4)
              {
                v12 = [(STUIStatusBarCellularItem *)self rawStringView];
              }

              else
              {
                v15.receiver = self;
                v15.super_class = STUIStatusBarCellularItem;
                v12 = [(STUIStatusBarItem *)&v15 viewForIdentifier:v4];
              }
            }
          }
        }
      }
    }
  }

  v13 = v12;

  return v13;
}

+ (id)groupWithHighPriority:(int64_t)a3 lowPriority:(int64_t)a4 typeClass:(Class)a5 allowDualNetwork:(BOOL)a6
{
  v35[1] = *MEMORY[0x277D85DE8];
  v7 = a3 - a4;
  v8 = [a1 signalStrengthDisplayIdentifier];
  v9 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v8 priority:v7 + 6];

  v10 = [a1 warningDisplayIdentifier];
  v11 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v10 priority:v7 + 8];

  v12 = [a1 sosDisplayIdentifier];
  v30 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v12 priority:v7 + 1];

  v13 = [a1 nameDisplayIdentifier];
  v14 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v13 priority:v7 + 2];
  v35[0] = v30;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
  v16 = [v14 excludingPlacements:v15];

  v17 = [(objc_class *)a5 typeDisplayIdentifier];
  v18 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v17 priority:v7 + 4];
  v34 = v9;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  v20 = [v18 requiringAnyPlacements:v19];

  v21 = [a1 callForwardingDisplayIdentifier];
  v22 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v21 priority:2];

  v23 = [a1 rawDisplayIdentifier];
  v24 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v23 priority:1];

  v33[0] = v9;
  v33[1] = v11;
  v33[2] = v24;
  v33[3] = v16;
  v33[4] = v20;
  v33[5] = v22;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:6];
  v26 = [(STUIStatusBarDisplayItemPlacementGroup *)STUIStatusBarDisplayItemPlacementCellularGroup groupWithPriority:a4 placements:v25];

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