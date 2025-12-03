@interface UIStatusBar_Modern
+ (double)_heightForStyle:(int64_t)style orientation:(int64_t)orientation forStatusBarFrame:(BOOL)frame inWindow:(id)window isAzulBLinked:(BOOL)linked;
+ (int64_t)_defaultStyleForRequestedStyle:(int64_t)style styleOverrides:(unint64_t)overrides activeStyleOverride:(unint64_t *)override;
- (CGRect)frameForPartWithIdentifier:(id)identifier;
- (CGSize)intrinsicContentSize;
- (UIOffset)offsetForPartWithIdentifier:(id)identifier;
- (id)_dataFromLegacyData:(id *)data;
- (id)_effectiveDataFromData:(id)data activeOverride:(unint64_t)override canUpdateBackgroundActivity:(BOOL)activity;
- (id)_initWithFrame:(CGRect)frame showForegroundView:(BOOL)view wantsServer:(BOOL)server inProcessStateProvider:(id)provider;
- (id)clockFont;
- (int64_t)_effectiveStyleFromStyle:(int64_t)style;
- (int64_t)currentStyle;
- (unint64_t)_implicitStyleOverrideForStyle:(int64_t)style;
- (void)_requestStyle:(int64_t)style partStyles:(id)styles animationParameters:(id)parameters forced:(BOOL)forced;
- (void)_requestStyle:(int64_t)style partStyles:(id)styles legibilityStyle:(int64_t)legibilityStyle foregroundColor:(id)color animationParameters:(id)parameters forced:(BOOL)forced;
- (void)_updateSemanticContentAttributeFromLegacyData:(id *)data;
- (void)_updateWithData:(id)data force:(BOOL)force;
- (void)forceUpdate:(BOOL)update;
- (void)forceUpdateData:(BOOL)data;
- (void)jiggleLockIcon;
- (void)layoutSubviews;
- (void)setAvoidanceFrame:(CGRect)frame animationSettings:(id)settings options:(unint64_t)options;
- (void)setForegroundAlpha:(double)alpha animationParameters:(id)parameters;
- (void)setForegroundColor:(id)color animationParameters:(id)parameters;
- (void)setLegibilityStyle:(int64_t)style animationParameters:(id)parameters;
- (void)setMode:(int64_t)mode;
- (void)setOrientation:(int64_t)orientation;
- (void)setStyleRequest:(id)request animationParameters:(id)parameters;
- (void)statusBarServer:(id)server didReceiveStatusBarData:(id *)data withActions:(int)actions;
- (void)statusBarServer:(id)server didReceiveStyleOverrides:(unint64_t)overrides;
- (void)statusBarStateProvider:(id)provider didPostStatusBarData:(id *)data withActions:(int)actions;
@end

@implementation UIStatusBar_Modern

- (id)_initWithFrame:(CGRect)frame showForegroundView:(BOOL)view wantsServer:(BOOL)server inProcessStateProvider:(id)provider
{
  serverCopy = server;
  viewCopy = view;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  providerCopy = provider;
  v23.receiver = self;
  v23.super_class = UIStatusBar_Modern;
  height = [(UIStatusBar_Base *)&v23 _initWithFrame:viewCopy showForegroundView:serverCopy wantsServer:providerCopy inProcessStateProvider:x, y, width, height];
  if (height)
  {
    v15 = [[_UIStatusBar alloc] initWithStyle:0];
    [height addSubview:v15];
    [height _setRequestedStyle:0];
    objc_initWeak(&location, height);
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __91__UIStatusBar_Modern__initWithFrame_showForegroundView_wantsServer_inProcessStateProvider___block_invoke;
    v20 = &unk_1E7122730;
    objc_copyWeak(&v21, &location);
    [(_UIStatusBar *)v15 setRegionActionValidationBlock:&v17];
    [height setStatusBar:{v15, v17, v18, v19, v20}];
    [height _evaluateServerRegistration];
    [height setNeedsLayout];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return height;
}

+ (double)_heightForStyle:(int64_t)style orientation:(int64_t)orientation forStatusBarFrame:(BOOL)frame inWindow:(id)window isAzulBLinked:(BOOL)linked
{
  linkedCopy = linked;
  mainScreen = [objc_opt_self() mainScreen];
  [_UIStatusBar intrinsicContentSizeForTargetScreen:mainScreen orientation:orientation onLockScreen:style == 306 isAzulBLinked:linkedCopy];
  v12 = v11;

  return v12;
}

+ (int64_t)_defaultStyleForRequestedStyle:(int64_t)style styleOverrides:(unint64_t)overrides activeStyleOverride:(unint64_t *)override
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___UIStatusBar_Modern;
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

  [(_UIStatusBar *)self->_statusBar setSemanticContentAttribute:v3];
}

