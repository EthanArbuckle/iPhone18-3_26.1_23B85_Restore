@interface WGWidgetListHeaderView
- (WGWidgetListHeaderView)initWithContentView:(id)view;
@end

@implementation WGWidgetListHeaderView

- (WGWidgetListHeaderView)initWithContentView:(id)view
{
  v92[3] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v91.receiver = self;
  v91.super_class = WGWidgetListHeaderView;
  v6 = [(WGWidgetListHeaderView *)&v91 init];

  if (!v6)
  {
    goto LABEL_53;
  }

  v90 = viewCopy;
  objc_storeStrong(&v6->_contentView, view);
  _shouldReverseLayoutDirection = [(WGWidgetListHeaderView *)v6 _shouldReverseLayoutDirection];
  if (_shouldReverseLayoutDirection)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  layer = [(UIView *)v6->_contentView layer];
  [layer setAnchorPoint:{v8, 0.5}];

  [(UIView *)v6->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(WGWidgetListHeaderView *)v6 addSubview:v6->_contentView];
  mEMORY[0x277CF0CA8] = [MEMORY[0x277CF0CA8] sharedInstance];
  deviceClass = [mEMORY[0x277CF0CA8] deviceClass];
  if (deviceClass == 2)
  {
    layer = [MEMORY[0x277D759A0] mainScreen];
    [layer _referenceBounds];
    if (CGRectGetHeight(v93) <= 1194.0)
    {
      v14 = 0;
    }

    else
    {
      mEMORY[0x277CF0CA8]2 = [MEMORY[0x277CF0CA8] sharedInstance];
      if ([mEMORY[0x277CF0CA8]2 homeButtonType] == 2)
      {

        v13 = 0.5;
LABEL_43:

        goto LABEL_44;
      }

      v79 = mEMORY[0x277CF0CA8]2;
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  mEMORY[0x277CF0CA8]3 = [MEMORY[0x277CF0CA8] sharedInstance];
  deviceClass2 = [mEMORY[0x277CF0CA8]3 deviceClass];
  if (deviceClass2 == 2)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen _referenceBounds];
    if (CGRectGetHeight(v94) <= 1024.0)
    {
      v84 = mainScreen;
      v87 = 0;
    }

    else
    {
      mEMORY[0x277CF0CA8]4 = [MEMORY[0x277CF0CA8] sharedInstance];
      if ([mEMORY[0x277CF0CA8]4 homeButtonType] == 2)
      {

        v13 = 8.0;
        if ((v14 & 1) == 0)
        {
          goto LABEL_42;
        }

LABEL_41:

        goto LABEL_42;
      }

      v78 = mEMORY[0x277CF0CA8]4;
      v84 = mainScreen;
      v87 = 1;
    }
  }

  else
  {
    v87 = 0;
  }

  mEMORY[0x277CF0CA8]5 = [MEMORY[0x277CF0CA8] sharedInstance];
  deviceClass3 = [mEMORY[0x277CF0CA8]5 deviceClass];
  if (deviceClass3 == 2)
  {
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 _referenceBounds];
    if (CGRectGetHeight(v95) > 1194.0)
    {

      v13 = 0.5;
      goto LABEL_36;
    }

    v77 = mainScreen2;
  }

  mEMORY[0x277CF0CA8]6 = [MEMORY[0x277CF0CA8] sharedInstance];
  deviceClass4 = [mEMORY[0x277CF0CA8]6 deviceClass];
  if (deviceClass4 == 2)
  {
    mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen3 _referenceBounds];
    if (CGRectGetHeight(v96) > 1080.0)
    {

      if (deviceClass3 == 2)
      {
      }

      v13 = 8.0;
      goto LABEL_36;
    }

    v76 = mainScreen3;
  }

  mEMORY[0x277CF0CA8]7 = [MEMORY[0x277CF0CA8] sharedInstance];
  deviceClass5 = [mEMORY[0x277CF0CA8]7 deviceClass];
  if (deviceClass5 == 2)
  {
    mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen4 _referenceBounds];
    if (CGRectGetHeight(v97) > 1024.0)
    {

      if (deviceClass4 == 2)
      {
      }

      if (deviceClass3 == 2)
      {
      }

      v13 = 2.5;
      goto LABEL_36;
    }

    v66 = mainScreen4;
  }

  v80 = mEMORY[0x277CF0CA8]5;
  mEMORY[0x277CF0CA8]8 = [MEMORY[0x277CF0CA8] sharedInstance];
  if ([mEMORY[0x277CF0CA8]8 deviceClass] != 2)
  {
    v73 = mEMORY[0x277CF0CA8]8;
    v74 = v14;
    v75 = layer;
    mEMORY[0x277CF0CA8]9 = [MEMORY[0x277CF0CA8] sharedInstance];
    mEMORY[0x277CF0CA8]12 = &off_2742AE000;
    deviceClass6 = [mEMORY[0x277CF0CA8]9 deviceClass];
    if (!deviceClass6 || ([MEMORY[0x277CF0CA8] sharedInstance], v65 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v65, "deviceClass") == 1))
    {
      mainScreen5 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen5 _referenceBounds];
      if (CGRectGetHeight(v98) <= 812.0)
      {
        v69 = 0;
        v70 = 1;
      }

      else
      {
        mEMORY[0x277CF0CA8]10 = [MEMORY[0x277CF0CA8] sharedInstance];
        if ([mEMORY[0x277CF0CA8]10 homeButtonType] == 2 && _BSUI_Private_IsN84())
        {

          if (deviceClass6)
          {
          }

          layer = v75;
          if (deviceClass5 == 2)
          {
          }

          if (deviceClass4 == 2)
          {
          }

          if (deviceClass3 == 2)
          {
          }

          v13 = 0.0;
LABEL_36:
          if ((v87 & 1) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }

        v69 = 1;
        v70 = 1;
      }
    }

    else
    {
      v69 = 0;
      v70 = 0;
    }

    mEMORY[0x277CF0CA8]11 = [MEMORY[0x277CF0CA8] sharedInstance];
    deviceClass7 = [mEMORY[0x277CF0CA8]11 deviceClass];
    if (!deviceClass7 || ([MEMORY[0x277CF0CA8] sharedInstance], v61 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v61, "deviceClass") == 1))
    {
      mainScreen6 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen6 _referenceBounds];
      if (CGRectGetHeight(v99) <= 812.0)
      {
        v64 = 0x100000000;
      }

      else
      {
        mEMORY[0x277CF0CA8]12 = [MEMORY[0x277CF0CA8] sharedInstance];
        if ([mEMORY[0x277CF0CA8]12 homeButtonType] == 2)
        {

          if (deviceClass7)
          {
          }

          layer = v75;
          if (v69)
          {
LABEL_110:

            if ((v70 & 1) == 0)
            {
              goto LABEL_84;
            }

            goto LABEL_83;
          }

LABEL_82:
          if (!v70)
          {
LABEL_84:
            if (deviceClass6)
            {
            }

            mEMORY[0x277CF0CA8]8 = v73;
            goto LABEL_87;
          }

LABEL_83:

          goto LABEL_84;
        }

        v64 = 0x100000001;
      }
    }

    else
    {
      v64 = 0;
    }

    mEMORY[0x277CF0CA8]13 = [MEMORY[0x277CF0CA8] sharedInstance];
    deviceClass8 = [mEMORY[0x277CF0CA8]13 deviceClass];
    v55 = mEMORY[0x277CF0CA8]12;
    if (!deviceClass8 || ([MEMORY[0x277CF0CA8] sharedInstance], v57 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v57, "deviceClass") == 1))
    {
      mainScreen7 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen7 _referenceBounds];
      if (CGRectGetHeight(v100) <= 736.0)
      {
        v60 = 0x100000000;
      }

      else
      {
        mEMORY[0x277CF0CA8]8 = [MEMORY[0x277CF0CA8] sharedInstance];
        if ([mEMORY[0x277CF0CA8]8 homeButtonType] == 2)
        {

          if (deviceClass8)
          {
          }

          layer = v75;
          if (v64)
          {
LABEL_133:

            if ((v64 & 0x100000000) == 0)
            {
LABEL_107:
              if (deviceClass7)
              {
              }

              if (v69)
              {
                goto LABEL_110;
              }

              goto LABEL_82;
            }

LABEL_106:

            goto LABEL_107;
          }

LABEL_105:
          if (!HIDWORD(v64))
          {
            goto LABEL_107;
          }

          goto LABEL_106;
        }

        v60 = 0x100000001;
      }
    }

    else
    {
      v60 = 0;
    }

    mEMORY[0x277CF0CA8]14 = [MEMORY[0x277CF0CA8] sharedInstance];
    deviceClass9 = [mEMORY[0x277CF0CA8]14 deviceClass];
    v53 = mEMORY[0x277CF0CA8]8;
    if (!deviceClass9 || ([MEMORY[0x277CF0CA8] sharedInstance], v48 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v48, "deviceClass") == 1))
    {
      mainScreen8 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen8 _referenceBounds];
      if (CGRectGetHeight(v101) > 667.0)
      {
        goto LABEL_124;
      }

      v49 = 1;
      v50 = _shouldReverseLayoutDirection;
    }

    else
    {
      v49 = 0;
      v50 = _shouldReverseLayoutDirection;
    }

    mEMORY[0x277CF0CA8]15 = [MEMORY[0x277CF0CA8] sharedInstance];
    deviceClass10 = [mEMORY[0x277CF0CA8]15 deviceClass];
    if (deviceClass10 && ([MEMORY[0x277CF0CA8] sharedInstance], mEMORY[0x277CF0CA8]8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(mEMORY[0x277CF0CA8]8, "deviceClass") != 1) || (objc_msgSend(MEMORY[0x277D759A0], "mainScreen"), v47 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v47, "_referenceBounds"), CGRectGetHeight(v102), v47, deviceClass10))
    {

      if (v49)
      {
LABEL_123:
        _shouldReverseLayoutDirection = v50;
LABEL_124:
        layer = v75;
        v14 = v74;

        if (!deviceClass9)
        {
          goto LABEL_126;
        }

        goto LABEL_125;
      }
    }

    else
    {

      if (v49)
      {
        goto LABEL_123;
      }
    }

    _shouldReverseLayoutDirection = v50;
    layer = v75;
    v14 = v74;
    if (!deviceClass9)
    {
LABEL_126:

      if (v60)
      {
      }

      else if (!HIDWORD(v60))
      {
        goto LABEL_130;
      }

LABEL_130:
      if (deviceClass8)
      {
      }

      if (v64)
      {
        goto LABEL_133;
      }

      goto LABEL_105;
    }

