@interface STUIStatusBar_Wrapper
+ (double)_heightForStyle:(int64_t)a3 orientation:(int64_t)a4 forStatusBarFrame:(BOOL)a5 inWindow:(id)a6 isAzulBLinked:(BOOL)a7;
+ (int64_t)_defaultStyleForRequestedStyle:(int64_t)a3 styleOverrides:(unint64_t)a4 activeStyleOverride:(unint64_t *)a5;
- (CGRect)frameForPartWithIdentifier:(id)a3;
- (CGSize)intrinsicContentSize;
- (UIOffset)offsetForPartWithIdentifier:(id)a3;
- (id)_dataFromLegacyData:(id *)a3;
- (id)_effectiveDataFromData:(id)a3 activeOverride:(unint64_t)a4 activeBackgroundActivity:(id)a5 canUpdateBackgroundActivity:(BOOL)a6;
- (id)_initWithFrame:(CGRect)a3 showForegroundView:(BOOL)a4 wantsServer:(BOOL)a5 inProcessStateProvider:(id)a6;
- (id)clockFont;
- (int64_t)_effectiveStyleFromStyle:(int64_t)a3;
- (int64_t)currentStyle;
- (unint64_t)_implicitStyleOverrideForStyle:(int64_t)a3;
- (void)_getStyle:(int64_t *)a3 andActiveOverride:(unint64_t *)a4 andActiveBackgroundActivity:(id *)a5 forRequestedStyle:(int64_t)a6 updatingBackgroundActivity:(BOOL)a7;
- (void)_requestStyle:(int64_t)a3 partStyles:(id)a4 animationParameters:(id)a5 forced:(BOOL)a6;
- (void)_requestStyle:(int64_t)a3 partStyles:(id)a4 legibilityStyle:(int64_t)a5 foregroundColor:(id)a6 animationParameters:(id)a7 forced:(BOOL)a8;
- (void)_updateSemanticContentAttributeFromLegacyData:(id *)a3;
- (void)_updateWithData:(id)a3 force:(BOOL)a4;
- (void)activeBackgroundActivitiesDidUpdate:(id)a3;
- (void)dealloc;
- (void)forceUpdate:(BOOL)a3;
- (void)forceUpdateData:(BOOL)a3;
- (void)jiggleLockIcon;
- (void)layoutSubviews;
- (void)requestResolvedStyle:(int64_t)a3;
- (void)setAvoidanceFrame:(CGRect)a3 animationSettings:(id)a4 options:(unint64_t)a5;
- (void)setForegroundAlpha:(double)a3 animationParameters:(id)a4;
- (void)setForegroundColor:(id)a3 animationParameters:(id)a4;
- (void)setHidden:(BOOL)a3 animationParameters:(id)a4;
- (void)setLegibilityStyle:(int64_t)a3 animationParameters:(id)a4;
- (void)setMode:(int64_t)a3;
- (void)setOrientation:(int64_t)a3;
- (void)setStyleRequest:(id)a3 animationParameters:(id)a4;
- (void)statusBarServer:(id)a3 didReceiveStatusBarData:(id *)a4 withActions:(int)a5;
- (void)statusBarServer:(id)a3 didReceiveStyleOverrides:(unint64_t)a4;
- (void)statusBarStateProvider:(id)a3 didPostStatusBarData:(id *)a4 withActions:(int)a5;
@end

@implementation STUIStatusBar_Wrapper

- (void)layoutSubviews
{
  [(STUIStatusBar_Wrapper *)self bounds];
  statusBar = self->_statusBar;

  [(STUIStatusBar *)statusBar setFrame:?];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277D6B920] sharedInstance];
  [v3 removeBackgroundActivityClient:self];

  v4.receiver = self;
  v4.super_class = STUIStatusBar_Wrapper;
  [(STUIStatusBar_Wrapper *)&v4 dealloc];
}