- (id)_dataFromLegacyData:(id *)data
{
  v10 = *MEMORY[0x1E69E9840];
  if ([(UIStatusBar_Base *)self localDataOverrides])
  {
    memset(&v9[30], 0, 32);
    [UIStatusBar getData:v9 forRequestedData:data withOverrides:[(UIStatusBar_Base *)self localDataOverrides:0]];
    currentData = [(_UIStatusBar *)self->_statusBar currentData];
    dataCopy = v9;
  }

  else
  {
    currentData = [(_UIStatusBar *)self->_statusBar currentData];
    dataCopy = data;
  }

  v7 = [_UIStatusBarDataConverter convertData:dataCopy fromReferenceData:currentData];

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
  style = [(_UIStatusBar *)self->_statusBar style];

  return _UIStatusBarStyleFromResolvedStyle(style);
}

- (id)_effectiveDataFromData:(id)data activeOverride:(unint64_t)override canUpdateBackgroundActivity:(BOOL)activity
{
  activityCopy = activity;
  dataCopy = data;
  v9 = objc_alloc_init(_UIStatusBarDataBackgroundActivityEntry);
  v10 = v9;
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
            v11 = 31;
            goto LABEL_96;
          }

          if (override == 0x400000)
          {
            v11 = 27;
            goto LABEL_96;
          }
        }

        else
        {
          switch(override)
          {
            case 0x800000uLL:
              v11 = 28;
              goto LABEL_96;
            case 0x1000000uLL:
              v11 = 11;
              goto LABEL_96;
            case 0x2000000uLL:
              v11 = 12;
              goto LABEL_96;
          }
        }

        goto LABEL_113;
      }

      if (override <= 0xFFFFFFF)
      {
        if (override == 0x4000000)
        {
          v11 = 13;
          goto LABEL_96;
        }

        if (override == 0x8000000)
        {
          v11 = 2;
          goto LABEL_96;
        }

        goto LABEL_113;
      }

      if (override == 0x10000000)
      {
        v11 = 3;
        goto LABEL_96;
      }

      if (override == 0x20000000)
      {
        v11 = 0;
        goto LABEL_96;
      }

      v12 = 0x40000000;
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
              v11 = 5;
              goto LABEL_96;
            case 0x10000000000uLL:
              v11 = 21;
              goto LABEL_96;
            case 0x20000000000uLL:
              v11 = 16;
              goto LABEL_96;
          }
        }

        else
        {
          switch(override)
          {
            case 0x1000000000uLL:
              v11 = 8;
              goto LABEL_96;
            case 0x2000000000uLL:
              v11 = 9;
              goto LABEL_96;
            case 0x4000000000uLL:
              v11 = 4;
LABEL_96:
              [(_UIStatusBarDataBackgroundActivityEntry *)v9 setType:v11];
              goto LABEL_97;
          }
        }

        goto LABEL_113;
      }

      if (override > 0x1FFFFFFFFLL)
      {
        if (override != 0x200000000)
        {
          if (override == 0x400000000)
          {
            v11 = 22;
            goto LABEL_96;
          }

          if (override == 0x800000000)
          {
            v11 = 1;
            goto LABEL_96;
          }

          goto LABEL_113;
        }

LABEL_73:
        v11 = 20;
        goto LABEL_96;
      }

      if (override == 0x80000000)
      {
        goto LABEL_73;
      }

      v12 = 0x100000000;
    }

    if (override == v12)
    {
      v11 = 19;
      goto LABEL_96;
    }

    goto LABEL_113;
  }

  if (override > 2047)
  {
    if (override >= 0x10000)
    {
      if (override < 0x40000)
      {
        if (override == 0x10000)
        {
          v11 = 36;
          goto LABEL_96;
        }

        if (override == 0x20000)
        {
          v11 = 10;
          goto LABEL_96;
        }
      }

      else
      {
        switch(override)
        {
          case 0x40000uLL:
            v11 = 35;
            goto LABEL_96;
          case 0x80000uLL:
            v11 = 37;
            goto LABEL_96;
          case 0x100000uLL:
            v11 = 26;
            goto LABEL_96;
        }
      }
    }

    else if (override < 0x2000)
    {
      if (override == 2048)
      {
        v11 = 15;
        goto LABEL_96;
      }

      if (override == 4096)
      {
        v11 = 32;
        goto LABEL_96;
      }
    }

    else
    {
      switch(override)
      {
        case 0x2000uLL:
          v11 = 29;
          goto LABEL_96;
        case 0x4000uLL:
          v11 = 25;
          goto LABEL_96;
        case 0x8000uLL:
          v11 = 30;
          goto LABEL_96;
      }
    }
  }

  else if (override > 63)
  {
    if (override <= 255)
    {
      if (override == 64 || override == 128)
      {
        v11 = 14;
        goto LABEL_96;
      }
    }

    else
    {
      switch(override)
      {
        case 0x100uLL:
          v11 = 33;
          goto LABEL_96;
        case 0x200uLL:
          v11 = 23;
          goto LABEL_96;
        case 0x400uLL:
          v11 = 18;
          goto LABEL_96;
      }
    }
  }

  else if (override <= 7)
  {
    if (override == 1)
    {
      v11 = 6;
      goto LABEL_96;
    }

    if (override == 4)
    {
      v11 = 17;
      goto LABEL_96;
    }
  }

  else
  {
    switch(override)
    {
      case 8uLL:
        v11 = 34;
        goto LABEL_96;
      case 0x10uLL:
        v11 = 7;
        goto LABEL_96;
      case 0x20uLL:
        v11 = 24;
        goto LABEL_96;
    }
  }