LABEL_125:

    goto LABEL_126;
  }

LABEL_87:

  if (deviceClass5 == 2)
  {
  }

  if (deviceClass4 == 2)
  {
  }

  if (deviceClass3 == 2)
  {
  }

  v13 = 0.0;
  if (v87)
  {
LABEL_37:
  }

LABEL_38:
  if (deviceClass2 == 2)
  {
  }

  if (v14)
  {
    goto LABEL_41;
  }

LABEL_42:
  if (deviceClass == 2)
  {
    goto LABEL_43;
  }

LABEL_44:

  mEMORY[0x277CF0CA8]16 = [MEMORY[0x277CF0CA8] sharedInstance];
  deviceClass11 = [mEMORY[0x277CF0CA8]16 deviceClass];
  if (deviceClass11)
  {
    deviceClass = [MEMORY[0x277CF0CA8] sharedInstance];
    if ([deviceClass deviceClass] != 1)
    {
      layoutMarginsGuide = [(UIView *)v6->_contentView layoutMarginsGuide];
      topAnchor = [layoutMarginsGuide topAnchor];
      topAnchor2 = [(WGWidgetListHeaderView *)v6 topAnchor];
      v26 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v13];

LABEL_48:
      goto LABEL_49;
    }
  }

  topAnchor3 = [(UIView *)v6->_contentView topAnchor];
  topAnchor4 = [(WGWidgetListHeaderView *)v6 topAnchor];
  v26 = [topAnchor3 constraintEqualToAnchor:topAnchor4];

  if (deviceClass11)
  {
    goto LABEL_48;
  }

LABEL_49:

  [(UIView *)v6->_contentView layoutMargins];
  if (_shouldReverseLayoutDirection)
  {
    v31 = v30;
  }

  else
  {
    v31 = v29;
  }

  v32 = MEMORY[0x277CCAAD0];
  centerXAnchor = [(UIView *)v6->_contentView centerXAnchor];
  leadingAnchor = [(WGWidgetListHeaderView *)v6 leadingAnchor];
  v35 = [centerXAnchor constraintEqualToAnchor:leadingAnchor constant:v31];
  v92[0] = v35;
  v92[1] = v26;
  bottomAnchor = [(WGWidgetListHeaderView *)v6 bottomAnchor];
  bottomAnchor2 = [(UIView *)v6->_contentView bottomAnchor];
  v38 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v92[2] = v38;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:3];
  [v32 activateConstraints:v39];

  viewCopy = v90;
LABEL_53:
  v40 = v6;

  return v40;
}

@end