- (id)_initWithFrame:(CGRect)a3 showForegroundView:(BOOL)a4 wantsServer:(BOOL)a5 inProcessStateProvider:(id)a6
{
  v6 = a5;
  v7 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = STUIStatusBar_Wrapper;
  v14 = [(STUIStatusBar_Wrapper *)&v24 _initWithFrame:v7 showForegroundView:v6 wantsServer:v13 inProcessStateProvider:x, y, width, height];
  if (v14)
  {
    v15 = [[STUIStatusBar alloc] initWithStyle:0];
    [v14 addSubview:v15];
    [v14 _setRequestedStyle:0];
    objc_initWeak(&location, v14);
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __94__STUIStatusBar_Wrapper__initWithFrame_showForegroundView_wantsServer_inProcessStateProvider___block_invoke;
    v21 = &unk_279D385B0;
    objc_copyWeak(&v22, &location);
    [(STUIStatusBar *)v15 setRegionActionValidationBlock:&v18];
    [v14 setStatusBar:{v15, v18, v19, v20, v21}];
    v16 = [MEMORY[0x277D6B920] sharedInstance];
    [v16 addBackgroundActivityClient:v14];

    [v14 _evaluateServerRegistration];
    [v14 setNeedsLayout];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v14;
}

+ (double)_heightForStyle:(int64_t)a3 orientation:(int64_t)a4 forStatusBarFrame:(BOOL)a5 inWindow:(id)a6 isAzulBLinked:(BOOL)a7
{
  v7 = a7;
  v10 = [MEMORY[0x277D759A0] mainScreen];
  [STUIStatusBar intrinsicContentSizeForTargetScreen:v10 orientation:a4 onLockScreen:a3 == 306 isAzulBLinked:v7];
  v12 = v11;

  return v12;
}

+ (int64_t)_defaultStyleForRequestedStyle:(int64_t)a3 styleOverrides:(unint64_t)a4 activeStyleOverride:(unint64_t *)a5
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___STUIStatusBar_Wrapper;
  objc_msgSendSuper2(&v7, sel__defaultStyleForRequestedStyle_styleOverrides_activeStyleOverride_, a3, a4, a5);
  return a3;
}

- (void)_updateSemanticContentAttributeFromLegacyData:(id *)a3
{
  if ((*(a3 + 2536) & 2) != 0)
  {
    v3 = 4;
  }

  else
  {
    v3 = 3;
  }

  [(STUIStatusBar *)self->_statusBar setSemanticContentAttribute:v3];
}

- (id)_dataFromLegacyData:(id *)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(STUIStatusBar_Wrapper *)self localDataOverrides])
  {
    memset(&v9[30], 0, 32);
    [MEMORY[0x277D75A78] getData:v9 forRequestedData:a3 withOverrides:{-[STUIStatusBar_Wrapper localDataOverrides](self, "localDataOverrides", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)}];
    v5 = [(STUIStatusBar *)self->_statusBar currentData];
    v6 = v9;
  }

  else
  {
    v5 = [(STUIStatusBar *)self->_statusBar currentData];
    v6 = a3;
  }

  v7 = [STUIStatusBarDataConverter convertData:v6 fromReferenceData:v5];

  return v7;
}

- (int64_t)_effectiveStyleFromStyle:(int64_t)a3
{
  if (a3 > 108)
  {
    if (a3 <= 301)
    {
      if (a3 <= 299)
      {
        if (a3 == 109)
        {
          return 3;
        }

        if (a3 != 110)
        {
          goto LABEL_28;
        }

        return a3;
      }

      if (a3 != 300)
      {
        return 1;
      }
    }

    else
    {
      if (a3 <= 303)
      {
        return 1;
      }

      if (a3 != 304 && a3 != 305)
      {
        if (a3 != 306)
        {
          goto LABEL_28;
        }

        return 1;
      }
    }

    return 0;
  }

  if (a3 > 102)
  {
    if (a3 <= 106)
    {
      if (a3 != 103 && a3 != 106)
      {
        goto LABEL_28;
      }

      return 1;
    }

    return a3 != 107;
  }

  if (a3 <= 0x33)
  {
    if (((1 << a3) & 0xB) == 0)
    {
      if (((1 << a3) & 0x8000000000004) == 0)
      {
        goto LABEL_28;
      }

      return 1;
    }

    return a3;
  }

LABEL_28:
  [(STUIStatusBar *)self->_statusBar style];

  return _UIStatusBarStyleFromResolvedStyle();
}

