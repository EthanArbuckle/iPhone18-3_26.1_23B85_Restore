@interface WFSymbolIcon
+ (id)symbolIconForActionIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier;
- (BOOL)hasClearBackground;
- (BOOL)hasTransparentBackground;
- (BOOL)isEqual:(id)equal;
- (WFColor)symbolColor;
- (WFSymbolIcon)iconWithSymbolColor:(id)color background:(id)background;
- (WFSymbolIcon)initWithCoder:(id)coder;
- (WFSymbolIcon)initWithSymbolName:(id)name;
- (WFSymbolIcon)initWithSymbolName:(id)name background:(id)background;
- (WFSymbolIcon)initWithSymbolName:(id)name renderingMode:(id)mode symbolColors:(id)colors;
- (WFSymbolIcon)initWithSymbolName:(id)name renderingMode:(id)mode symbolColors:(id)colors background:(id)background;
- (WFSymbolIcon)initWithSymbolName:(id)name symbolColor:(id)color;
- (WFSymbolIcon)initWithSymbolName:(id)name symbolColor:(id)color background:(id)background;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFSymbolIcon

- (WFColor)symbolColor
{
  symbolColors = [(WFSymbolIcon *)self symbolColors];
  firstObject = [symbolColors firstObject];

  return firstObject;
}

- (BOOL)hasClearBackground
{
  background = [(WFSymbolIcon *)self background];
  if (background && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    color = [background color];
    [color alpha];
    v5 = v4 == 0.0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (WFSymbolIcon)iconWithSymbolColor:(id)color background:(id)background
{
  v17[1] = *MEMORY[0x1E69E9840];
  backgroundCopy = background;
  colorCopy = color;
  v8 = objc_alloc(objc_opt_class());
  symbolName = self->_symbolName;
  renderingMode = [(WFSymbolIcon *)self renderingMode];
  if (colorCopy)
  {
    v17[0] = colorCopy;
    symbolColors = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  }

  else
  {
    symbolColors = [(WFSymbolIcon *)self symbolColors];
  }

  v12 = symbolColors;
  background = backgroundCopy;
  if (!backgroundCopy)
  {
    background = self->_background;
  }

  v14 = [v8 initWithSymbolName:symbolName renderingMode:renderingMode symbolColors:symbolColors background:background];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BOOL)hasTransparentBackground
{
  background = [(WFSymbolIcon *)self background];
  if (background && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    color = [background color];
    [color alpha];
    v5 = v4 < 1.0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  symbolName = self->_symbolName;
  coderCopy = coder;
  [coderCopy encodeObject:symbolName forKey:@"symbolName"];
  [coderCopy encodeObject:self->_renderingMode forKey:@"renderingMode"];
  [coderCopy encodeObject:self->_symbolColors forKey:@"symbolColors"];
  [coderCopy encodeObject:self->_background forKey:@"background"];
}

- (WFSymbolIcon)initWithCoder:(id)coder
{
  v14[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbolName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"background"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"renderingMode"];
  v8 = objc_opt_class();
  if (v7)
  {
    v9 = [coderCopy decodeArrayOfObjectsOfClass:v8 forKey:@"symbolColors"];
  }

  else
  {
    v10 = [coderCopy decodeObjectOfClass:v8 forKey:@"symbolColor"];
    v14[0] = v10;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];

    v7 = @"Monochrome";
  }

  v11 = [(WFSymbolIcon *)self initWithSymbolName:v5 renderingMode:v7 symbolColors:v9 background:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      symbolName = [(WFSymbolIcon *)self symbolName];
      symbolName2 = [equalCopy symbolName];
      v7 = symbolName;
      v8 = symbolName2;
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = 0;
        v11 = v8;
        v12 = v7;
        if (!v7 || !v8)
        {
          goto LABEL_30;
        }

        v13 = [v7 isEqualToString:v8];

        if (!v13)
        {
          v10 = 0;
LABEL_31:

          goto LABEL_32;
        }
      }

      renderingMode = [(WFSymbolIcon *)self renderingMode];
      renderingMode2 = [equalCopy renderingMode];
      v12 = renderingMode;
      v16 = renderingMode2;
      v11 = v16;
      if (v12 == v16)
      {
      }

      else
      {
        v10 = 0;
        v17 = v16;
        v18 = v12;
        if (!v12 || !v16)
        {
          goto LABEL_29;
        }

        v19 = [v12 isEqualToString:v16];

        if (!v19)
        {
          v10 = 0;
LABEL_30:

          goto LABEL_31;
        }
      }

      symbolColors = [(WFSymbolIcon *)self symbolColors];
      symbolColors2 = [equalCopy symbolColors];
      v18 = symbolColors;
      v22 = symbolColors2;
      v17 = v22;
      v29 = v18;
      if (v18 == v22)
      {
      }

      else
      {
        v10 = 0;
        v23 = v22;
        if (!v18 || !v22)
        {
LABEL_28:

          v18 = v29;
          goto LABEL_29;
        }

        v24 = [v18 isEqualToArray:v22];

        if (!v24)
        {
          v10 = 0;
LABEL_29:

          goto LABEL_30;
        }
      }

      background = [(WFSymbolIcon *)self background];
      background2 = [equalCopy background];
      v18 = background;
      v27 = background2;
      v23 = v27;
      if (v18 == v27)
      {
        v10 = 1;
      }

      else
      {
        v10 = 0;
        if (v18 && v27)
        {
          v10 = [v18 isEqual:v27];
        }
      }

      goto LABEL_28;
    }
  }

  v10 = 0;
LABEL_32:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_symbolName hash];
  v4 = [(NSString *)self->_renderingMode hash]^ v3;
  v5 = [(NSArray *)self->_symbolColors hash];
  return v4 ^ v5 ^ [(WFIconBackground *)self->_background hash];
}

