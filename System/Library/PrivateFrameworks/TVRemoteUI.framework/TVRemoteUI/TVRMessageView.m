@interface TVRMessageView
- (BOOL)_largeAccessibilityFontSizesEnabled;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)intrinsicContentSize;
- (id)_convertToAttributedStringWithReplacement:(id)a3 imagePointSize:(double)a4;
- (id)_deviceTypeString;
- (id)_loadingViewWithTitle:(id)a3 forSize:(CGSize)a4;
- (id)_localizedLegacyPairingMessageForDeviceModel;
- (void)_turnOnWireless:(id)a3;
- (void)clearContent;
- (void)layoutSubviews;
- (void)setCurrentView:(id)a3;
- (void)showLoadingSpinner;
- (void)showMessageWithError:(id)a3 device:(id)a4;
- (void)showMessageWithTitle:(id)a3 message:(id)a4;
- (void)showMessageWithTitle:(id)a3 message:(id)a4 titleFont:(id)a5;
- (void)showNoAssociatedNetworkMessage;
- (void)showNoWIFIConnectionMessage;
- (void)showPairingMessageWithCode:(id)a3;
- (void)showSearchingSpinner;
@end

@implementation TVRMessageView

- (CGSize)intrinsicContentSize
{
  [(UIView *)self->_currentView bounds];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = TVRMessageView;
  [(TVRMessageView *)&v4 layoutSubviews];
  currentView = self->_currentView;
  [(TVRMessageView *)self bounds];
  UIRectGetCenter();
  [(UIView *)currentView setCenter:?];
}

- (void)showMessageWithError:(id)a3 device:(id)a4
{
  v41 = a3;
  v6 = a4;
  if ([v41 code] == 102)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [(TVRMessageView *)self _deviceTypeString];
    v9 = [v7 stringWithFormat:@"TVRemoteUIPairingDeviceLockedMessage%@", v8];

    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:v9 value:&stru_287E6AEF8 table:@"Localizable"];
    v13 = [v6 name];
    v14 = [v10 stringWithFormat:v12, v13];

    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"TVRemoteUIPairingDeviceLockedTitle" value:&stru_287E6AEF8 table:@"Localizable"];
    [(TVRMessageView *)self showMessageWithTitle:v16 message:v14];
  }

  else if ([v41 code] == 104)
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v9 localizedStringForKey:@"TVRemoteUIConnectionErrorTitle" value:&stru_287E6AEF8 table:@"Localizable"];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"TVRemoteUIConnectionBlockedMessage" value:&stru_287E6AEF8 table:@"Localizable"];
    [(TVRMessageView *)self showMessageWithTitle:v14 message:v18];
  }

  else if ([v41 code] == 103)
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v14 = [v9 localizedStringForKey:@"TVRemoteUIConnectionErrorTitleTV" value:&stru_287E6AEF8 table:@"Localizable"];
    [(TVRMessageView *)self showMessageWithTitle:v14 message:&stru_287E6AEF8];
  }

  else
  {
    v19 = MGGetBoolAnswer();
    v20 = @"WIFI";
    if (v19)
    {
      v20 = @"WLAN";
    }

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"TVRemoteUIConnectionErrorMessage%@", v20];
    v21 = MEMORY[0x277CCACA8];
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:v9 value:&stru_287E6AEF8 table:@"Localizable"];
    v24 = [v6 name];
    v14 = [v21 stringWithFormat:v23, v24];

    v25 = [v6 model];
    v26 = [v25 containsString:@"AppleTV"];

    v27 = [v6 name];

    if (!v27)
    {
      v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v29 = v28;
      if (v26)
      {
        v30 = @"TVRemoteUIAppleTVDeviceName";
      }

      else
      {
        v30 = @"TVRemoteUITVDeviceName";
      }

      v31 = [v28 localizedStringForKey:v30 value:&stru_287E6AEF8 table:@"Localizable"];

      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@NoName", v9];

      v33 = MEMORY[0x277CCACA8];
      v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v35 = [v34 localizedStringForKey:v32 value:&stru_287E6AEF8 table:@"Localizable"];
      v36 = [v33 stringWithFormat:v35, v31];

      v14 = v36;
      v9 = v32;
    }

    v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v38 = [v37 localizedStringForKey:@"TVRemoteUIConnectionErrorTitle" value:&stru_287E6AEF8 table:@"Localizable"];

    if ((v26 & 1) == 0)
    {
      v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v40 = [v39 localizedStringForKey:@"TVRemoteUIConnectionErrorTitleTV" value:&stru_287E6AEF8 table:@"Localizable"];

      v38 = v40;
    }

    [(TVRMessageView *)self showMessageWithTitle:v38 message:v14];
  }
}

