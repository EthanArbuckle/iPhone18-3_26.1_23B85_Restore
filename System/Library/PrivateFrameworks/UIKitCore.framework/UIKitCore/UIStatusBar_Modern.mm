@interface UIStatusBar_Modern
+ (double)_heightForStyle:(int64_t)a3 orientation:(int64_t)a4 forStatusBarFrame:(BOOL)a5 inWindow:(id)a6 isAzulBLinked:(BOOL)a7;
+ (int64_t)_defaultStyleForRequestedStyle:(int64_t)a3 styleOverrides:(unint64_t)a4 activeStyleOverride:(unint64_t *)a5;
- (CGRect)frameForPartWithIdentifier:(id)a3;
- (CGSize)intrinsicContentSize;
- (UIOffset)offsetForPartWithIdentifier:(id)a3;
- (id)_dataFromLegacyData:(id *)a3;
- (id)_effectiveDataFromData:(id)a3 activeOverride:(unint64_t)a4 canUpdateBackgroundActivity:(BOOL)a5;
- (id)_initWithFrame:(CGRect)a3 showForegroundView:(BOOL)a4 wantsServer:(BOOL)a5 inProcessStateProvider:(id)a6;
- (id)clockFont;
- (int64_t)_effectiveStyleFromStyle:(int64_t)a3;
- (int64_t)currentStyle;
- (unint64_t)_implicitStyleOverrideForStyle:(int64_t)a3;
- (void)_requestStyle:(int64_t)a3 partStyles:(id)a4 animationParameters:(id)a5 forced:(BOOL)a6;
- (void)_requestStyle:(int64_t)a3 partStyles:(id)a4 legibilityStyle:(int64_t)a5 foregroundColor:(id)a6 animationParameters:(id)a7 forced:(BOOL)a8;
- (void)_updateSemanticContentAttributeFromLegacyData:(id *)a3;
- (void)_updateWithData:(id)a3 force:(BOOL)a4;
- (void)forceUpdate:(BOOL)a3;
- (void)forceUpdateData:(BOOL)a3;
- (void)jiggleLockIcon;
- (void)layoutSubviews;
- (void)setAvoidanceFrame:(CGRect)a3 animationSettings:(id)a4 options:(unint64_t)a5;
- (void)setForegroundAlpha:(double)a3 animationParameters:(id)a4;
- (void)setForegroundColor:(id)a3 animationParameters:(id)a4;
- (void)setLegibilityStyle:(int64_t)a3 animationParameters:(id)a4;
- (void)setMode:(int64_t)a3;
- (void)setOrientation:(int64_t)a3;
- (void)setStyleRequest:(id)a3 animationParameters:(id)a4;
- (void)statusBarServer:(id)a3 didReceiveStatusBarData:(id *)a4 withActions:(int)a5;
- (void)statusBarServer:(id)a3 didReceiveStyleOverrides:(unint64_t)a4;
- (void)statusBarStateProvider:(id)a3 didPostStatusBarData:(id *)a4 withActions:(int)a5;
@end

@implementation UIStatusBar_Modern

- (id)_initWithFrame:(CGRect)a3 showForegroundView:(BOOL)a4 wantsServer:(BOOL)a5 inProcessStateProvider:(id)a6
{
  v6 = a5;
  v7 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13 = a6;
  v23.receiver = self;
  v23.super_class = UIStatusBar_Modern;
  v14 = [(UIStatusBar_Base *)&v23 _initWithFrame:v7 showForegroundView:v6 wantsServer:v13 inProcessStateProvider:x, y, width, height];
  if (v14)
  {
    v15 = [[_UIStatusBar alloc] initWithStyle:0];
    [v14 addSubview:v15];
    [v14 _setRequestedStyle:0];
    objc_initWeak(&location, v14);
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __91__UIStatusBar_Modern__initWithFrame_showForegroundView_wantsServer_inProcessStateProvider___block_invoke;
    v20 = &unk_1E7122730;
    objc_copyWeak(&v21, &location);
    [(_UIStatusBar *)v15 setRegionActionValidationBlock:&v17];
    [v14 setStatusBar:{v15, v17, v18, v19, v20}];
    [v14 _evaluateServerRegistration];
    [v14 setNeedsLayout];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v14;
}

+ (double)_heightForStyle:(int64_t)a3 orientation:(int64_t)a4 forStatusBarFrame:(BOOL)a5 inWindow:(id)a6 isAzulBLinked:(BOOL)a7
{
  v7 = a7;
  v10 = [objc_opt_self() mainScreen];
  [_UIStatusBar intrinsicContentSizeForTargetScreen:v10 orientation:a4 onLockScreen:a3 == 306 isAzulBLinked:v7];
  v12 = v11;

  return v12;
}

+ (int64_t)_defaultStyleForRequestedStyle:(int64_t)a3 styleOverrides:(unint64_t)a4 activeStyleOverride:(unint64_t *)a5
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___UIStatusBar_Modern;
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

  [(_UIStatusBar *)self->_statusBar setSemanticContentAttribute:v3];
}