- (id)_effectiveDataFromData:(id)a3 activeOverride:(unint64_t)a4 activeBackgroundActivity:(id)a5 canUpdateBackgroundActivity:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a5;
  v12 = v10;
  v13 = v11;
  if (v11)
  {
LABEL_98:
    v16 = v13;
    if ([_effectiveDataFromData_activeOverride_activeBackgroundActivity_canUpdateBackgroundActivity__lastBackgroundActivityEntry isEnabled] && (objc_msgSend(_effectiveDataFromData_activeOverride_activeBackgroundActivity_canUpdateBackgroundActivity__lastBackgroundActivityEntry, "backgroundActivityIdentifier"), v17 = objc_claimAutoreleasedReturnValue(), v17, v16 == v17))
    {
      [_effectiveDataFromData_activeOverride_activeBackgroundActivity_canUpdateBackgroundActivity__lastBackgroundActivityEntry displayStartDate];
    }

    else
    {
      v18 = CACurrentMediaTime();
    }

    v19 = v18;
    v20 = MEMORY[0x277D6BA58];
    v21 = MEMORY[0x277D75A98];
    v22 = [0 backgroundActivityIdentifier];
    v23 = [v21 stui_getDoubleHeightStatusStringBackgroundActivityWithIdentifier:v22];
    v24 = [v20 entryWithBackgroundActivityIdentifier:v16 displayStartDate:v23 detailString:v19];

    if (v6)
    {
      goto LABEL_102;
    }

    goto LABEL_103;
  }

  if (a4 >= 0x200000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (a4 <= 0x3FFFFFF)
      {
        if (a4 < 0x800000)
        {
          if (a4 == 0x200000)
          {
            v14 = MEMORY[0x277D6BC78];
            goto LABEL_97;
          }

          if (a4 == 0x400000)
          {
            v14 = MEMORY[0x277D6BBF8];
            goto LABEL_97;
          }
        }

        else
        {
          switch(a4)
          {
            case 0x800000uLL:
              v14 = MEMORY[0x277D6BBF0];
              goto LABEL_97;
            case 0x1000000uLL:
              v14 = MEMORY[0x277D6BD18];
              goto LABEL_97;
            case 0x2000000uLL:
              v14 = MEMORY[0x277D6BC48];
              goto LABEL_97;
          }
        }

        goto LABEL_112;
      }

      if (a4 <= 0xFFFFFFF)
      {
        if (a4 == 0x4000000)
        {
          v14 = MEMORY[0x277D6BC40];
          goto LABEL_97;
        }

        if (a4 == 0x8000000)
        {
          v14 = MEMORY[0x277D6BC10];
          goto LABEL_97;
        }

        goto LABEL_112;
      }

      if (a4 == 0x10000000)
      {
        v14 = MEMORY[0x277D6BD08];
        goto LABEL_97;
      }

      if (a4 == 0x20000000)
      {
        v14 = MEMORY[0x277D6BCB0];
        goto LABEL_97;
      }

      v15 = 0x40000000;
    }

    else
    {
      if (a4 > 0xFFFFFFFFFLL)
      {
        if (a4 > 0x7FFFFFFFFFLL)
        {
          switch(a4)
          {
            case 0x8000000000uLL:
              v14 = MEMORY[0x277D6BD00];
              goto LABEL_97;
            case 0x10000000000uLL:
              v14 = MEMORY[0x277D6BCE0];
              goto LABEL_97;
            case 0x20000000000uLL:
              v14 = MEMORY[0x277D6BC98];
              goto LABEL_97;
          }
        }

        else
        {
          switch(a4)
          {
            case 0x1000000000uLL:
              v14 = MEMORY[0x277D6BBD8];
              goto LABEL_97;
            case 0x2000000000uLL:
              v14 = MEMORY[0x277D6BC58];
              goto LABEL_97;
            case 0x4000000000uLL:
              v14 = MEMORY[0x277D6BC08];
LABEL_97:
              v13 = *v14;
              goto LABEL_98;
          }
        }

        goto LABEL_112;
      }

      if (a4 > 0x1FFFFFFFFLL)
      {
        if (a4 != 0x200000000)
        {
          if (a4 == 0x400000000)
          {
            v14 = MEMORY[0x277D6BCA0];
            goto LABEL_97;
          }

          if (a4 == 0x800000000)
          {
            v14 = MEMORY[0x277D6BCB8];
            goto LABEL_97;
          }

          goto LABEL_112;
        }

LABEL_74:
        v14 = MEMORY[0x277D6BCE8];
        goto LABEL_97;
      }

      if (a4 == 0x80000000)
      {
        goto LABEL_74;
      }

      v15 = 0x100000000;
    }

    if (a4 == v15)
    {
      v14 = MEMORY[0x277D6BCD8];
      goto LABEL_97;
    }

    goto LABEL_112;
  }

  if (a4 > 2047)
  {
    if (a4 >= 0x10000)
    {
      if (a4 < 0x40000)
      {
        if (a4 == 0x10000)
        {
          v14 = MEMORY[0x277D6BC28];
          goto LABEL_97;
        }

        if (a4 == 0x20000)
        {
          v14 = MEMORY[0x277D6BD20];
          goto LABEL_97;
        }
      }

      else
      {
        switch(a4)
        {
          case 0x40000uLL:
            v14 = MEMORY[0x277D6BBE0];
            goto LABEL_97;
          case 0x80000uLL:
            v14 = MEMORY[0x277D6BC30];
            goto LABEL_97;
          case 0x100000uLL:
            v14 = MEMORY[0x277D6BCC0];
            goto LABEL_97;
        }
      }
    }

    else if (a4 < 0x2000)
    {
      if (a4 == 2048)
      {
        v14 = MEMORY[0x277D6BC00];
        goto LABEL_97;
      }

      if (a4 == 4096)
      {
        v14 = MEMORY[0x277D6BC20];
        goto LABEL_97;
      }
    }

    else
    {
      switch(a4)
      {
        case 0x2000uLL:
          v14 = MEMORY[0x277D6BCF0];
          goto LABEL_97;
        case 0x4000uLL:
          v14 = MEMORY[0x277D6BCD0];
          goto LABEL_97;
        case 0x8000uLL:
          v14 = MEMORY[0x277D6BC38];
          goto LABEL_97;
      }
    }
  }

  else if (a4 > 63)
  {
    if (a4 <= 255)
    {
      if (a4 == 64 || a4 == 128)
      {
        v14 = MEMORY[0x277D6BC80];
        goto LABEL_97;
      }
    }

    else
    {
      switch(a4)
      {
        case 0x100uLL:
          v14 = MEMORY[0x277D6BBE8];
          goto LABEL_97;
        case 0x200uLL:
          v14 = MEMORY[0x277D6BD10];
          goto LABEL_97;
        case 0x400uLL:
          v14 = MEMORY[0x277D6BC50];
          goto LABEL_97;
      }
    }
  }

  else if (a4 <= 7)
  {
    if (a4 == 1)
    {
      v14 = MEMORY[0x277D6BC60];
      goto LABEL_97;
    }

    if (a4 == 4)
    {
      v14 = MEMORY[0x277D6BCA8];
      goto LABEL_97;
    }
  }

  else
  {
    switch(a4)
    {
      case 8uLL:
        v14 = MEMORY[0x277D6BCF8];
        goto LABEL_97;
      case 0x10uLL:
        v14 = MEMORY[0x277D6BC68];
        goto LABEL_97;
      case 0x20uLL:
        v14 = MEMORY[0x277D6BCC8];
        goto LABEL_97;
    }
  }