- (void)showMessageWithTitle:(id)a3 message:(id)a4 titleFont:(id)a5
{
  v68[3] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = MEMORY[0x277D75D18];
  v10 = a5;
  v11 = a3;
  v12 = objc_alloc_init(v9);
  v13 = [v12 layer];
  [v13 setAllowsGroupOpacity:0];
  v65 = v13;
  [v13 setAllowsGroupBlending:0];
  v14 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v14 setFont:v10];

  [v14 setNumberOfLines:0];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v15) = 1148846080;
  [v14 setContentCompressionResistancePriority:0 forAxis:v15];
  [v14 setTextAlignment:1];
  [v14 setAdjustsFontSizeToFitWidth:1];
  [v14 setText:v11];

  v16 = [(TVRMessageView *)self styleProvider];
  v17 = [v16 colorForMessageLabels];
  [v14 setTextColor:v17];

  [v12 addSubview:v14];
  v18 = [v14 topAnchor];
  v19 = [v12 topAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  v21 = [v14 leadingAnchor];
  v22 = [v12 leadingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  v24 = [v14 trailingAnchor];
  v25 = [v12 trailingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  v27 = MEMORY[0x277CCAAD0];
  v63 = v23;
  v64 = v20;
  v68[0] = v20;
  v68[1] = v23;
  v62 = v26;
  v68[2] = v26;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:3];
  [v27 activateConstraints:v28];

  if (v8)
  {
    v29 = [(TVRMessageView *)self styleProvider];
    v59 = [v29 fontForMessageViewDescription];

    v30 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v30 setFont:v59];
    [v30 setNumberOfLines:0];
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v31) = 1148846080;
    [v30 setContentCompressionResistancePriority:0 forAxis:v31];
    [v30 setTextAlignment:1];
    [v30 setAdjustsFontSizeToFitWidth:1];
    [v30 setText:v8];
    v32 = [(TVRMessageView *)self styleProvider];
    v33 = [v32 colorForMessageLabels];
    [v30 setTextColor:v33];

    [v12 addSubview:v30];
    if ([(TVRMessageView *)self _largeAccessibilityFontSizesEnabled])
    {
      v34 = 40.0;
    }

    else
    {
      v34 = 20.0;
    }

    v35 = [v30 firstBaselineAnchor];
    v36 = [v14 lastBaselineAnchor];
    v37 = [v35 constraintEqualToAnchor:v36 constant:v34];

    v38 = [v30 leadingAnchor];
    [v12 leadingAnchor];
    v39 = v61 = v8;
    v40 = [v38 constraintEqualToAnchor:v39];

    v41 = [v30 trailingAnchor];
    v42 = [v12 trailingAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];

    v44 = [v30 bottomAnchor];
    v45 = [v12 bottomAnchor];
    v46 = [v44 constraintLessThanOrEqualToAnchor:v45];

    v47 = MEMORY[0x277CCAAD0];
    v67[0] = v37;
    v67[1] = v40;
    v67[2] = v43;
    v67[3] = v46;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:4];
    [v47 activateConstraints:v48];

    v8 = v61;
    v49 = v60;
  }

  else
  {
    v50 = MEMORY[0x277CCAAD0];
    v49 = [v14 bottomAnchor];
    v37 = [v12 bottomAnchor];
    v40 = [v49 constraintEqualToAnchor:v37];
    v66 = v40;
    v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
    [v50 activateConstraints:v43];
    v30 = 0;
  }

  [(TVRMessageView *)self bounds];
  v52 = v51;
  v54 = v53;
  [v14 sizeThatFits:{v51, v53}];
  v56 = v55;
  if (v8)
  {
    [v30 sizeThatFits:{v52, v54}];
  }

  else
  {
    v57 = *(MEMORY[0x277CBF3A8] + 8);
  }

  if (v56 + v57 + 20.0 >= v54)
  {
    v58 = v54;
  }

  else
  {
    v58 = v56 + v57 + 20.0;
  }

  [v12 setBounds:{0.0, 0.0, v52, v58}];
  [(TVRMessageView *)self setCurrentView:v12];
  [(TVRMessageView *)self setMessageType:1];
}

