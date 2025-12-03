@interface STUIStatusBar_Wrapper
+ (double)_heightForStyle:(int64_t)style orientation:(int64_t)orientation forStatusBarFrame:(BOOL)frame inWindow:(id)window isAzulBLinked:(BOOL)linked;
+ (int64_t)_defaultStyleForRequestedStyle:(int64_t)style styleOverrides:(unint64_t)overrides activeStyleOverride:(unint64_t *)override;
- (CGRect)frameForPartWithIdentifier:(id)identifier;
- (CGSize)intrinsicContentSize;
- (UIOffset)offsetForPartWithIdentifier:(id)identifier;
- (id)_dataFromLegacyData:(id *)data;
- (id)_effectiveDataFromData:(id)data activeOverride:(unint64_t)override activeBackgroundActivity:(id)activity canUpdateBackgroundActivity:(BOOL)backgroundActivity;
- (id)_initWithFrame:(CGRect)frame showForegroundView:(BOOL)view wantsServer:(BOOL)server inProcessStateProvider:(id)provider;
- (id)clockFont;
- (int64_t)_effectiveStyleFromStyle:(int64_t)style;
- (int64_t)currentStyle;
- (unint64_t)_implicitStyleOverrideForStyle:(int64_t)style;
- (void)_getStyle:(int64_t *)style andActiveOverride:(unint64_t *)override andActiveBackgroundActivity:(id *)activity forRequestedStyle:(int64_t)requestedStyle updatingBackgroundActivity:(BOOL)backgroundActivity;
- (void)_requestStyle:(int64_t)style partStyles:(id)styles animationParameters:(id)parameters forced:(BOOL)forced;
- (void)_requestStyle:(int64_t)style partStyles:(id)styles legibilityStyle:(int64_t)legibilityStyle foregroundColor:(id)color animationParameters:(id)parameters forced:(BOOL)forced;
- (void)_updateSemanticContentAttributeFromLegacyData:(id *)data;
- (void)_updateWithData:(id)data force:(BOOL)force;
- (void)activeBackgroundActivitiesDidUpdate:(id)update;
- (void)dealloc;
- (void)forceUpdate:(BOOL)update;
- (void)forceUpdateData:(BOOL)data;
- (void)jiggleLockIcon;
- (void)layoutSubviews;
- (void)requestResolvedStyle:(int64_t)style;
- (void)setAvoidanceFrame:(CGRect)frame animationSettings:(id)settings options:(unint64_t)options;
- (void)setForegroundAlpha:(double)alpha animationParameters:(id)parameters;
- (void)setForegroundColor:(id)color animationParameters:(id)parameters;
- (void)setHidden:(BOOL)hidden animationParameters:(id)parameters;
- (void)setLegibilityStyle:(int64_t)style animationParameters:(id)parameters;
- (void)setMode:(int64_t)mode;
- (void)setOrientation:(int64_t)orientation;
- (void)setStyleRequest:(id)request animationParameters:(id)parameters;
- (void)statusBarServer:(id)server didReceiveStatusBarData:(id *)data withActions:(int)actions;
- (void)statusBarServer:(id)server didReceiveStyleOverrides:(unint64_t)overrides;
- (void)statusBarStateProvider:(id)provider didPostStatusBarData:(id *)data withActions:(int)actions;
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
  mEMORY[0x277D6B920] = [MEMORY[0x277D6B920] sharedInstance];
  [mEMORY[0x277D6B920] removeBackgroundActivityClient:self];

  v4.receiver = self;
  v4.super_class = STUIStatusBar_Wrapper;
  [(STUIStatusBar_Wrapper *)&v4 dealloc];
}