LABEL_112:
  v24 = [MEMORY[0x277D6BA58] disabledEntry];
  v16 = 0;
  if (v6)
  {
LABEL_102:
    objc_storeStrong(&_effectiveDataFromData_activeOverride_activeBackgroundActivity_canUpdateBackgroundActivity__lastBackgroundActivityEntry, v24);
  }

LABEL_103:
  v25 = [(STUIStatusBar *)self->_statusBar currentData];
  v26 = [v25 backgroundActivityEntry];

  v27 = v12;
  if ((BSEqualObjects() & 1) == 0)
  {
    if (v12)
    {
      v28 = [v12 mutableCopy];
    }

    else
    {
      v28 = objc_alloc_init(MEMORY[0x277D6BA20]);
    }

    v29 = v28;
    [v28 setBackgroundActivityEntry:v24];
    v27 = [v29 immutableCopy];
  }

  return v27;
}

- (unint64_t)_implicitStyleOverrideForStyle:(int64_t)a3
{
  if (a3 > 113)
  {
    result = 0x20000000;
    switch(a3)
    {
      case 200:
LABEL_18:
        result = 1;
        break;
      case 201:
      case 228:
      case 229:
        return 0;
      case 202:
LABEL_27:
        result = 0x20000;
        break;
      case 203:
LABEL_29:
        result = 0x1000000;
        break;
      case 204:
LABEL_24:
        result = 0x2000000;
        break;
      case 205:
LABEL_33:
        result = 0x4000000;
        break;
      case 206:
LABEL_20:
        result = 4;
        break;
      case 207:
LABEL_12:
        result = 8;
        break;
      case 208:
LABEL_25:
        result = 16;
        break;
      case 209:
        result = 64;
        break;
      case 210:
        result = 128;
        break;
      case 211:
        result = 1024;
        break;
      case 212:
LABEL_21:
        result = 2048;
        break;
      case 213:
LABEL_28:
        result = 0x2000;
        break;
      case 214:
        result = 0x4000;
        break;
      case 215:
        result = 0x8000;
        break;
      case 216:
        result = 0x200000;
        break;
      case 217:
LABEL_26:
        result = 0x10000;
        break;
      case 218:
LABEL_32:
        result = 0x80000;
        break;
      case 219:
LABEL_34:
        result = 0x40000;
        break;
      case 220:
LABEL_31:
        result = 0x8000000;
        break;
      case 221:
LABEL_19:
        result = 0x10000000;
        break;
      case 222:
      case 223:
        return result;
      case 224:
LABEL_16:
        result = 0x40000000;
        break;
      case 225:
LABEL_23:
        result = 0x400000000;
        break;
      case 226:
LABEL_17:
        result = 0x1000000000;
        break;
      case 227:
LABEL_22:
        result = 0x2000000000;
        break;
      case 230:
LABEL_30:
        result = 0x20000000000;
        break;
      default:
        switch(a3)
        {
          case 1001:
            goto LABEL_12;
          case 1002:
            goto LABEL_21;
          case 1003:
            goto LABEL_28;
          case 1004:
            goto LABEL_20;
          case 1005:
            goto LABEL_26;
          case 1006:
            goto LABEL_27;
          case 1007:
            goto LABEL_29;
          case 1008:
            goto LABEL_24;
          case 1009:
            goto LABEL_33;
          case 1010:
            goto LABEL_19;
          case 1011:
            goto LABEL_31;
          case 1012:
            goto LABEL_25;
          case 1013:
            goto LABEL_18;
          case 1014:
            goto LABEL_32;
          case 1015:
            goto LABEL_34;
          case 1016:
          case 1020:
          case 1021:
          case 1025:
          case 1026:
            return 0;
          case 1017:
          case 1018:
            return result;
          case 1019:
            goto LABEL_16;
          case 1022:
            goto LABEL_23;
          case 1023:
            goto LABEL_17;
          case 1024:
            goto LABEL_22;
          case 1027:
            goto LABEL_30;
          default:
            if (a3 != 114)
            {
              return 0;
            }

            result = 0x800000;
            break;
        }

        break;
    }
  }

  else if (a3 <= 110)
  {
    if (a3 == 104)
    {
      return 32;
    }

    else if (a3 == 105)
    {
      return 256;
    }

    else
    {
      return 0;
    }
  }

  else if (a3 == 111)
  {
    return 0x100000;
  }

  else if (a3 == 112)
  {
    return 4096;
  }

  else
  {
    return 0x400000;
  }

  return result;
}