- (void)showMessageWithTitle:(id)a3 message:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TVRMessageView *)self styleProvider];
  v9 = [v8 fontForMessageViewTitle];

  [(TVRMessageView *)self showMessageWithTitle:v7 message:v6 titleFont:v9];
}

- (void)showPairingMessageWithCode:(id)a3
{
  v119 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277D75D18]);
  v6 = [(TVRMessageView *)self styleProvider];
  v7 = [v6 fontForMessageViewDescription];

  v8 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v8 setNumberOfLines:0];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"TVRemoteUILegacyPairingTitle" value:&stru_287E6AEF8 table:@"Localizable"];
  [v8 setText:v10];

  [v8 setTextAlignment:1];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [(TVRMessageView *)self styleProvider];
  v12 = [v11 fontForMessageViewTitle];
  [v8 setFont:v12];

  v13 = [(TVRMessageView *)self styleProvider];
  v14 = [v13 colorForMessageLabels];
  [v8 setTextColor:v14];

  LODWORD(v15) = 1148846080;
  [v8 setContentCompressionResistancePriority:0 forAxis:v15];
  v108 = v8;
  LODWORD(v16) = 1148846080;
  [v8 setContentCompressionResistancePriority:1 forAxis:v16];
  v17 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v17 setNumberOfLines:0];
  [v17 setTextAlignment:1];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  v106 = v7;
  [v17 setFont:v7];
  v18 = [(TVRMessageView *)self styleProvider];
  v19 = [v18 colorForMessageLabels];
  [v17 setTextColor:v19];

  v105 = self;
  v20 = [(TVRMessageView *)self _localizedLegacyPairingMessageForDeviceModel];
  [v17 setText:v20];

  LODWORD(v21) = 1148846080;
  [v17 setContentCompressionResistancePriority:0 forAxis:v21];
  v107 = v17;
  LODWORD(v22) = 1148846080;
  [v17 setContentCompressionResistancePriority:1 forAxis:v22];
  v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "length")}];
  if ([v4 length])
  {
    v24 = 0;
    do
    {
      v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%c", objc_msgSend(v4, "characterAtIndex:", v24)];
      [v23 addObject:v25];

      ++v24;
    }

    while (v24 < [v4 length]);
  }

  v26 = [v23 componentsJoinedByString:@" "];
  v27 = objc_alloc_init(MEMORY[0x277D756B8]);
  v104 = v26;
  [v27 setText:v26];
  [v27 setNumberOfLines:1];
  [v27 setTextAlignment:1];
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v27 setTextAlignment:1];
  v28 = [MEMORY[0x277D74300] systemFontOfSize:*MEMORY[0x277CC4970] weight:28.0 design:*MEMORY[0x277D74418]];
  [v27 setFont:v28];

  v29 = [(TVRMessageView *)v105 styleProvider];
  v30 = [v29 colorForMessageLabels];
  [v27 setTextColor:v30];

  LODWORD(v31) = 1148846080;
  [v27 setContentCompressionResistancePriority:0 forAxis:v31];
  LODWORD(v32) = 1148846080;
  [v27 setContentCompressionResistancePriority:1 forAxis:v32];
  v33 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v33 setNumberOfLines:0];
  [v33 setTextAlignment:1];
  [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v33 setFont:v106];
  v34 = [(TVRMessageView *)v105 styleProvider];
  v35 = [v34 colorForSpinner];
  [v33 setTintColor:v35];

  v36 = [(TVRMessageView *)v105 styleProvider];
  v37 = [v36 colorForSpinner];
  [v33 setTextColor:v37];

  v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v39 = [v38 localizedStringForKey:@"TVRemoteUILegacyPairingBottomMessage" value:&stru_287E6AEF8 table:@"Localizable"];
  v40 = [(TVRMessageView *)v105 _convertToAttributedStringWithReplacement:v39 imagePointSize:13.0];
  [v33 setAttributedText:v40];

  LODWORD(v41) = 1148846080;
  [v33 setContentCompressionResistancePriority:0 forAxis:v41];
  LODWORD(v42) = 1148846080;
  [v33 setContentCompressionResistancePriority:1 forAxis:v42];
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v117[0] = v108;
  v117[1] = v107;
  v117[2] = v27;
  v117[3] = v33;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v117 count:4];
  v44 = [v43 countByEnumeratingWithState:&v109 objects:v118 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v110;
    do
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v110 != v46)
        {
          objc_enumerationMutation(v43);
        }

        [v5 addSubview:*(*(&v109 + 1) + 8 * i)];
      }

      v45 = [v43 countByEnumeratingWithState:&v109 objects:v118 count:16];
    }

    while (v45);
  }

  v48 = [v108 topAnchor];
  v49 = [v5 topAnchor];
  v103 = [v48 constraintEqualToAnchor:v49];

  v50 = [v108 leadingAnchor];
  v51 = [v5 leadingAnchor];
  v102 = [v50 constraintEqualToAnchor:v51];

  v52 = [v108 trailingAnchor];
  v53 = [v5 trailingAnchor];
  v101 = [v52 constraintEqualToAnchor:v53];

  v54 = MEMORY[0x277CCAAD0];
  v116[0] = v103;
  v116[1] = v102;
  v116[2] = v101;
  v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v116 count:3];
  [v54 activateConstraints:v55];

  v56 = [v107 topAnchor];
  v57 = [v108 lastBaselineAnchor];
  v100 = [v56 constraintEqualToAnchor:v57 constant:16.0];

  v58 = [v107 leadingAnchor];
  v59 = [v5 leadingAnchor];
  v99 = [v58 constraintEqualToAnchor:v59];

  v60 = [v107 trailingAnchor];
  v61 = [v5 trailingAnchor];
  v98 = [v60 constraintEqualToAnchor:v61];

  v62 = MEMORY[0x277CCAAD0];
  v115[0] = v100;
  v115[1] = v99;
  v115[2] = v98;
  v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v115 count:3];
  [v62 activateConstraints:v63];

  v64 = [v27 topAnchor];
  v65 = [v107 lastBaselineAnchor];
  v97 = [v64 constraintEqualToAnchor:v65 constant:16.0];

  v66 = [v27 leadingAnchor];
  v67 = [v5 leadingAnchor];
  v96 = [v66 constraintEqualToAnchor:v67];

  v68 = [v27 trailingAnchor];
  v69 = [v5 trailingAnchor];
  v95 = [v68 constraintEqualToAnchor:v69];

  v70 = MEMORY[0x277CCAAD0];
  v114[0] = v97;
  v114[1] = v96;
  v114[2] = v95;
  v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v114 count:3];
  [v70 activateConstraints:v71];

  v72 = [v33 topAnchor];
  v73 = [v27 bottomAnchor];
  v94 = [v72 constraintEqualToAnchor:v73 constant:16.0];

  v74 = [v33 leadingAnchor];
  v75 = [v5 leadingAnchor];
  v76 = [v74 constraintEqualToAnchor:v75];

  v77 = [v33 trailingAnchor];
  v78 = [v5 trailingAnchor];
  v79 = [v77 constraintEqualToAnchor:v78];

  v80 = MEMORY[0x277CCAAD0];
  v113[0] = v76;
  v113[1] = v79;
  v113[2] = v94;
  v81 = [MEMORY[0x277CBEA60] arrayWithObjects:v113 count:3];
  [v80 activateConstraints:v81];

  [(TVRMessageView *)v105 bounds];
  v83 = v82;
  v85 = v84;
  [v108 sizeThatFits:{v82, v84}];
  v87 = v86;
  [v107 sizeThatFits:{v83, v85}];
  v89 = v88;
  [v27 sizeThatFits:{v83, v85}];
  v91 = v90;
  [v33 sizeThatFits:{v83, v85}];
  if (v87 + v89 + v91 + v92 + 20.0 >= v85)
  {
    v93 = v85;
  }

  else
  {
    v93 = v87 + v89 + v91 + v92 + 20.0;
  }

  [v5 setBounds:{0.0, 0.0, v83, v93}];
  [(TVRMessageView *)v105 setCurrentView:v5];
  [(TVRMessageView *)v105 setMessageType:2];
}

