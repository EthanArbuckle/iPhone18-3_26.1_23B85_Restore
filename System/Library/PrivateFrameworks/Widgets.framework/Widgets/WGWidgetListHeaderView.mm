@interface WGWidgetListHeaderView
- (WGWidgetListHeaderView)initWithContentView:(id)a3;
@end

@implementation WGWidgetListHeaderView

- (WGWidgetListHeaderView)initWithContentView:(id)a3
{
  v92[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v91.receiver = self;
  v91.super_class = WGWidgetListHeaderView;
  v6 = [(WGWidgetListHeaderView *)&v91 init];

  if (!v6)
  {
    goto LABEL_53;
  }

  v90 = v5;
  objc_storeStrong(&v6->_contentView, a3);
  v7 = [(WGWidgetListHeaderView *)v6 _shouldReverseLayoutDirection];
  if (v7)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = [(UIView *)v6->_contentView layer];
  [v9 setAnchorPoint:{v8, 0.5}];

  [(UIView *)v6->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(WGWidgetListHeaderView *)v6 addSubview:v6->_contentView];
  v10 = [MEMORY[0x277CF0CA8] sharedInstance];
  v11 = [v10 deviceClass];
  if (v11 == 2)
  {
    v9 = [MEMORY[0x277D759A0] mainScreen];
    [v9 _referenceBounds];
    if (CGRectGetHeight(v93) <= 1194.0)
    {
      v14 = 0;
    }

    else
    {
      v12 = [MEMORY[0x277CF0CA8] sharedInstance];
      if ([v12 homeButtonType] == 2)
      {

        v13 = 0.5;
LABEL_43:

        goto LABEL_44;
      }

      v79 = v12;
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  v89 = [MEMORY[0x277CF0CA8] sharedInstance];
  v88 = [v89 deviceClass];
  if (v88 == 2)
  {
    v15 = [MEMORY[0x277D759A0] mainScreen];
    [v15 _referenceBounds];
    if (CGRectGetHeight(v94) <= 1024.0)
    {
      v84 = v15;
      v87 = 0;
    }

    else
    {
      v16 = [MEMORY[0x277CF0CA8] sharedInstance];
      if ([v16 homeButtonType] == 2)
      {

        v13 = 8.0;
        if ((v14 & 1) == 0)
        {
          goto LABEL_42;
        }

LABEL_41:

        goto LABEL_42;
      }

      v78 = v16;
      v84 = v15;
      v87 = 1;
    }
  }

  else
  {
    v87 = 0;
  }

  v17 = [MEMORY[0x277CF0CA8] sharedInstance];
  v86 = [v17 deviceClass];
  if (v86 == 2)
  {
    v18 = [MEMORY[0x277D759A0] mainScreen];
    [v18 _referenceBounds];
    if (CGRectGetHeight(v95) > 1194.0)
    {

      v13 = 0.5;
      goto LABEL_36;
    }

    v77 = v18;
  }

  v85 = [MEMORY[0x277CF0CA8] sharedInstance];
  v83 = [v85 deviceClass];
  if (v83 == 2)
  {
    v19 = [MEMORY[0x277D759A0] mainScreen];
    [v19 _referenceBounds];
    if (CGRectGetHeight(v96) > 1080.0)
    {

      if (v86 == 2)
      {
      }

      v13 = 8.0;
      goto LABEL_36;
    }

    v76 = v19;
  }

  v82 = [MEMORY[0x277CF0CA8] sharedInstance];
  v81 = [v82 deviceClass];
  if (v81 == 2)
  {
    v20 = [MEMORY[0x277D759A0] mainScreen];
    [v20 _referenceBounds];
    if (CGRectGetHeight(v97) > 1024.0)
    {

      if (v83 == 2)
      {
      }

      if (v86 == 2)
      {
      }

      v13 = 2.5;
      goto LABEL_36;
    }

    v66 = v20;
  }

  v80 = v17;
  v42 = [MEMORY[0x277CF0CA8] sharedInstance];
  if ([v42 deviceClass] != 2)
  {
    v73 = v42;
    v74 = v14;
    v75 = v9;
    v72 = [MEMORY[0x277CF0CA8] sharedInstance];
    v43 = &off_2742AE000;
    v71 = [v72 deviceClass];
    if (!v71 || ([MEMORY[0x277CF0CA8] sharedInstance], v65 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v65, "deviceClass") == 1))
    {
      v58 = [MEMORY[0x277D759A0] mainScreen];
      [v58 _referenceBounds];
      if (CGRectGetHeight(v98) <= 812.0)
      {
        v69 = 0;
        v70 = 1;
      }

      else
      {
        v52 = [MEMORY[0x277CF0CA8] sharedInstance];
        if ([v52 homeButtonType] == 2 && _BSUI_Private_IsN84())
        {

          if (v71)
          {
          }

          v9 = v75;
          if (v81 == 2)
          {
          }

          if (v83 == 2)
          {
          }

          if (v86 == 2)
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

    v68 = [MEMORY[0x277CF0CA8] sharedInstance];
    v67 = [v68 deviceClass];
    if (!v67 || ([MEMORY[0x277CF0CA8] sharedInstance], v61 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v61, "deviceClass") == 1))
    {
      v56 = [MEMORY[0x277D759A0] mainScreen];
      [v56 _referenceBounds];
      if (CGRectGetHeight(v99) <= 812.0)
      {
        v64 = 0x100000000;
      }

      else
      {
        v43 = [MEMORY[0x277CF0CA8] sharedInstance];
        if ([v43 homeButtonType] == 2)
        {

          if (v67)
          {
          }

          v9 = v75;
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
            if (v71)
            {
            }

            v42 = v73;
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

    v63 = [MEMORY[0x277CF0CA8] sharedInstance];
    v62 = [v63 deviceClass];
    v55 = v43;
    if (!v62 || ([MEMORY[0x277CF0CA8] sharedInstance], v57 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v57, "deviceClass") == 1))
    {
      v54 = [MEMORY[0x277D759A0] mainScreen];
      [v54 _referenceBounds];
      if (CGRectGetHeight(v100) <= 736.0)
      {
        v60 = 0x100000000;
      }

      else
      {
        v42 = [MEMORY[0x277CF0CA8] sharedInstance];
        if ([v42 homeButtonType] == 2)
        {

          if (v62)
          {
          }

          v9 = v75;
          if (v64)
          {
LABEL_133:

            if ((v64 & 0x100000000) == 0)
            {
LABEL_107:
              if (v67)
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

    v59 = [MEMORY[0x277CF0CA8] sharedInstance];
    v44 = [v59 deviceClass];
    v53 = v42;
    if (!v44 || ([MEMORY[0x277CF0CA8] sharedInstance], v48 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v48, "deviceClass") == 1))
    {
      v51 = [MEMORY[0x277D759A0] mainScreen];
      [v51 _referenceBounds];
      if (CGRectGetHeight(v101) > 667.0)
      {
        goto LABEL_124;
      }

      v49 = 1;
      v50 = v7;
    }

    else
    {
      v49 = 0;
      v50 = v7;
    }

    v45 = [MEMORY[0x277CF0CA8] sharedInstance];
    v46 = [v45 deviceClass];
    if (v46 && ([MEMORY[0x277CF0CA8] sharedInstance], v42 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v42, "deviceClass") != 1) || (objc_msgSend(MEMORY[0x277D759A0], "mainScreen"), v47 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v47, "_referenceBounds"), CGRectGetHeight(v102), v47, v46))
    {

      if (v49)
      {
LABEL_123:
        v7 = v50;
LABEL_124:
        v9 = v75;
        v14 = v74;

        if (!v44)
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

    v7 = v50;
    v9 = v75;
    v14 = v74;
    if (!v44)
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
      if (v62)
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

  if (v81 == 2)
  {
  }

  if (v83 == 2)
  {
  }

  if (v86 == 2)
  {
  }

  v13 = 0.0;
  if (v87)
  {
LABEL_37:
  }

LABEL_38:
  if (v88 == 2)
  {
  }

  if (v14)
  {
    goto LABEL_41;
  }

LABEL_42:
  if (v11 == 2)
  {
    goto LABEL_43;
  }

LABEL_44:

  v21 = [MEMORY[0x277CF0CA8] sharedInstance];
  v22 = [v21 deviceClass];
  if (v22)
  {
    v11 = [MEMORY[0x277CF0CA8] sharedInstance];
    if ([v11 deviceClass] != 1)
    {
      v23 = [(UIView *)v6->_contentView layoutMarginsGuide];
      v24 = [v23 topAnchor];
      v25 = [(WGWidgetListHeaderView *)v6 topAnchor];
      v26 = [v24 constraintEqualToAnchor:v25 constant:v13];

LABEL_48:
      goto LABEL_49;
    }
  }

  v27 = [(UIView *)v6->_contentView topAnchor];
  v28 = [(WGWidgetListHeaderView *)v6 topAnchor];
  v26 = [v27 constraintEqualToAnchor:v28];

  if (v22)
  {
    goto LABEL_48;
  }

LABEL_49:

  [(UIView *)v6->_contentView layoutMargins];
  if (v7)
  {
    v31 = v30;
  }

  else
  {
    v31 = v29;
  }

  v32 = MEMORY[0x277CCAAD0];
  v33 = [(UIView *)v6->_contentView centerXAnchor];
  v34 = [(WGWidgetListHeaderView *)v6 leadingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34 constant:v31];
  v92[0] = v35;
  v92[1] = v26;
  v36 = [(WGWidgetListHeaderView *)v6 bottomAnchor];
  v37 = [(UIView *)v6->_contentView bottomAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];
  v92[2] = v38;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v92 count:3];
  [v32 activateConstraints:v39];

  v5 = v90;
LABEL_53:
  v40 = v6;

  return v40;
}

@end