- (void)_updateWithData:(id)a3 force:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (!v6)
  {
    v7 = [(STUIStatusBar *)self->_statusBar currentData];

    if (!v7)
    {
      goto LABEL_15;
    }
  }

  v16 = 0;
  v8 = [(STUIStatusBar_Wrapper *)self styleDelegate];

  if (v8)
  {
    v15 = 0;
    [(STUIStatusBar *)self->_statusBar style];
    [(STUIStatusBar_Wrapper *)self _getStyle:0 andActiveOverride:&v16 andActiveBackgroundActivity:&v15 forRequestedStyle:_UIStatusBarStyleFromResolvedStyle() updatingBackgroundActivity:0];
    v9 = v15;
    if (v9)
    {
      v10 = v9;
      [(STUIStatusBar_Wrapper *)self setActiveBackgroundActivity:v9];
      goto LABEL_9;
    }

    v11 = v16;
    if (!v16)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = [(STUIStatusBar_Wrapper *)self styleOverrides];
    v16 = v11;
    if (!v11)
    {
LABEL_7:
      v11 = [(STUIStatusBar_Wrapper *)self _implicitStyleOverrideForStyle:[(STUIStatusBar_Wrapper *)self _requestStyle]];
      v16 = v11;
    }
  }

  [(STUIStatusBar_Wrapper *)self setActiveStyleOverride:v11];
  v10 = 0;
LABEL_9:
  v12 = [(STUIStatusBar_Wrapper *)self activeStyleOverride];
  v13 = [(STUIStatusBar_Wrapper *)self styleDelegate];
  v14 = [(STUIStatusBar_Wrapper *)self _effectiveDataFromData:v6 activeOverride:v12 activeBackgroundActivity:v10 canUpdateBackgroundActivity:v13 != 0];

  if (v14 || v4)
  {
    if (!v14)
    {
      v14 = objc_alloc_init(MEMORY[0x277D6BA48]);
    }

    [(STUIStatusBar *)self->_statusBar updateWithData:v14];
  }