- (void)showNoAssociatedNetworkMessage
{
  v3 = MGGetBoolAnswer();
  v4 = @"WIFI";
  if (v3)
  {
    v4 = @"WLAN";
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"TVRemoteUINoAssociatedNetworkString%@", v4];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:v7 value:&stru_287E6AEF8 table:@"Localizable"];
  [(TVRMessageView *)self showMessageWithTitle:v6 message:0];

  [(TVRMessageView *)self setMessageType:4];
}

- (void)showNoWIFIConnectionMessage
{
  v56[8] = *MEMORY[0x277D85DE8];
  if (![(TVRMessageView *)self isWifiConnectInProgress])
  {
    v3 = MGGetBoolAnswer();
    v4 = @"WIFI";
    if (v3)
    {
      v4 = @"WLAN";
    }

    v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"TVRemoteUINoWIFIConnectionString%@", v4];
    v5 = objc_alloc_init(MEMORY[0x277D75D18]);
    v54 = [v5 layer];
    [v54 setAllowsGroupOpacity:0];
    [v54 setAllowsGroupBlending:0];
    [(TVRMessageView *)self setUserInteractionEnabled:1];
    v6 = [(TVRMessageView *)self styleProvider];
    v53 = [v6 fontForMessageViewTitle];

    v7 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v7 setFont:v53];
    [v7 setNumberOfLines:0];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v8) = 1148846080;
    [v7 setContentCompressionResistancePriority:0 forAxis:v8];
    [v7 setTextAlignment:1];
    [v7 setAdjustsFontSizeToFitWidth:1];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:v52 value:&stru_287E6AEF8 table:@"Localizable"];
    [v7 setText:v10];

    v11 = [(TVRMessageView *)self styleProvider];
    v12 = [v11 colorForMessageLabels];
    [v7 setTextColor:v12];

    [v5 addSubview:v7];
    v13 = [v7 topAnchor];
    v14 = [v5 topAnchor];
    v55 = [v13 constraintEqualToAnchor:v14];

    v15 = [v7 leadingAnchor];
    v16 = [v5 leadingAnchor];
    v51 = [v15 constraintEqualToAnchor:v16];

    v17 = [v7 trailingAnchor];
    v18 = [v5 trailingAnchor];
    v50 = [v17 constraintEqualToAnchor:v18];

    v19 = [v7 heightAnchor];
    v49 = [v19 constraintEqualToConstant:44.0];

    v20 = [MEMORY[0x277D75220] buttonWithType:0];
    [(TVRMessageView *)self setTurnOnWiFiButton:v20];

    turnOnWiFiButton = self->_turnOnWiFiButton;
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"TVRemoteUITurnOnButtonTitleString" value:&stru_287E6AEF8 table:@"Localizable"];
    [(UIButton *)turnOnWiFiButton setTitle:v23 forState:0];

    v24 = [(UIButton *)self->_turnOnWiFiButton layer];
    [v24 setCornerRadius:8.0];

    v25 = [(TVRMessageView *)self styleProvider];
    v26 = [v25 buttonTextColor];
    v27 = [(UIButton *)self->_turnOnWiFiButton titleLabel];
    [v27 setTextColor:v26];

    v28 = [(TVRMessageView *)self styleProvider];
    v29 = [v28 fontForWiFiButton];
    v30 = [(UIButton *)self->_turnOnWiFiButton titleLabel];
    [v30 setFont:v29];

    [(UIButton *)self->_turnOnWiFiButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v31 = [MEMORY[0x277D75348] colorWithDisplayP3Red:0.921568627 green:0.921568627 blue:0.960784314 alpha:0.3];
    [(UIButton *)self->_turnOnWiFiButton setBackgroundColor:v31];

    [(UIButton *)self->_turnOnWiFiButton addTarget:self action:sel__turnOnWireless_ forControlEvents:64];
    v48 = v5;
    [v5 addSubview:self->_turnOnWiFiButton];
    v32 = [(UIButton *)self->_turnOnWiFiButton topAnchor];
    v33 = [v7 bottomAnchor];
    v47 = [v32 constraintEqualToAnchor:v33 constant:16.0];

    v34 = [(UIButton *)self->_turnOnWiFiButton centerXAnchor];
    v35 = [v5 centerXAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];

    v37 = [(UIButton *)self->_turnOnWiFiButton heightAnchor];
    v38 = [v37 constraintEqualToConstant:44.0];

    v39 = [(UIButton *)self->_turnOnWiFiButton widthAnchor];
    v40 = [v39 constraintEqualToConstant:281.0];

    v41 = MEMORY[0x277CCAAD0];
    v56[0] = v55;
    v56[1] = v51;
    v56[2] = v50;
    v56[3] = v49;
    v56[4] = v47;
    v56[5] = v36;
    v56[6] = v38;
    v56[7] = v40;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v56 count:8];
    [v41 activateConstraints:v42];

    [(TVRMessageView *)self bounds];
    v44 = v43;
    [v7 sizeThatFits:{v43, v45}];
    [v48 setBounds:{0.0, 0.0, v44, v46 + 44.0 + 20.0}];
    [(TVRMessageView *)self setCurrentView:v48];
    [(TVRMessageView *)self setMessageType:3];
  }
}