LABEL_113:
  [(_UIStatusBarDataEntry *)v9 setEnabled:0];
LABEL_97:
  if ([(_UIStatusBarDataEntry *)v10 isEnabled])
  {
    v13 = [UIStatusBarServer getDoubleHeightStatusStringForStyle:[(UIStatusBar_Base *)UIStatusBar _defaultStyleForRequestedStyle:0 styleOverrides:override activeStyleOverride:0]];
    [(_UIStatusBarDataBackgroundActivityEntry *)v10 setDetailString:v13];

    if ([_effectiveDataFromData_activeOverride_canUpdateBackgroundActivity__lastBackgroundActivityEntry isEnabled] && (v14 = -[_UIStatusBarDataBackgroundActivityEntry type](v10, "type"), v14 == objc_msgSend(_effectiveDataFromData_activeOverride_canUpdateBackgroundActivity__lastBackgroundActivityEntry, "type")))
    {
      [_effectiveDataFromData_activeOverride_canUpdateBackgroundActivity__lastBackgroundActivityEntry displayStartDate];
    }

    else
    {
      v15 = CACurrentMediaTime();
    }

    [(_UIStatusBarDataBackgroundActivityEntry *)v10 setDisplayStartDate:v15];
  }

  if (activityCopy)
  {
    objc_storeStrong(&_effectiveDataFromData_activeOverride_canUpdateBackgroundActivity__lastBackgroundActivityEntry, v10);
  }

  currentData = [(_UIStatusBar *)self->_statusBar currentData];
  backgroundActivityEntry = [currentData backgroundActivityEntry];

  v18 = dataCopy;
  if (![(_UIStatusBarDataBackgroundActivityEntry *)v10 isEqual:backgroundActivityEntry])
  {
    if (dataCopy)
    {
      v18 = [(_UIStatusBarData *)dataCopy copy];
    }

    else
    {
      v18 = objc_alloc_init(_UIStatusBarData);
    }

    [(_UIStatusBarData *)v18 setBackgroundActivityEntry:v10];
  }

  return v18;
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
    currentData = [(_UIStatusBar *)self->_statusBar currentData];

    if (!currentData)
    {
      goto LABEL_11;
    }
  }

  styleOverrides = 0;
  styleDelegate = [(UIStatusBar_Base *)self styleDelegate];

  if (!styleDelegate)
  {
    styleOverrides = [(UIStatusBar_Base *)self styleOverrides];
    if (styleOverrides)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [(UIStatusBar_Base *)self _getStyle:0 andActiveOverride:&styleOverrides forRequestedStyle:_UIStatusBarStyleFromResolvedStyle([(_UIStatusBar *)self->_statusBar style])];
  if (!styleOverrides)
  {
LABEL_5:
    styleOverrides = [(UIStatusBar_Modern *)self _implicitStyleOverrideForStyle:[(UIStatusBar_Base *)self _requestStyle]];
  }

LABEL_6:
  [(UIStatusBar_Base *)self setActiveStyleOverride:?];
  activeStyleOverride = [(UIStatusBar_Base *)self activeStyleOverride];
  styleDelegate2 = [(UIStatusBar_Base *)self styleDelegate];
  v11 = [(UIStatusBar_Modern *)self _effectiveDataFromData:dataCopy activeOverride:activeStyleOverride canUpdateBackgroundActivity:styleDelegate2 != 0];

  if (v11 || forceCopy)
  {
    if (!v11)
    {
      v11 = objc_alloc_init(_UIStatusBarData);
    }

    [(_UIStatusBar *)self->_statusBar updateWithData:v11];
  }

LABEL_11:
}