LABEL_15:
}

- (void)_requestStyle:(int64_t)a3 partStyles:(id)a4 legibilityStyle:(int64_t)a5 foregroundColor:(id)a6 animationParameters:(id)a7 forced:(BOOL)a8
{
  v8 = a8;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  if (a3 || ([(STUIStatusBar_Wrapper *)self _requestedResolvedStyle]& 0x3F) != 0)
  {
    [(STUIStatusBar_Wrapper *)self _setRequestedResolvedStyle:a3];
  }

  else
  {
    a3 = [(STUIStatusBar_Wrapper *)self _requestedResolvedStyle];
  }

  v17 = _UIStatusBarStyleFromResolvedStyle();
  v18 = [(STUIStatusBar_Wrapper *)self manager];
  if (!v18 || (v19 = v18, -[STUIStatusBar_Wrapper manager](self, "manager"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 statusBar:self shouldRequestStyle:v17 animationParameters:v16 forced:v8], v20, v19, v21))
  {
    v22 = [(STUIStatusBar_Wrapper *)self styleForRequestedStyle:[(STUIStatusBar_Wrapper *)self _effectiveStyleFromStyle:v17]];
    if (a5)
    {
      _UIStatusBarStyleFromLegibilityStyle();
    }

    else if (v22 == v17)
    {
LABEL_10:
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __109__STUIStatusBar_Wrapper__requestStyle_partStyles_legibilityStyle_foregroundColor_animationParameters_forced___block_invoke;
      v23[3] = &unk_279D38600;
      v26 = a3;
      v23[4] = self;
      v24 = v15;
      v25 = v14;
      [(STUIStatusBar_Wrapper *)self _performAnimations:v23 withParameters:v16 completion:0];

      goto LABEL_11;
    }

    a3 = _UIStatusBarResolvedStyleFromStyle();
    goto LABEL_10;
  }

LABEL_11:
}

- (void)requestResolvedStyle:(int64_t)a3
{
  v5 = [(STUIStatusBar_Wrapper *)self legibilityStyle];
  v7 = [(STUIStatusBar_Wrapper *)self foregroundColor];
  v6 = [objc_alloc(MEMORY[0x277D75AA0]) initWithDefaultParameters];
  [(STUIStatusBar_Wrapper *)self _requestStyle:a3 partStyles:0 legibilityStyle:v5 foregroundColor:v7 animationParameters:v6 forced:0];
}

- (void)_requestStyle:(int64_t)a3 partStyles:(id)a4 animationParameters:(id)a5 forced:(BOOL)a6
{
  v6 = a6;
  v9 = a5;
  v10 = a4;
  v11 = _UIStatusBarResolvedStyleFromStyle();
  v12 = [(STUIStatusBar_Wrapper *)self legibilityStyle];
  v13 = [(STUIStatusBar_Wrapper *)self foregroundColor];
  [(STUIStatusBar_Wrapper *)self _requestStyle:v11 partStyles:v10 legibilityStyle:v12 foregroundColor:v13 animationParameters:v9 forced:v6];
}

- (int64_t)currentStyle
{
  [(STUIStatusBar *)self->_statusBar style];

  return _UIStatusBarStyleFromResolvedStyle();
}

- (void)setStyleRequest:(id)a3 animationParameters:(id)a4
{
  v11.receiver = self;
  v11.super_class = STUIStatusBar_Wrapper;
  v6 = a4;
  v7 = a3;
  [(STUIStatusBar_Wrapper *)&v11 setStyleRequest:v7 animationParameters:v6];
  v8 = [v7 resolvedStyle];
  v9 = [v7 legibilityStyle];
  v10 = [v7 foregroundColor];

  [(STUIStatusBar_Wrapper *)self _requestStyle:v8 partStyles:0 legibilityStyle:v9 foregroundColor:v10 animationParameters:v6 forced:0];
}

- (void)setForegroundColor:(id)a3 animationParameters:(id)a4
{
  v8.receiver = self;
  v8.super_class = STUIStatusBar_Wrapper;
  v6 = a4;
  v7 = a3;
  [(STUIStatusBar_Wrapper *)&v8 setForegroundColor:v7 animationParameters:v6];
  [(STUIStatusBar_Wrapper *)self _requestStyle:[(STUIStatusBar_Wrapper *)self _requestedResolvedStyle:v8.receiver] partStyles:0 legibilityStyle:[(STUIStatusBar_Wrapper *)self legibilityStyle] foregroundColor:v7 animationParameters:v6 forced:0];
}