- (void)showLoadingSpinner
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"TVRemoteUIConnectingString" value:&stru_287E6AEF8 table:@"Localizable"];
  [(TVRMessageView *)self frame];
  v7 = [(TVRMessageView *)self _loadingViewWithTitle:v4 forSize:v5, v6];
  [(TVRMessageView *)self setCurrentView:v7];

  [(TVRMessageView *)self setMessageType:5];
}

- (void)showSearchingSpinner
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"TVRemoteUISearchingString" value:&stru_287E6AEF8 table:@"Localizable"];
  [(TVRMessageView *)self frame];
  v7 = [(TVRMessageView *)self _loadingViewWithTitle:v4 forSize:v5, v6];
  [(TVRMessageView *)self setCurrentView:v7];

  [(TVRMessageView *)self setMessageType:6];
}

- (void)clearContent
{
  [(TVRMessageView *)self setCurrentView:0];
  [(TVRMessageView *)self setTurnOnWiFiButton:0];
  [(TVRMessageView *)self setUserInteractionEnabled:0];

  [(TVRMessageView *)self setMessageType:0];
}

- (id)_localizedLegacyPairingMessageForDeviceModel
{
  v2 = MGCopyAnswer();
  v3 = [v2 intValue];
  v4 = @"TVRemoteUILegacyPairingTopMessage_IPHONE";
  if (v3 == 2)
  {
    v4 = @"TVRemoteUILegacyPairingTopMessage_IPOD";
  }

  if (v3 == 3)
  {
    v5 = @"TVRemoteUILegacyPairingTopMessage_IPAD";
  }

  else
  {
    v5 = v4;
  }

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:v5 value:&stru_287E6AEF8 table:@"Localizable"];

  return v7;
}