- (void)_requestStyle:(int64_t)style partStyles:(id)styles legibilityStyle:(int64_t)legibilityStyle foregroundColor:(id)color animationParameters:(id)parameters forced:(BOOL)forced
{
  forcedCopy = forced;
  stylesCopy = styles;
  colorCopy = color;
  parametersCopy = parameters;
  manager = [(UIStatusBar_Base *)self manager];
  if (!manager || (v18 = manager, -[UIStatusBar_Base manager](self, "manager"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 statusBar:self shouldRequestStyle:style animationParameters:parametersCopy forced:forcedCopy], v19, v18, v20))
  {
    v21 = [(UIStatusBar_Base *)self styleForRequestedStyle:[(UIStatusBar_Modern *)self _effectiveStyleFromStyle:style]];
    if (legibilityStyle == 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = -1;
    }

    if (legibilityStyle == 2)
    {
      v22 = 3;
    }

    if (!legibilityStyle)
    {
      v22 = v21;
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __106__UIStatusBar_Modern__requestStyle_partStyles_legibilityStyle_foregroundColor_animationParameters_forced___block_invoke;
    v24[3] = &unk_1E7103E40;
    if (v22 == 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2 * (v22 == 3);
    }

    styleCopy = style;
    v28 = v23;
    v24[4] = self;
    v25 = colorCopy;
    v26 = stylesCopy;
    [(UIStatusBar_Base *)self _performAnimations:v24 withParameters:parametersCopy completion:0];
  }
}

- (void)_requestStyle:(int64_t)style partStyles:(id)styles animationParameters:(id)parameters forced:(BOOL)forced
{
  forcedCopy = forced;
  parametersCopy = parameters;
  stylesCopy = styles;
  legibilityStyle = [(UIStatusBar_Base *)self legibilityStyle];
  foregroundColor = [(UIStatusBar_Base *)self foregroundColor];
  [(UIStatusBar_Modern *)self _requestStyle:style partStyles:stylesCopy legibilityStyle:legibilityStyle foregroundColor:foregroundColor animationParameters:parametersCopy forced:forcedCopy];
}

- (int64_t)currentStyle
{
  style = [(_UIStatusBar *)self->_statusBar style];

  return _UIStatusBarStyleFromResolvedStyle(style);
}

- (void)setStyleRequest:(id)request animationParameters:(id)parameters
{
  v11.receiver = self;
  v11.super_class = UIStatusBar_Modern;
  parametersCopy = parameters;
  requestCopy = request;
  [(UIStatusBar_Base *)&v11 setStyleRequest:requestCopy animationParameters:parametersCopy];
  style = [requestCopy style];
  legibilityStyle = [requestCopy legibilityStyle];
  foregroundColor = [requestCopy foregroundColor];

  [(UIStatusBar_Modern *)self _requestStyle:style partStyles:0 legibilityStyle:legibilityStyle foregroundColor:foregroundColor animationParameters:parametersCopy forced:0];
}

- (void)setForegroundColor:(id)color animationParameters:(id)parameters
{
  v8.receiver = self;
  v8.super_class = UIStatusBar_Modern;
  parametersCopy = parameters;
  colorCopy = color;
  [(UIStatusBar_Base *)&v8 setForegroundColor:colorCopy animationParameters:parametersCopy];
  [(UIStatusBar_Modern *)self _requestStyle:[(UIStatusBar_Base *)self _requestStyle:v8.receiver] partStyles:0 legibilityStyle:[(UIStatusBar_Base *)self legibilityStyle] foregroundColor:colorCopy animationParameters:parametersCopy forced:0];
}

- (void)setForegroundAlpha:(double)alpha animationParameters:(id)parameters
{
  v8.receiver = self;
  v8.super_class = UIStatusBar_Modern;
  parametersCopy = parameters;
  [(UIStatusBar_Base *)&v8 setForegroundAlpha:parametersCopy animationParameters:alpha];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__UIStatusBar_Modern_setForegroundAlpha_animationParameters___block_invoke;
  v7[3] = &unk_1E70F32F0;
  v7[4] = self;
  *&v7[5] = alpha;
  [(UIStatusBar_Base *)self _performAnimations:v7 withParameters:parametersCopy completion:0];
}

- (void)setLegibilityStyle:(int64_t)style animationParameters:(id)parameters
{
  v9.receiver = self;
  v9.super_class = UIStatusBar_Modern;
  parametersCopy = parameters;
  [(UIStatusBar_Base *)&v9 setLegibilityStyle:style animationParameters:parametersCopy];
  v7 = [(UIStatusBar_Base *)self _requestStyle:v9.receiver];
  foregroundColor = [(UIStatusBar_Base *)self foregroundColor];
  [(UIStatusBar_Modern *)self _requestStyle:v7 partStyles:0 legibilityStyle:style foregroundColor:foregroundColor animationParameters:parametersCopy forced:0];
}

- (void)setAvoidanceFrame:(CGRect)frame animationSettings:(id)settings options:(unint64_t)options
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v12.receiver = self;
  v12.super_class = UIStatusBar_Modern;
  settingsCopy = settings;
  [(UIStatusBar_Base *)&v12 setAvoidanceFrame:settingsCopy animationSettings:options options:x, y, width, height];
  [(_UIStatusBar *)self->_statusBar setAvoidanceFrame:settingsCopy animationSettings:options options:x, y, width, height, v12.receiver, v12.super_class];
}