- (WFSymbolIcon)initWithSymbolName:(id)name renderingMode:(id)mode symbolColors:(id)colors background:(id)background
{
  nameCopy = name;
  modeCopy = mode;
  colorsCopy = colors;
  backgroundCopy = background;
  if (nameCopy)
  {
    if (colorsCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFIcon.m" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"symbolColors"}];

    if (backgroundCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFIcon.m" lineNumber:136 description:{@"Invalid parameter not satisfying: %@", @"symbolName"}];

  if (!colorsCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (backgroundCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"WFIcon.m" lineNumber:138 description:{@"Invalid parameter not satisfying: %@", @"background"}];

LABEL_4:
  v23.receiver = self;
  v23.super_class = WFSymbolIcon;
  _init = [(WFIcon *)&v23 _init];
  if (_init)
  {
    v16 = [nameCopy copy];
    symbolName = _init->_symbolName;
    _init->_symbolName = v16;

    objc_storeStrong(&_init->_symbolColors, colors);
    objc_storeStrong(&_init->_renderingMode, mode);
    objc_storeStrong(&_init->_background, background);
    v18 = _init;
  }

  return _init;
}

- (WFSymbolIcon)initWithSymbolName:(id)name renderingMode:(id)mode symbolColors:(id)colors
{
  colorsCopy = colors;
  modeCopy = mode;
  nameCopy = name;
  v11 = +[WFIconColorBackground clearBackground];
  v12 = [(WFSymbolIcon *)self initWithSymbolName:nameCopy renderingMode:modeCopy symbolColors:colorsCopy background:v11];

  return v12;
}

- (WFSymbolIcon)initWithSymbolName:(id)name symbolColor:(id)color background:(id)background
{
  v17 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  v8 = MEMORY[0x1E695DEC8];
  backgroundCopy = background;
  colorCopy2 = color;
  nameCopy = name;
  v12 = [v8 arrayWithObjects:&colorCopy count:1];

  v13 = [(WFSymbolIcon *)self initWithSymbolName:nameCopy renderingMode:@"Monochrome" symbolColors:v12 background:backgroundCopy, colorCopy, v17];
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (WFSymbolIcon)initWithSymbolName:(id)name symbolColor:(id)color
{
  v15 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  v6 = MEMORY[0x1E695DEC8];
  colorCopy2 = color;
  nameCopy = name;
  v9 = [v6 arrayWithObjects:&colorCopy count:1];
  v10 = [WFIconColorBackground clearBackground:colorCopy];

  v11 = [(WFSymbolIcon *)self initWithSymbolName:nameCopy renderingMode:@"Monochrome" symbolColors:v9 background:v10];
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (WFSymbolIcon)initWithSymbolName:(id)name background:(id)background
{
  v13[1] = *MEMORY[0x1E69E9840];
  backgroundCopy = background;
  nameCopy = name;
  v8 = +[WFColor whiteColor];
  v13[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v10 = [(WFSymbolIcon *)self initWithSymbolName:nameCopy renderingMode:@"Monochrome" symbolColors:v9 background:backgroundCopy];

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (WFSymbolIcon)initWithSymbolName:(id)name
{
  nameCopy = name;
  v5 = +[WFColor whiteColor];
  v6 = +[WFIconColorBackground clearBackground];
  v7 = [(WFSymbolIcon *)self initWithSymbolName:nameCopy symbolColor:v5 background:v6];

  return v7;
}

+ (id)symbolIconForActionIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier
{
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  if (symbolIconForActionIdentifier_bundleIdentifier__onceToken != -1)
  {
    dispatch_once(&symbolIconForActionIdentifier_bundleIdentifier__onceToken, &__block_literal_global_19594);
  }

  v7 = [symbolIconForActionIdentifier_bundleIdentifier__actionIdentifierMapping objectForKeyedSubscript:identifierCopy];
  if (v7 || ([symbolIconForActionIdentifier_bundleIdentifier__bundleIdentifierMapping objectForKeyedSubscript:bundleIdentifierCopy], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v9 = [WFColor tintColorForBundleIdentifier:bundleIdentifierCopy];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [WFColor colorWithSystemColor:21];
    }

    v12 = v11;

    v13 = [[WFSymbolIcon alloc] initWithSymbolName:v8 symbolColor:v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __86__WFSymbolIcon_IconicSymbolUtilities__symbolIconForActionIdentifier_bundleIdentifier___block_invoke()
{
  v8[9] = *MEMORY[0x1E69E9840];
  v7[0] = @"com.apple.VoiceMemos.ToggleRecording";
  v7[1] = @"com.apple.mobiletimer.INCreateTimerIntent";
  v8[0] = @"waveform";
  v8[1] = @"timer";
  v7[2] = @"com.apple.mobiletimer.CreateAlarmIntent";
  v7[3] = @"com.apple.mobiletimer-framework.MobileTimerIntents.MTCreateAlarmIntent";
  v8[2] = @"alarm.fill";
  v8[3] = @"alarm.fill";
  v7[4] = @"com.apple.TVRemoteUIService.LaunchRemoteIntent";
  v7[5] = @"com.apple.iBooks.OpenBookIntent";
  v8[4] = @"appletvremote.gen4.fill";
  v8[5] = @"book.fill";
  v7[6] = @"com.apple.iBooks.PlayAudiobookIntent";
  v7[7] = @"com.apple.DocumentsApp.ScanDocument";
  v8[6] = @"headphones";
  v8[7] = @"doc.viewfinder.fill";
  v7[8] = @"is.workflow.actions.timer.start";
  v8[8] = @"timer";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:9];
  v1 = symbolIconForActionIdentifier_bundleIdentifier__actionIdentifierMapping;
  symbolIconForActionIdentifier_bundleIdentifier__actionIdentifierMapping = v0;

  v5[0] = @"com.apple.Pages";
  v5[1] = @"com.apple.Numbers";
  v6[0] = @"apple.pages";
  v6[1] = @"apple.numbers";
  v5[2] = @"com.apple.Keynote";
  v5[3] = @"com.apple.BarcodeScanner";
  v6[2] = @"apple.keynote";
  v6[3] = @"qrcode.viewfinder";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v3 = symbolIconForActionIdentifier_bundleIdentifier__bundleIdentifierMapping;
  symbolIconForActionIdentifier_bundleIdentifier__bundleIdentifierMapping = v2;

  v4 = *MEMORY[0x1E69E9840];
}

@end