- (void)setCurrentView:(id)a3
{
  v5 = a3;
  [(UIView *)self->_currentView removeFromSuperview];
  if (v5)
  {
    objc_storeStrong(&self->_currentView, a3);
    [(TVRMessageView *)self addSubview:self->_currentView];
  }

  [(TVRMessageView *)self setNeedsLayout];
}

- (id)_loadingViewWithTitle:(id)a3 forSize:(CGSize)a4
{
  width = a4.width;
  v44[5] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D75D18];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v9 = objc_alloc_init(MEMORY[0x277D750E8]);
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setActivityIndicatorViewStyle:101];
  v10 = [(TVRMessageView *)self styleProvider];
  v11 = [v10 colorForSpinner];
  [v9 setColor:v11];

  [v9 startAnimating];
  v12 = [(TVRMessageView *)self styleProvider];
  v43 = [v12 fontForSpinnerTitle];

  v13 = objc_alloc_init(MEMORY[0x277D756B8]);
  [v13 setFont:v43];
  [v13 setAdjustsFontSizeToFitWidth:1];
  [v13 setNumberOfLines:1];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v14) = 1148846080;
  [v13 setContentCompressionResistancePriority:0 forAxis:v14];
  [v13 setTextAlignment:1];
  [v13 setText:v7];

  v15 = [(TVRMessageView *)self styleProvider];
  v16 = [v15 textColorForSpinnerTitle];
  [v13 setTextColor:v16];

  [v8 addSubview:v9];
  [v8 addSubview:v13];
  v42 = [v8 layer];
  [v42 setAllowsGroupOpacity:0];
  [v42 setAllowsGroupBlending:0];
  v17 = [v9 topAnchor];
  v18 = [v8 topAnchor];
  v41 = [v17 constraintEqualToAnchor:v18];

  v19 = [v9 centerXAnchor];
  v20 = [v8 centerXAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];

  v22 = [v13 bottomAnchor];
  v23 = [v8 bottomAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  v25 = [v13 leadingAnchor];
  v26 = [v8 leadingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  v28 = [v13 trailingAnchor];
  v29 = [v8 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  v31 = MEMORY[0x277CCAAD0];
  v44[0] = v41;
  v44[1] = v21;
  v44[2] = v24;
  v44[3] = v27;
  v44[4] = v30;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:5];
  [v31 activateConstraints:v32];

  [v9 intrinsicContentSize];
  v34 = v33;
  v36 = v35;
  [v13 intrinsicContentSize];
  if (v34 >= v37)
  {
    v37 = v34;
  }

  if (v37 >= width)
  {
    v39 = width;
  }

  else
  {
    v39 = v37;
  }

  [v8 setBounds:{0.0, 0.0, v39, v36 + v38 + 10.0}];

  return v8;
}

- (BOOL)_largeAccessibilityFontSizesEnabled
{
  v2 = [MEMORY[0x277D75380] system];
  v3 = [v2 preferredContentSizeCategory];

  v4 = UIContentSizeCategoryIsAccessibilityCategory(v3) && ([(NSString *)v3 isEqualToString:*MEMORY[0x277D767F0]]|| [(NSString *)v3 isEqualToString:*MEMORY[0x277D767E8]]);
  return v4;
}

- (id)_deviceTypeString
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    return @"Pad";
  }

  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 model];
  v7 = [v6 containsString:@"iPod"];

  if (v7)
  {
    return @"Pod";
  }

  else
  {
    return @"Phone";
  }
}