- (void)setMode:(int64_t)mode
{
  v5.receiver = self;
  v5.super_class = UIStatusBar_Modern;
  [(UIStatusBar_Base *)&v5 setMode:?];
  [(_UIStatusBar *)self->_statusBar setMode:mode];
}

- (id)clockFont
{
  visualProvider = [(_UIStatusBar *)self->_statusBar visualProvider];
  clockFont = [visualProvider clockFont];

  return clockFont;
}

- (void)setOrientation:(int64_t)orientation
{
  v5.receiver = self;
  v5.super_class = UIStatusBar_Modern;
  [(UIStatusBar_Base *)&v5 setOrientation:?];
  [(_UIStatusBar *)self->_statusBar setOrientation:orientation];
}

- (void)jiggleLockIcon
{
  v6 = objc_alloc_init(_UIStatusBarData);
  currentData = [(_UIStatusBar *)self->_statusBar currentData];
  lockEntry = [currentData lockEntry];
  v5 = [lockEntry copy];

  [v5 setUnlockFailureCount:{objc_msgSend(v5, "unlockFailureCount") + 1}];
  [(_UIStatusBarData *)v6 setLockEntry:v5];
  [(_UIStatusBar *)self->_statusBar updateWithData:v6];
}

- (UIOffset)offsetForPartWithIdentifier:(id)identifier
{
  [(_UIStatusBar *)self->_statusBar offsetForPartWithIdentifier:identifier];
  result.vertical = v4;
  result.horizontal = v3;
  return result;
}