- (id)_initWithFrame:(CGRect)frame showForegroundView:(BOOL)view wantsServer:(BOOL)server inProcessStateProvider:(id)provider
{
  serverCopy = server;
  viewCopy = view;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  providerCopy = provider;
  v24.receiver = self;
  v24.super_class = STUIStatusBar_Wrapper;
  height = [(STUIStatusBar_Wrapper *)&v24 _initWithFrame:viewCopy showForegroundView:serverCopy wantsServer:providerCopy inProcessStateProvider:x, y, width, height];
  if (height)
  {
    v15 = [[STUIStatusBar alloc] initWithStyle:0];
    [height addSubview:v15];
    [height _setRequestedStyle:0];
    objc_initWeak(&location, height);
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __94__STUIStatusBar_Wrapper__initWithFrame_showForegroundView_wantsServer_inProcessStateProvider___block_invoke;
    v21 = &unk_279D385B0;
    objc_copyWeak(&v22, &location);
    [(STUIStatusBar *)v15 setRegionActionValidationBlock:&v18];
    [height setStatusBar:{v15, v18, v19, v20, v21}];
    mEMORY[0x277D6B920] = [MEMORY[0x277D6B920] sharedInstance];
    [mEMORY[0x277D6B920] addBackgroundActivityClient:height];

    [height _evaluateServerRegistration];
    [height setNeedsLayout];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return height;
}

+ (double)_heightForStyle:(int64_t)style orientation:(int64_t)orientation forStatusBarFrame:(BOOL)frame inWindow:(id)window isAzulBLinked:(BOOL)linked
{
  linkedCopy = linked;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [STUIStatusBar intrinsicContentSizeForTargetScreen:mainScreen orientation:orientation onLockScreen:style == 306 isAzulBLinked:linkedCopy];
  v12 = v11;

  return v12;
}

+ (int64_t)_defaultStyleForRequestedStyle:(int64_t)style styleOverrides:(unint64_t)overrides activeStyleOverride:(unint64_t *)override
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___STUIStatusBar_Wrapper;
  objc_msgSendSuper2(&v7, sel__defaultStyleForRequestedStyle_styleOverrides_activeStyleOverride_, style, overrides, override);
  return style;
}

- (void)_updateSemanticContentAttributeFromLegacyData:(id *)data
{
  if ((*(data + 2536) & 2) != 0)
  {
    v3 = 4;
  }

  else
  {
    v3 = 3;
  }

  [(STUIStatusBar *)self->_statusBar setSemanticContentAttribute:v3];
}

- (id)_dataFromLegacyData:(id *)data
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(STUIStatusBar_Wrapper *)self localDataOverrides])
  {
    memset(&v9[30], 0, 32);
    [MEMORY[0x277D75A78] getData:v9 forRequestedData:data withOverrides:{-[STUIStatusBar_Wrapper localDataOverrides](self, "localDataOverrides", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)}];
    currentData = [(STUIStatusBar *)self->_statusBar currentData];
    dataCopy = v9;
  }

  else
  {
    currentData = [(STUIStatusBar *)self->_statusBar currentData];
    dataCopy = data;
  }

  v7 = [STUIStatusBarDataConverter convertData:dataCopy fromReferenceData:currentData];

  return v7;
}

- (int64_t)_effectiveStyleFromStyle:(int64_t)style
{
  if (style > 108)
  {
    if (style <= 301)
    {
      if (style <= 299)
      {
        if (style == 109)
        {
          return 3;
        }

        if (style != 110)
        {
          goto LABEL_28;
        }

        return style;
      }

      if (style != 300)
      {
        return 1;
      }
    }

    else
    {
      if (style <= 303)
      {
        return 1;
      }

      if (style != 304 && style != 305)
      {
        if (style != 306)
        {
          goto LABEL_28;
        }

        return 1;
      }
    }

    return 0;
  }

  if (style > 102)
  {
    if (style <= 106)
    {
      if (style != 103 && style != 106)
      {
        goto LABEL_28;
      }

      return 1;
    }

    return style != 107;
  }

  if (style <= 0x33)
  {
    if (((1 << style) & 0xB) == 0)
    {
      if (((1 << style) & 0x8000000000004) == 0)
      {
        goto LABEL_28;
      }

      return 1;
    }

    return style;
  }

LABEL_28:
  [(STUIStatusBar *)self->_statusBar style];

  return _UIStatusBarStyleFromResolvedStyle();
}