- (void)_turnOnWireless:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x277D7B958]);
  if ([v4 powered])
  {
    [v4 setUserAutoJoinState:1];
    v5 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v6 = "Wi-Fi already powered on. Now enabling auto-join state.";
LABEL_6:
      _os_log_impl(&dword_26CFEB000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
    }
  }

  else
  {
    [v4 setPowered:1];
    v5 = _TVRUIViewControllerLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v6 = "Requested turning on Wi-Fi in response to user action";
      goto LABEL_6;
    }
  }

  [(TVRMessageView *)self setWifiConnectInProgress:1];
  [(TVRMessageView *)self showLoadingSpinner];
  objc_initWeak(buf, self);
  v7 = dispatch_time(0, 5000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__TVRMessageView__turnOnWireless___block_invoke;
  block[3] = &unk_279D87F18;
  objc_copyWeak(&v9, buf);
  dispatch_after(v7, MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void __34__TVRMessageView__turnOnWireless___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    [v3 setWifiConnectInProgress:0];
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v23 = *MEMORY[0x277D85DE8];
  v7 = [(TVRMessageView *)self turnOnWiFiButton];

  if (!v7)
  {
    return 0;
  }

  v8 = [(TVRMessageView *)self turnOnWiFiButton];
  [(TVRMessageView *)self convertPoint:v8 toView:x, y];
  v10 = v9;
  v12 = v11;

  v13 = [(TVRMessageView *)self turnOnWiFiButton];
  [v13 bounds];
  v24.x = v10;
  v24.y = v12;
  v14 = CGRectContainsPoint(v25, v24);

  v15 = _TVRUIViewControllerLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(TVRMessageView *)self turnOnWiFiButton];
    LODWORD(buf) = 67109376;
    HIDWORD(buf) = v14;
    v21 = 1024;
    v22 = [v16 isEnabled];
    _os_log_impl(&dword_26CFEB000, v15, OS_LOG_TYPE_DEFAULT, "#debug pointinsidebutton %d %d", &buf, 0xEu);
  }

  if (!v14)
  {
    return 0;
  }

  objc_initWeak(&buf, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__TVRMessageView_pointInside_withEvent___block_invoke;
  block[3] = &unk_279D87F18;
  objc_copyWeak(&v19, &buf);
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&buf);
  return 1;
}