- (CGRect)frameForPartWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(UIView *)self layoutIfNeeded];
  [(_UIStatusBar *)self->_statusBar frameForPartWithIdentifier:identifierCopy];
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

- (void)layoutSubviews
{
  [(UIView *)self bounds];
  statusBar = self->_statusBar;

  [(UIView *)statusBar setFrame:?];
}

- (void)forceUpdate:(BOOL)update
{
  if (update)
  {

    [(UIStatusBar_Modern *)self _updateWithData:0 force:1];
  }

  else
  {
    v5[5] = v3;
    v5[6] = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __34__UIStatusBar_Modern_forceUpdate___block_invoke;
    v5[3] = &unk_1E70F3590;
    v5[4] = self;
    [UIView performWithoutAnimation:v5];
  }
}

- (void)forceUpdateData:(BOOL)data
{
  dataCopy = data;
  v5 = +[UIStatusBarServer getStatusBarData];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    while (!v5->var0[v7])
    {
      if (++v7 == 52)
      {
        return;
      }
    }

    [(UIStatusBar_Modern *)self _updateSemanticContentAttributeFromLegacyData:v5];
    v8 = [(UIStatusBar_Modern *)self _dataFromLegacyData:v6];
    v9 = v8;
    if (dataCopy)
    {
      [(UIStatusBar_Modern *)self _updateWithData:v8 force:0];
    }

    else
    {
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __38__UIStatusBar_Modern_forceUpdateData___block_invoke;
      v10[3] = &unk_1E70F35B8;
      v10[4] = self;
      v11 = v8;
      [UIView performWithoutAnimation:v10];
    }
  }
}

- (void)statusBarServer:(id)server didReceiveStatusBarData:(id *)data withActions:(int)actions
{
  [(UIStatusBar_Modern *)self _updateSemanticContentAttributeFromLegacyData:data];
  v7 = [(UIStatusBar_Modern *)self _dataFromLegacyData:data];
  [(UIStatusBar_Modern *)self _updateWithData:v7 force:0];
}

- (void)statusBarServer:(id)server didReceiveStyleOverrides:(unint64_t)overrides
{
  v11 = *MEMORY[0x1E69E9840];
  serverCopy = server;
  if ([(UIStatusBar_Base *)self styleOverrides]== overrides)
  {
    v7 = _UIStatusBar_Log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      overridesCopy = overrides;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "Duplicate StatusBar_Modern overrides receieved: %llu", buf, 0xCu);
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIStatusBar_Modern;
    [(UIStatusBar_Base *)&v8 statusBarServer:serverCopy didReceiveStyleOverrides:overrides];
    [(UIStatusBar_Modern *)self forceUpdate:1];
  }
}

- (void)statusBarStateProvider:(id)provider didPostStatusBarData:(id *)data withActions:(int)actions
{
  [(UIStatusBar_Modern *)self _updateSemanticContentAttributeFromLegacyData:data];
  v7 = [(UIStatusBar_Modern *)self _dataFromLegacyData:data];
  [(UIStatusBar_Modern *)self _updateWithData:v7 force:0];
}

- (CGSize)intrinsicContentSize
{
  [(_UIStatusBar *)self->_statusBar intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

@end