- (id)_dataFromLegacyData:(id *)a3
{
  v10 = *MEMORY[0x1E69E9840];
  if ([(UIStatusBar_Base *)self localDataOverrides])
  {
    memset(&v9[30], 0, 32);
    [UIStatusBar getData:v9 forRequestedData:a3 withOverrides:[(UIStatusBar_Base *)self localDataOverrides:0]];
    v5 = [(_UIStatusBar *)self->_statusBar currentData];
    v6 = v9;
  }

  else
  {
    v5 = [(_UIStatusBar *)self->_statusBar currentData];
    v6 = a3;
  }

  v7 = [_UIStatusBarDataConverter convertData:v6 fromReferenceData:v5];

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
  v6 = [(_UIStatusBar *)self->_statusBar style];

  return _UIStatusBarStyleFromResolvedStyle(v6);
}

- (id)_effectiveDataFromData:(id)a3 activeOverride:(unint64_t)a4 canUpdateBackgroundActivity:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = objc_alloc_init(_UIStatusBarDataBackgroundActivityEntry);
  v10 = v9;
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
            v11 = 31;
            goto LABEL_96;
          }

          if (a4 == 0x400000)
          {
            v11 = 27;
            goto LABEL_96;
          }
        }

        else
        {
          switch(a4)
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

      if (a4 <= 0xFFFFFFF)
      {
        if (a4 == 0x4000000)
        {
          v11 = 13;
          goto LABEL_96;
        }

        if (a4 == 0x8000000)
        {
          v11 = 2;
          goto LABEL_96;
        }

        goto LABEL_113;
      }

      if (a4 == 0x10000000)
      {
        v11 = 3;
        goto LABEL_96;
      }

      if (a4 == 0x20000000)
      {
        v11 = 0;
        goto LABEL_96;
      }

      v12 = 0x40000000;
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
          switch(a4)
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

      if (a4 > 0x1FFFFFFFFLL)
      {
        if (a4 != 0x200000000)
        {
          if (a4 == 0x400000000)
          {
            v11 = 22;
            goto LABEL_96;
          }

          if (a4 == 0x800000000)
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

      if (a4 == 0x80000000)
      {
        goto LABEL_73;
      }

      v12 = 0x100000000;
    }

    if (a4 == v12)
    {
      v11 = 19;
      goto LABEL_96;
    }

    goto LABEL_113;
  }

  if (a4 > 2047)
  {
    if (a4 >= 0x10000)
    {
      if (a4 < 0x40000)
      {
        if (a4 == 0x10000)
        {
          v11 = 36;
          goto LABEL_96;
        }

        if (a4 == 0x20000)
        {
          v11 = 10;
          goto LABEL_96;
        }
      }

      else
      {
        switch(a4)
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

    else if (a4 < 0x2000)
    {
      if (a4 == 2048)
      {
        v11 = 15;
        goto LABEL_96;
      }

      if (a4 == 4096)
      {
        v11 = 32;
        goto LABEL_96;
      }
    }

    else
    {
      switch(a4)
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

  else if (a4 > 63)
  {
    if (a4 <= 255)
    {
      if (a4 == 64 || a4 == 128)
      {
        v11 = 14;
        goto LABEL_96;
      }
    }

    else
    {
      switch(a4)
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

  else if (a4 <= 7)
  {
    if (a4 == 1)
    {
      v11 = 6;
      goto LABEL_96;
    }

    if (a4 == 4)
    {
      v11 = 17;
      goto LABEL_96;
    }
  }

  else
  {
    switch(a4)
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
    v13 = [UIStatusBarServer getDoubleHeightStatusStringForStyle:[(UIStatusBar_Base *)UIStatusBar _defaultStyleForRequestedStyle:0 styleOverrides:a4 activeStyleOverride:0]];
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

  if (v5)
  {
    objc_storeStrong(&_effectiveDataFromData_activeOverride_canUpdateBackgroundActivity__lastBackgroundActivityEntry, v10);
  }

  v16 = [(_UIStatusBar *)self->_statusBar currentData];
  v17 = [v16 backgroundActivityEntry];

  v18 = v8;
  if (![(_UIStatusBarDataBackgroundActivityEntry *)v10 isEqual:v17])
  {
    if (v8)
    {
      v18 = [(_UIStatusBarData *)v8 copy];
    }

    else
    {
      v18 = objc_alloc_init(_UIStatusBarData);
    }

    [(_UIStatusBarData *)v18 setBackgroundActivityEntry:v10];
  }

  return v18;
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
    v7 = [(_UIStatusBar *)self->_statusBar currentData];

    if (!v7)
    {
      goto LABEL_11;
    }
  }

  v12 = 0;
  v8 = [(UIStatusBar_Base *)self styleDelegate];

  if (!v8)
  {
    v12 = [(UIStatusBar_Base *)self styleOverrides];
    if (v12)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [(UIStatusBar_Base *)self _getStyle:0 andActiveOverride:&v12 forRequestedStyle:_UIStatusBarStyleFromResolvedStyle([(_UIStatusBar *)self->_statusBar style])];
  if (!v12)
  {
LABEL_5:
    v12 = [(UIStatusBar_Modern *)self _implicitStyleOverrideForStyle:[(UIStatusBar_Base *)self _requestStyle]];
  }

LABEL_6:
  [(UIStatusBar_Base *)self setActiveStyleOverride:?];
  v9 = [(UIStatusBar_Base *)self activeStyleOverride];
  v10 = [(UIStatusBar_Base *)self styleDelegate];
  v11 = [(UIStatusBar_Modern *)self _effectiveDataFromData:v6 activeOverride:v9 canUpdateBackgroundActivity:v10 != 0];

  if (v11 || v4)
  {
    if (!v11)
    {
      v11 = objc_alloc_init(_UIStatusBarData);
    }

    [(_UIStatusBar *)self->_statusBar updateWithData:v11];
  }

LABEL_11:
}

- (void)_requestStyle:(int64_t)a3 partStyles:(id)a4 legibilityStyle:(int64_t)a5 foregroundColor:(id)a6 animationParameters:(id)a7 forced:(BOOL)a8
{
  v8 = a8;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = [(UIStatusBar_Base *)self manager];
  if (!v17 || (v18 = v17, -[UIStatusBar_Base manager](self, "manager"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 statusBar:self shouldRequestStyle:a3 animationParameters:v16 forced:v8], v19, v18, v20))
  {
    v21 = [(UIStatusBar_Base *)self styleForRequestedStyle:[(UIStatusBar_Modern *)self _effectiveStyleFromStyle:a3]];
    if (a5 == 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = -1;
    }

    if (a5 == 2)
    {
      v22 = 3;
    }

    if (!a5)
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

    v27 = a3;
    v28 = v23;
    v24[4] = self;
    v25 = v15;
    v26 = v14;
    [(UIStatusBar_Base *)self _performAnimations:v24 withParameters:v16 completion:0];
  }
}

- (void)_requestStyle:(int64_t)a3 partStyles:(id)a4 animationParameters:(id)a5 forced:(BOOL)a6
{
  v6 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [(UIStatusBar_Base *)self legibilityStyle];
  v13 = [(UIStatusBar_Base *)self foregroundColor];
  [(UIStatusBar_Modern *)self _requestStyle:a3 partStyles:v11 legibilityStyle:v12 foregroundColor:v13 animationParameters:v10 forced:v6];
}

- (int64_t)currentStyle
{
  v2 = [(_UIStatusBar *)self->_statusBar style];

  return _UIStatusBarStyleFromResolvedStyle(v2);
}

- (void)setStyleRequest:(id)a3 animationParameters:(id)a4
{
  v11.receiver = self;
  v11.super_class = UIStatusBar_Modern;
  v6 = a4;
  v7 = a3;
  [(UIStatusBar_Base *)&v11 setStyleRequest:v7 animationParameters:v6];
  v8 = [v7 style];
  v9 = [v7 legibilityStyle];
  v10 = [v7 foregroundColor];

  [(UIStatusBar_Modern *)self _requestStyle:v8 partStyles:0 legibilityStyle:v9 foregroundColor:v10 animationParameters:v6 forced:0];
}

- (void)setForegroundColor:(id)a3 animationParameters:(id)a4
{
  v8.receiver = self;
  v8.super_class = UIStatusBar_Modern;
  v6 = a4;
  v7 = a3;
  [(UIStatusBar_Base *)&v8 setForegroundColor:v7 animationParameters:v6];
  [(UIStatusBar_Modern *)self _requestStyle:[(UIStatusBar_Base *)self _requestStyle:v8.receiver] partStyles:0 legibilityStyle:[(UIStatusBar_Base *)self legibilityStyle] foregroundColor:v7 animationParameters:v6 forced:0];
}

- (void)setForegroundAlpha:(double)a3 animationParameters:(id)a4
{
  v8.receiver = self;
  v8.super_class = UIStatusBar_Modern;
  v6 = a4;
  [(UIStatusBar_Base *)&v8 setForegroundAlpha:v6 animationParameters:a3];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__UIStatusBar_Modern_setForegroundAlpha_animationParameters___block_invoke;
  v7[3] = &unk_1E70F32F0;
  v7[4] = self;
  *&v7[5] = a3;
  [(UIStatusBar_Base *)self _performAnimations:v7 withParameters:v6 completion:0];
}

- (void)setLegibilityStyle:(int64_t)a3 animationParameters:(id)a4
{
  v9.receiver = self;
  v9.super_class = UIStatusBar_Modern;
  v6 = a4;
  [(UIStatusBar_Base *)&v9 setLegibilityStyle:a3 animationParameters:v6];
  v7 = [(UIStatusBar_Base *)self _requestStyle:v9.receiver];
  v8 = [(UIStatusBar_Base *)self foregroundColor];
  [(UIStatusBar_Modern *)self _requestStyle:v7 partStyles:0 legibilityStyle:a3 foregroundColor:v8 animationParameters:v6 forced:0];
}

- (void)setAvoidanceFrame:(CGRect)a3 animationSettings:(id)a4 options:(unint64_t)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12.receiver = self;
  v12.super_class = UIStatusBar_Modern;
  v11 = a4;
  [(UIStatusBar_Base *)&v12 setAvoidanceFrame:v11 animationSettings:a5 options:x, y, width, height];
  [(_UIStatusBar *)self->_statusBar setAvoidanceFrame:v11 animationSettings:a5 options:x, y, width, height, v12.receiver, v12.super_class];
}

- (void)setMode:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = UIStatusBar_Modern;
  [(UIStatusBar_Base *)&v5 setMode:?];
  [(_UIStatusBar *)self->_statusBar setMode:a3];
}

- (id)clockFont
{
  v2 = [(_UIStatusBar *)self->_statusBar visualProvider];
  v3 = [v2 clockFont];

  return v3;
}

- (void)setOrientation:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = UIStatusBar_Modern;
  [(UIStatusBar_Base *)&v5 setOrientation:?];
  [(_UIStatusBar *)self->_statusBar setOrientation:a3];
}

- (void)jiggleLockIcon
{
  v6 = objc_alloc_init(_UIStatusBarData);
  v3 = [(_UIStatusBar *)self->_statusBar currentData];
  v4 = [v3 lockEntry];
  v5 = [v4 copy];

  [v5 setUnlockFailureCount:{objc_msgSend(v5, "unlockFailureCount") + 1}];
  [(_UIStatusBarData *)v6 setLockEntry:v5];
  [(_UIStatusBar *)self->_statusBar updateWithData:v6];
}

- (UIOffset)offsetForPartWithIdentifier:(id)a3
{
  [(_UIStatusBar *)self->_statusBar offsetForPartWithIdentifier:a3];
  result.vertical = v4;
  result.horizontal = v3;
  return result;
}

- (CGRect)frameForPartWithIdentifier:(id)a3
{
  v4 = a3;
  [(UIView *)self layoutIfNeeded];
  [(_UIStatusBar *)self->_statusBar frameForPartWithIdentifier:v4];
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

- (void)forceUpdate:(BOOL)a3
{
  if (a3)
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

- (void)forceUpdateData:(BOOL)a3
{
  v3 = a3;
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
    if (v3)
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

- (void)statusBarServer:(id)a3 didReceiveStatusBarData:(id *)a4 withActions:(int)a5
{
  [(UIStatusBar_Modern *)self _updateSemanticContentAttributeFromLegacyData:a4];
  v7 = [(UIStatusBar_Modern *)self _dataFromLegacyData:a4];
  [(UIStatusBar_Modern *)self _updateWithData:v7 force:0];
}

- (void)statusBarServer:(id)a3 didReceiveStyleOverrides:(unint64_t)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([(UIStatusBar_Base *)self styleOverrides]== a4)
  {
    v7 = _UIStatusBar_Log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v10 = a4;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "Duplicate StatusBar_Modern overrides receieved: %llu", buf, 0xCu);
    }
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIStatusBar_Modern;
    [(UIStatusBar_Base *)&v8 statusBarServer:v6 didReceiveStyleOverrides:a4];
    [(UIStatusBar_Modern *)self forceUpdate:1];
  }
}

- (void)statusBarStateProvider:(id)a3 didPostStatusBarData:(id *)a4 withActions:(int)a5
{
  [(UIStatusBar_Modern *)self _updateSemanticContentAttributeFromLegacyData:a4];
  v7 = [(UIStatusBar_Modern *)self _dataFromLegacyData:a4];
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