void __40__TVRMessageView_pointInside_withEvent___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _turnOnWireless:0];
    WeakRetained = v2;
  }
}

- (id)_convertToAttributedStringWithReplacement:(id)a3 imagePointSize:(double)a4
{
  v5 = a3;
  if (_convertToAttributedStringWithReplacement_imagePointSize__onceToken != -1)
  {
    [TVRMessageView _convertToAttributedStringWithReplacement:imagePointSize:];
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [v5 length];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __75__TVRMessageView__convertToAttributedStringWithReplacement_imagePointSize___block_invoke_2;
  v19[3] = &unk_279D87F68;
  v8 = v6;
  v20 = v8;
  [v5 enumerateSubstringsInRange:0 options:v7 usingBlock:{2, v19}];
  if ([v8 count])
  {
    v9 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v5];
    v10 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:a4];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __75__TVRMessageView__convertToAttributedStringWithReplacement_imagePointSize___block_invoke_4;
    v16[3] = &unk_279D87F90;
    v17 = v10;
    v11 = v9;
    v18 = v11;
    v12 = v10;
    [v8 enumerateKeysAndObjectsUsingBlock:v16];
    v13 = v18;
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __75__TVRMessageView__convertToAttributedStringWithReplacement_imagePointSize___block_invoke()
{
  v0 = _convertToAttributedStringWithReplacement_imagePointSize____unicodeToImageMapping;
  _convertToAttributedStringWithReplacement_imagePointSize____unicodeToImageMapping = &unk_287E84CF0;
}

void __75__TVRMessageView__convertToAttributedStringWithReplacement_imagePointSize___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = _convertToAttributedStringWithReplacement_imagePointSize____unicodeToImageMapping;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__TVRMessageView__convertToAttributedStringWithReplacement_imagePointSize___block_invoke_3;
  v10[3] = &unk_279D87F40;
  v11 = v7;
  v12 = *(a1 + 32);
  v13 = a3;
  v14 = a4;
  v9 = v7;
  [v8 enumerateKeysAndObjectsUsingBlock:v10];
}

void __75__TVRMessageView__convertToAttributedStringWithReplacement_imagePointSize___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if ([*(a1 + 32) isEqualToString:a2])
  {
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x277CCAE60] valueWithRange:{*(a1 + 48), *(a1 + 56)}];
    [v5 setObject:v7 forKey:v6];
  }
}

void __75__TVRMessageView__convertToAttributedStringWithReplacement_imagePointSize___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277D755B8];
  v6 = *(a1 + 32);
  v7 = a2;
  v15 = [v5 systemImageNamed:a3 withConfiguration:v6];
  v8 = objc_alloc_init(MEMORY[0x277D74270]);
  v9 = [v15 imageWithRenderingMode:2];
  [v8 setImage:v9];

  v10 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v8];
  v11 = *(a1 + 40);
  v12 = [v7 rangeValue];
  v14 = v13;

  [v11 replaceCharactersInRange:v12 withAttributedString:{v14, v10}];
}

@end