- (void)setForegroundAlpha:(double)a3 animationParameters:(id)a4
{
  v8.receiver = self;
  v8.super_class = STUIStatusBar_Wrapper;
  v6 = a4;
  [(STUIStatusBar_Wrapper *)&v8 setForegroundAlpha:v6 animationParameters:a3];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__STUIStatusBar_Wrapper_setForegroundAlpha_animationParameters___block_invoke;
  v7[3] = &unk_279D38628;
  v7[4] = self;
  *&v7[5] = a3;
  [(STUIStatusBar_Wrapper *)self _performAnimations:v7 withParameters:v6 completion:0];
}

- (void)setLegibilityStyle:(int64_t)a3 animationParameters:(id)a4
{
  v9.receiver = self;
  v9.super_class = STUIStatusBar_Wrapper;
  v6 = a4;
  [(STUIStatusBar_Wrapper *)&v9 setLegibilityStyle:a3 animationParameters:v6];
  v7 = [(STUIStatusBar_Wrapper *)self _requestedResolvedStyle:v9.receiver];
  v8 = [(STUIStatusBar_Wrapper *)self foregroundColor];
  [(STUIStatusBar_Wrapper *)self _requestStyle:v7 partStyles:0 legibilityStyle:a3 foregroundColor:v8 animationParameters:v6 forced:0];
}

- (void)setAvoidanceFrame:(CGRect)a3 animationSettings:(id)a4 options:(unint64_t)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12.receiver = self;
  v12.super_class = STUIStatusBar_Wrapper;
  v11 = a4;
  [(STUIStatusBar_Wrapper *)&v12 setAvoidanceFrame:v11 animationSettings:a5 options:x, y, width, height];
  [(STUIStatusBar *)self->_statusBar setAvoidanceFrame:v11 animationSettings:a5 options:x, y, width, height, v12.receiver, v12.super_class];
}

- (void)setMode:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = STUIStatusBar_Wrapper;
  [(STUIStatusBar_Wrapper *)&v5 setMode:?];
  [(STUIStatusBar *)self->_statusBar setMode:a3];
}

- (id)clockFont
{
  v2 = [(STUIStatusBar *)self->_statusBar visualProvider];
  v3 = [v2 clockFont];

  return v3;
}

- (void)setOrientation:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = STUIStatusBar_Wrapper;
  [(STUIStatusBar_Wrapper *)&v5 setOrientation:?];
  [(STUIStatusBar *)self->_statusBar setOrientation:a3];
}

- (void)jiggleLockIcon
{
  v6 = objc_alloc_init(MEMORY[0x277D6BA20]);
  v3 = [(STUIStatusBar *)self->_statusBar currentData];
  v4 = [v3 lockEntry];

  if ([v4 isEnabled])
  {
    v5 = [MEMORY[0x277D6BAC8] entryWithUnlockFailureCount:{objc_msgSend(v4, "unlockFailureCount") + 1}];

    v4 = v5;
  }

  [v6 setLockEntry:v4];
  [(STUIStatusBar *)self->_statusBar updateWithData:v6];
}

- (UIOffset)offsetForPartWithIdentifier:(id)a3
{
  [(STUIStatusBar *)self->_statusBar offsetForPartWithIdentifier:a3];
  result.vertical = v4;
  result.horizontal = v3;
  return result;
}

- (void)setHidden:(BOOL)a3 animationParameters:(id)a4
{
  v4 = a3;
  statusBar = self->_statusBar;
  v7 = a4;
  [(STUIStatusBar *)statusBar setHidden:v4 animationParameters:v7];
  v8.receiver = self;
  v8.super_class = STUIStatusBar_Wrapper;
  [(STUIStatusBar_Wrapper *)&v8 setHidden:v4 animationParameters:v7];
}

- (CGRect)frameForPartWithIdentifier:(id)a3
{
  v4 = a3;
  [(STUIStatusBar_Wrapper *)self layoutIfNeeded];
  [(STUIStatusBar *)self->_statusBar frameForPartWithIdentifier:v4];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)activeBackgroundActivitiesDidUpdate:(id)a3
{
  v4 = [a3 copy];
  backgroundActivities = self->_backgroundActivities;
  self->_backgroundActivities = v4;

  [(STUIStatusBar_Wrapper *)self forceUpdate:1];
}