- (id)_effectiveDataFromData:(id)data activeOverride:(unint64_t)override activeBackgroundActivity:(id)activity canUpdateBackgroundActivity:(BOOL)backgroundActivity
{
  backgroundActivityCopy = backgroundActivity;
  dataCopy = data;
  activityCopy = activity;
  v12 = dataCopy;
  v13 = activityCopy;
  if (activityCopy)
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
    backgroundActivityIdentifier = [0 backgroundActivityIdentifier];
    v23 = [v21 stui_getDoubleHeightStatusStringBackgroundActivityWithIdentifier:backgroundActivityIdentifier];
    disabledEntry = [v20 entryWithBackgroundActivityIdentifier:v16 displayStartDate:v23 detailString:v19];

    if (backgroundActivityCopy)
    {
      goto LABEL_102;
    }

    goto LABEL_103;
  }

  if (override >= 0x200000)
  {
    if (override <= 0x7FFFFFFF)
    {
      if (override <= 0x3FFFFFF)
      {
        if (override < 0x800000)
        {
          if (override == 0x200000)
          {
            v14 = MEMORY[0x277D6BC78];
            goto LABEL_97;
          }

          if (override == 0x400000)
          {
            v14 = MEMORY[0x277D6BBF8];
            goto LABEL_97;
          }
        }

        else
        {
          switch(override)
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

      if (override <= 0xFFFFFFF)
      {
        if (override == 0x4000000)
        {
          v14 = MEMORY[0x277D6BC40];
          goto LABEL_97;
        }

        if (override == 0x8000000)
        {
          v14 = MEMORY[0x277D6BC10];
          goto LABEL_97;
        }

        goto LABEL_112;
      }

      if (override == 0x10000000)
      {
        v14 = MEMORY[0x277D6BD08];
        goto LABEL_97;
      }

      if (override == 0x20000000)
      {
        v14 = MEMORY[0x277D6BCB0];
        goto LABEL_97;
      }

      v15 = 0x40000000;
    }

    else
    {
      if (override > 0xFFFFFFFFFLL)
      {
        if (override > 0x7FFFFFFFFFLL)
        {
          switch(override)
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
          switch(override)
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

      if (override > 0x1FFFFFFFFLL)
      {
        if (override != 0x200000000)
        {
          if (override == 0x400000000)
          {
            v14 = MEMORY[0x277D6BCA0];
            goto LABEL_97;
          }

          if (override == 0x800000000)
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

      if (override == 0x80000000)
      {
        goto LABEL_74;
      }

      v15 = 0x100000000;
    }

    if (override == v15)
    {
      v14 = MEMORY[0x277D6BCD8];
      goto LABEL_97;
    }

    goto LABEL_112;
  }

  if (override > 2047)
  {
    if (override >= 0x10000)
    {
      if (override < 0x40000)
      {
        if (override == 0x10000)
        {
          v14 = MEMORY[0x277D6BC28];
          goto LABEL_97;
        }

        if (override == 0x20000)
        {
          v14 = MEMORY[0x277D6BD20];
          goto LABEL_97;
        }
      }

      else
      {
        switch(override)
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

    else if (override < 0x2000)
    {
      if (override == 2048)
      {
        v14 = MEMORY[0x277D6BC00];
        goto LABEL_97;
      }

      if (override == 4096)
      {
        v14 = MEMORY[0x277D6BC20];
        goto LABEL_97;
      }
    }

    else
    {
      switch(override)
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

  else if (override > 63)
  {
    if (override <= 255)
    {
      if (override == 64 || override == 128)
      {
        v14 = MEMORY[0x277D6BC80];
        goto LABEL_97;
      }
    }

    else
    {
      switch(override)
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

  else if (override <= 7)
  {
    if (override == 1)
    {
      v14 = MEMORY[0x277D6BC60];
      goto LABEL_97;
    }

    if (override == 4)
    {
      v14 = MEMORY[0x277D6BCA8];
      goto LABEL_97;
    }
  }

  else
  {
    switch(override)
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
  disabledEntry = [MEMORY[0x277D6BA58] disabledEntry];
  v16 = 0;
  if (backgroundActivityCopy)
  {
LABEL_102:
    objc_storeStrong(&_effectiveDataFromData_activeOverride_activeBackgroundActivity_canUpdateBackgroundActivity__lastBackgroundActivityEntry, disabledEntry);
  }

LABEL_103:
  currentData = [(STUIStatusBar *)self->_statusBar currentData];
  backgroundActivityEntry = [currentData backgroundActivityEntry];

  immutableCopy = v12;
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
    [v28 setBackgroundActivityEntry:disabledEntry];
    immutableCopy = [v29 immutableCopy];
  }

  return immutableCopy;
}

- (unint64_t)_implicitStyleOverrideForStyle:(int64_t)style
{
  if (style > 113)
  {
    result = 0x20000000;
    switch(style)
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
        switch(style)
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
            if (style != 114)
            {
              return 0;
            }

            result = 0x800000;
            break;
        }

        break;
    }
  }

  else if (style <= 110)
  {
    if (style == 104)
    {
      return 32;
    }

    else if (style == 105)
    {
      return 256;
    }

    else
    {
      return 0;
    }
  }

  else if (style == 111)
  {
    return 0x100000;
  }

  else if (style == 112)
  {
    return 4096;
  }

  else
  {
    return 0x400000;
  }

  return result;
}

- (void)_updateWithData:(id)data force:(BOOL)force
{
  forceCopy = force;
  dataCopy = data;
  if (!dataCopy)
  {
    currentData = [(STUIStatusBar *)self->_statusBar currentData];

    if (!currentData)
    {
      goto LABEL_15;
    }
  }

  v16 = 0;
  styleDelegate = [(STUIStatusBar_Wrapper *)self styleDelegate];

  if (styleDelegate)
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

    styleOverrides = v16;
    if (!v16)
    {
      goto LABEL_7;
    }
  }

  else
  {
    styleOverrides = [(STUIStatusBar_Wrapper *)self styleOverrides];
    v16 = styleOverrides;
    if (!styleOverrides)
    {
LABEL_7:
      styleOverrides = [(STUIStatusBar_Wrapper *)self _implicitStyleOverrideForStyle:[(STUIStatusBar_Wrapper *)self _requestStyle]];
      v16 = styleOverrides;
    }
  }

  [(STUIStatusBar_Wrapper *)self setActiveStyleOverride:styleOverrides];
  v10 = 0;
LABEL_9:
  activeStyleOverride = [(STUIStatusBar_Wrapper *)self activeStyleOverride];
  styleDelegate2 = [(STUIStatusBar_Wrapper *)self styleDelegate];
  v14 = [(STUIStatusBar_Wrapper *)self _effectiveDataFromData:dataCopy activeOverride:activeStyleOverride activeBackgroundActivity:v10 canUpdateBackgroundActivity:styleDelegate2 != 0];

  if (v14 || forceCopy)
  {
    if (!v14)
    {
      v14 = objc_alloc_init(MEMORY[0x277D6BA48]);
    }

    [(STUIStatusBar *)self->_statusBar updateWithData:v14];
  }

LABEL_15:
}

- (void)_requestStyle:(int64_t)style partStyles:(id)styles legibilityStyle:(int64_t)legibilityStyle foregroundColor:(id)color animationParameters:(id)parameters forced:(BOOL)forced
{
  forcedCopy = forced;
  stylesCopy = styles;
  colorCopy = color;
  parametersCopy = parameters;
  if (style || ([(STUIStatusBar_Wrapper *)self _requestedResolvedStyle]& 0x3F) != 0)
  {
    [(STUIStatusBar_Wrapper *)self _setRequestedResolvedStyle:style];
  }

  else
  {
    style = [(STUIStatusBar_Wrapper *)self _requestedResolvedStyle];
  }

  v17 = _UIStatusBarStyleFromResolvedStyle();
  manager = [(STUIStatusBar_Wrapper *)self manager];
  if (!manager || (v19 = manager, -[STUIStatusBar_Wrapper manager](self, "manager"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 statusBar:self shouldRequestStyle:v17 animationParameters:parametersCopy forced:forcedCopy], v20, v19, v21))
  {
    v22 = [(STUIStatusBar_Wrapper *)self styleForRequestedStyle:[(STUIStatusBar_Wrapper *)self _effectiveStyleFromStyle:v17]];
    if (legibilityStyle)
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
      styleCopy = style;
      v23[4] = self;
      v24 = colorCopy;
      v25 = stylesCopy;
      [(STUIStatusBar_Wrapper *)self _performAnimations:v23 withParameters:parametersCopy completion:0];

      goto LABEL_11;
    }

    style = _UIStatusBarResolvedStyleFromStyle();
    goto LABEL_10;
  }

LABEL_11:
}

- (void)requestResolvedStyle:(int64_t)style
{
  legibilityStyle = [(STUIStatusBar_Wrapper *)self legibilityStyle];
  foregroundColor = [(STUIStatusBar_Wrapper *)self foregroundColor];
  initWithDefaultParameters = [objc_alloc(MEMORY[0x277D75AA0]) initWithDefaultParameters];
  [(STUIStatusBar_Wrapper *)self _requestStyle:style partStyles:0 legibilityStyle:legibilityStyle foregroundColor:foregroundColor animationParameters:initWithDefaultParameters forced:0];
}

- (void)_requestStyle:(int64_t)style partStyles:(id)styles animationParameters:(id)parameters forced:(BOOL)forced
{
  forcedCopy = forced;
  parametersCopy = parameters;
  stylesCopy = styles;
  v11 = _UIStatusBarResolvedStyleFromStyle();
  legibilityStyle = [(STUIStatusBar_Wrapper *)self legibilityStyle];
  foregroundColor = [(STUIStatusBar_Wrapper *)self foregroundColor];
  [(STUIStatusBar_Wrapper *)self _requestStyle:v11 partStyles:stylesCopy legibilityStyle:legibilityStyle foregroundColor:foregroundColor animationParameters:parametersCopy forced:forcedCopy];
}

- (int64_t)currentStyle
{
  [(STUIStatusBar *)self->_statusBar style];

  return _UIStatusBarStyleFromResolvedStyle();
}

- (void)setStyleRequest:(id)request animationParameters:(id)parameters
{
  v11.receiver = self;
  v11.super_class = STUIStatusBar_Wrapper;
  parametersCopy = parameters;
  requestCopy = request;
  [(STUIStatusBar_Wrapper *)&v11 setStyleRequest:requestCopy animationParameters:parametersCopy];
  resolvedStyle = [requestCopy resolvedStyle];
  legibilityStyle = [requestCopy legibilityStyle];
  foregroundColor = [requestCopy foregroundColor];

  [(STUIStatusBar_Wrapper *)self _requestStyle:resolvedStyle partStyles:0 legibilityStyle:legibilityStyle foregroundColor:foregroundColor animationParameters:parametersCopy forced:0];
}

- (void)setForegroundColor:(id)color animationParameters:(id)parameters
{
  v8.receiver = self;
  v8.super_class = STUIStatusBar_Wrapper;
  parametersCopy = parameters;
  colorCopy = color;
  [(STUIStatusBar_Wrapper *)&v8 setForegroundColor:colorCopy animationParameters:parametersCopy];
  [(STUIStatusBar_Wrapper *)self _requestStyle:[(STUIStatusBar_Wrapper *)self _requestedResolvedStyle:v8.receiver] partStyles:0 legibilityStyle:[(STUIStatusBar_Wrapper *)self legibilityStyle] foregroundColor:colorCopy animationParameters:parametersCopy forced:0];
}

- (void)setForegroundAlpha:(double)alpha animationParameters:(id)parameters
{
  v8.receiver = self;
  v8.super_class = STUIStatusBar_Wrapper;
  parametersCopy = parameters;
  [(STUIStatusBar_Wrapper *)&v8 setForegroundAlpha:parametersCopy animationParameters:alpha];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__STUIStatusBar_Wrapper_setForegroundAlpha_animationParameters___block_invoke;
  v7[3] = &unk_279D38628;
  v7[4] = self;
  *&v7[5] = alpha;
  [(STUIStatusBar_Wrapper *)self _performAnimations:v7 withParameters:parametersCopy completion:0];
}

- (void)setLegibilityStyle:(int64_t)style animationParameters:(id)parameters
{
  v9.receiver = self;
  v9.super_class = STUIStatusBar_Wrapper;
  parametersCopy = parameters;
  [(STUIStatusBar_Wrapper *)&v9 setLegibilityStyle:style animationParameters:parametersCopy];
  v7 = [(STUIStatusBar_Wrapper *)self _requestedResolvedStyle:v9.receiver];
  foregroundColor = [(STUIStatusBar_Wrapper *)self foregroundColor];
  [(STUIStatusBar_Wrapper *)self _requestStyle:v7 partStyles:0 legibilityStyle:style foregroundColor:foregroundColor animationParameters:parametersCopy forced:0];
}

- (void)setAvoidanceFrame:(CGRect)frame animationSettings:(id)settings options:(unint64_t)options
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12.receiver = self;
  v12.super_class = STUIStatusBar_Wrapper;
  settingsCopy = settings;
  [(STUIStatusBar_Wrapper *)&v12 setAvoidanceFrame:settingsCopy animationSettings:options options:x, y, width, height];
  [(STUIStatusBar *)self->_statusBar setAvoidanceFrame:settingsCopy animationSettings:options options:x, y, width, height, v12.receiver, v12.super_class];
}

- (void)setMode:(int64_t)mode
{
  v5.receiver = self;
  v5.super_class = STUIStatusBar_Wrapper;
  [(STUIStatusBar_Wrapper *)&v5 setMode:?];
  [(STUIStatusBar *)self->_statusBar setMode:mode];
}

- (id)clockFont
{
  visualProvider = [(STUIStatusBar *)self->_statusBar visualProvider];
  clockFont = [visualProvider clockFont];

  return clockFont;
}

- (void)setOrientation:(int64_t)orientation
{
  v5.receiver = self;
  v5.super_class = STUIStatusBar_Wrapper;
  [(STUIStatusBar_Wrapper *)&v5 setOrientation:?];
  [(STUIStatusBar *)self->_statusBar setOrientation:orientation];
}

- (void)jiggleLockIcon
{
  v6 = objc_alloc_init(MEMORY[0x277D6BA20]);
  currentData = [(STUIStatusBar *)self->_statusBar currentData];
  lockEntry = [currentData lockEntry];

  if ([lockEntry isEnabled])
  {
    v5 = [MEMORY[0x277D6BAC8] entryWithUnlockFailureCount:{objc_msgSend(lockEntry, "unlockFailureCount") + 1}];

    lockEntry = v5;
  }

  [v6 setLockEntry:lockEntry];
  [(STUIStatusBar *)self->_statusBar updateWithData:v6];
}

- (UIOffset)offsetForPartWithIdentifier:(id)identifier
{
  [(STUIStatusBar *)self->_statusBar offsetForPartWithIdentifier:identifier];
  result.vertical = v4;
  result.horizontal = v3;
  return result;
}

- (void)setHidden:(BOOL)hidden animationParameters:(id)parameters
{
  hiddenCopy = hidden;
  statusBar = self->_statusBar;
  parametersCopy = parameters;
  [(STUIStatusBar *)statusBar setHidden:hiddenCopy animationParameters:parametersCopy];
  v8.receiver = self;
  v8.super_class = STUIStatusBar_Wrapper;
  [(STUIStatusBar_Wrapper *)&v8 setHidden:hiddenCopy animationParameters:parametersCopy];
}

- (CGRect)frameForPartWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(STUIStatusBar_Wrapper *)self layoutIfNeeded];
  [(STUIStatusBar *)self->_statusBar frameForPartWithIdentifier:identifierCopy];
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

- (void)activeBackgroundActivitiesDidUpdate:(id)update
{
  v4 = [update copy];
  backgroundActivities = self->_backgroundActivities;
  self->_backgroundActivities = v4;

  [(STUIStatusBar_Wrapper *)self forceUpdate:1];
}

- (void)_getStyle:(int64_t *)style andActiveOverride:(unint64_t *)override andActiveBackgroundActivity:(id *)activity forRequestedStyle:(int64_t)requestedStyle updatingBackgroundActivity:(BOOL)backgroundActivity
{
  v12 = [(STUIStatusBar_Wrapper *)self styleDelegate:style];
  if (objc_opt_respondsToSelector())
  {
    v14 = requestedStyle == 306 || (requestedStyle & 0xFFFFFFFFFFFFFFFELL) == 108;
    backgroundActivities = [(STUIStatusBar_Wrapper *)self backgroundActivities];
    v16 = [v12 statusBar:self effectiveBackgroundActivitiesForBackgroundActiviesWithIdentifiers:backgroundActivities];

    mEMORY[0x277D6B920] = [MEMORY[0x277D6B920] sharedInstance];
    v18 = [mEMORY[0x277D6B920] resolvedBackgroundActivityFromBackgroundActivities:v16 inPrecedenceScope:v14];

    if (override)
    {
      *override = 0;
    }

    if (activity)
    {
      v19 = v18;
      *activity = v18;
    }

    if (style)
    {
      *style = requestedStyle;
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = STUIStatusBar_Wrapper;
    [(STUIStatusBar_Wrapper *)&v20 _getStyle:style andActiveOverride:override forRequestedStyle:requestedStyle];
  }
}

- (void)forceUpdate:(BOOL)update
{
  if (update)
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

- (void)forceUpdateData:(BOOL)data
{
  dataCopy = data;
  getStatusBarData = [MEMORY[0x277D75A98] getStatusBarData];
  if (getStatusBarData)
  {
    v6 = getStatusBarData;
    v7 = 0;
    while (*(getStatusBarData + v7) != 1)
    {
      if (++v7 == 52)
      {
        return;
      }
    }

    [(STUIStatusBar_Wrapper *)self _updateSemanticContentAttributeFromLegacyData:getStatusBarData];
    v8 = [(STUIStatusBar_Wrapper *)self _dataFromLegacyData:v6];
    v9 = v8;
    if (dataCopy)
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

- (void)statusBarServer:(id)server didReceiveStatusBarData:(id *)data withActions:(int)actions
{
  [(STUIStatusBar_Wrapper *)self _updateSemanticContentAttributeFromLegacyData:data];
  v7 = [(STUIStatusBar_Wrapper *)self _dataFromLegacyData:data];
  [(STUIStatusBar_Wrapper *)self _updateWithData:v7 force:0];
}

- (void)statusBarServer:(id)server didReceiveStyleOverrides:(unint64_t)overrides
{
  v11 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  if ([(STUIStatusBar_Wrapper *)self styleOverrides]== overrides)
  {
    v7 = _STUIStatusBar_BackgroundActivity_Log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      overridesCopy = overrides;
      _os_log_impl(&dword_26C4DD000, v7, OS_LOG_TYPE_DEFAULT, "Duplicate StatusBar_Modern overrides receieved: %llu", buf, 0xCu);
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = STUIStatusBar_Wrapper;
    [(STUIStatusBar_Wrapper *)&v8 statusBarServer:serverCopy didReceiveStyleOverrides:overrides];
    [(STUIStatusBar_Wrapper *)self forceUpdate:1];
  }
}

- (void)statusBarStateProvider:(id)provider didPostStatusBarData:(id *)data withActions:(int)actions
{
  [(STUIStatusBar_Wrapper *)self _updateSemanticContentAttributeFromLegacyData:data];
  v7 = [(STUIStatusBar_Wrapper *)self _dataFromLegacyData:data];
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