- (void)_getStyle:(int64_t *)a3 andActiveOverride:(unint64_t *)a4 andActiveBackgroundActivity:(id *)a5 forRequestedStyle:(int64_t)a6 updatingBackgroundActivity:(BOOL)a7
{
  v12 = [(STUIStatusBar_Wrapper *)self styleDelegate:a3];
  if (objc_opt_respondsToSelector())
  {
    v14 = a6 == 306 || (a6 & 0xFFFFFFFFFFFFFFFELL) == 108;
    v15 = [(STUIStatusBar_Wrapper *)self backgroundActivities];
    v16 = [v12 statusBar:self effectiveBackgroundActivitiesForBackgroundActiviesWithIdentifiers:v15];

    v17 = [MEMORY[0x277D6B920] sharedInstance];
    v18 = [v17 resolvedBackgroundActivityFromBackgroundActivities:v16 inPrecedenceScope:v14];

    if (a4)
    {
      *a4 = 0;
    }

    if (a5)
    {
      v19 = v18;
      *a5 = v18;
    }

    if (a3)
    {
      *a3 = a6;
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = STUIStatusBar_Wrapper;
    [(STUIStatusBar_Wrapper *)&v20 _getStyle:a3 andActiveOverride:a4 forRequestedStyle:a6];
  }
}

- (void)forceUpdate:(BOOL)a3
{
  if (a3)
  {

    [(STUIStatusBar_Wrapper *)self _updateWithData:0 force:1];
  }

  else
  {
    v5[5] = v3;
    v5[6] = v4;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __37__STUIStatusBar_Wrapper_forceUpdate___block_invoke;
    v5[3] = &unk_279D37F00;
    v5[4] = self;
    [MEMORY[0x277D75D18] performWithoutAnimation:v5];
  }
}

- (void)forceUpdateData:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277D75A98] getStatusBarData];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    while (*(v5 + v7) != 1)
    {
      if (++v7 == 52)
      {
        return;
      }
    }

    [(STUIStatusBar_Wrapper *)self _updateSemanticContentAttributeFromLegacyData:v5];
    v8 = [(STUIStatusBar_Wrapper *)self _dataFromLegacyData:v6];
    v9 = v8;
    if (v3)
    {
      [(STUIStatusBar_Wrapper *)self _updateWithData:v8 force:0];
    }

    else
    {
      v10 = MEMORY[0x277D75D18];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __41__STUIStatusBar_Wrapper_forceUpdateData___block_invoke;
      v11[3] = &unk_279D38150;
      v11[4] = self;
      v12 = v8;
      [v10 performWithoutAnimation:v11];
    }
  }
}

- (void)statusBarServer:(id)a3 didReceiveStatusBarData:(id *)a4 withActions:(int)a5
{
  [(STUIStatusBar_Wrapper *)self _updateSemanticContentAttributeFromLegacyData:a4];
  v7 = [(STUIStatusBar_Wrapper *)self _dataFromLegacyData:a4];
  [(STUIStatusBar_Wrapper *)self _updateWithData:v7 force:0];
}

- (void)statusBarServer:(id)a3 didReceiveStyleOverrides:(unint64_t)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(STUIStatusBar_Wrapper *)self styleOverrides]== a4)
  {
    v7 = _STUIStatusBar_BackgroundActivity_Log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v10 = a4;
      _os_log_impl(&dword_26C4DD000, v7, OS_LOG_TYPE_DEFAULT, "Duplicate StatusBar_Modern overrides receieved: %llu", buf, 0xCu);
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = STUIStatusBar_Wrapper;
    [(STUIStatusBar_Wrapper *)&v8 statusBarServer:v6 didReceiveStyleOverrides:a4];
    [(STUIStatusBar_Wrapper *)self forceUpdate:1];
  }
}

- (void)statusBarStateProvider:(id)a3 didPostStatusBarData:(id *)a4 withActions:(int)a5
{
  [(STUIStatusBar_Wrapper *)self _updateSemanticContentAttributeFromLegacyData:a4];
  v7 = [(STUIStatusBar_Wrapper *)self _dataFromLegacyData:a4];
  [(STUIStatusBar_Wrapper *)self _updateWithData:v7 force:0];
}

- (CGSize)intrinsicContentSize
{
  [(STUIStatusBar *)self->_statusBar intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

@end