@interface WFSymbolIcon
+ (id)symbolIconForActionIdentifier:(id)a3 bundleIdentifier:(id)a4;
- (BOOL)hasClearBackground;
- (BOOL)hasTransparentBackground;
- (BOOL)isEqual:(id)a3;
- (WFColor)symbolColor;
- (WFSymbolIcon)iconWithSymbolColor:(id)a3 background:(id)a4;
- (WFSymbolIcon)initWithCoder:(id)a3;
- (WFSymbolIcon)initWithSymbolName:(id)a3;
- (WFSymbolIcon)initWithSymbolName:(id)a3 background:(id)a4;
- (WFSymbolIcon)initWithSymbolName:(id)a3 renderingMode:(id)a4 symbolColors:(id)a5;
- (WFSymbolIcon)initWithSymbolName:(id)a3 renderingMode:(id)a4 symbolColors:(id)a5 background:(id)a6;
- (WFSymbolIcon)initWithSymbolName:(id)a3 symbolColor:(id)a4;
- (WFSymbolIcon)initWithSymbolName:(id)a3 symbolColor:(id)a4 background:(id)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFSymbolIcon

- (WFColor)symbolColor
{
  v2 = [(WFSymbolIcon *)self symbolColors];
  v3 = [v2 firstObject];

  return v3;
}

- (BOOL)hasClearBackground
{
  v2 = [(WFSymbolIcon *)self background];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 color];
    [v3 alpha];
    v5 = v4 == 0.0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (WFSymbolIcon)iconWithSymbolColor:(id)a3 background:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc(objc_opt_class());
  symbolName = self->_symbolName;
  v10 = [(WFSymbolIcon *)self renderingMode];
  if (v7)
  {
    v17[0] = v7;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  }

  else
  {
    v11 = [(WFSymbolIcon *)self symbolColors];
  }

  v12 = v11;
  background = v6;
  if (!v6)
  {
    background = self->_background;
  }

  v14 = [v8 initWithSymbolName:symbolName renderingMode:v10 symbolColors:v11 background:background];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BOOL)hasTransparentBackground
{
  v2 = [(WFSymbolIcon *)self background];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = [v2 color];
    [v3 alpha];
    v5 = v4 < 1.0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  symbolName = self->_symbolName;
  v5 = a3;
  [v5 encodeObject:symbolName forKey:@"symbolName"];
  [v5 encodeObject:self->_renderingMode forKey:@"renderingMode"];
  [v5 encodeObject:self->_symbolColors forKey:@"symbolColors"];
  [v5 encodeObject:self->_background forKey:@"background"];
}

- (WFSymbolIcon)initWithCoder:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"symbolName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"background"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"renderingMode"];
  v8 = objc_opt_class();
  if (v7)
  {
    v9 = [v4 decodeArrayOfObjectsOfClass:v8 forKey:@"symbolColors"];
  }

  else
  {
    v10 = [v4 decodeObjectOfClass:v8 forKey:@"symbolColor"];
    v14[0] = v10;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];

    v7 = @"Monochrome";
  }

  v11 = [(WFSymbolIcon *)self initWithSymbolName:v5 renderingMode:v7 symbolColors:v9 background:v6];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFSymbolIcon *)self symbolName];
      v6 = [v4 symbolName];
      v7 = v5;
      v8 = v6;
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

      v14 = [(WFSymbolIcon *)self renderingMode];
      v15 = [v4 renderingMode];
      v12 = v14;
      v16 = v15;
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

      v20 = [(WFSymbolIcon *)self symbolColors];
      v21 = [v4 symbolColors];
      v18 = v20;
      v22 = v21;
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

      v25 = [(WFSymbolIcon *)self background];
      v26 = [v4 background];
      v18 = v25;
      v27 = v26;
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

- (WFSymbolIcon)initWithSymbolName:(id)a3 renderingMode:(id)a4 symbolColors:(id)a5 background:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_8:
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"WFIcon.m" lineNumber:137 description:{@"Invalid parameter not satisfying: %@", @"symbolColors"}];

    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"WFIcon.m" lineNumber:136 description:{@"Invalid parameter not satisfying: %@", @"symbolName"}];

  if (!v13)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v14)
  {
    goto LABEL_4;
  }

LABEL_9:
  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"WFIcon.m" lineNumber:138 description:{@"Invalid parameter not satisfying: %@", @"background"}];

LABEL_4:
  v23.receiver = self;
  v23.super_class = WFSymbolIcon;
  v15 = [(WFIcon *)&v23 _init];
  if (v15)
  {
    v16 = [v11 copy];
    symbolName = v15->_symbolName;
    v15->_symbolName = v16;

    objc_storeStrong(&v15->_symbolColors, a5);
    objc_storeStrong(&v15->_renderingMode, a4);
    objc_storeStrong(&v15->_background, a6);
    v18 = v15;
  }

  return v15;
}

- (WFSymbolIcon)initWithSymbolName:(id)a3 renderingMode:(id)a4 symbolColors:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = +[WFIconColorBackground clearBackground];
  v12 = [(WFSymbolIcon *)self initWithSymbolName:v10 renderingMode:v9 symbolColors:v8 background:v11];

  return v12;
}

- (WFSymbolIcon)initWithSymbolName:(id)a3 symbolColor:(id)a4 background:(id)a5
{
  v17 = *MEMORY[0x1E69E9840];
  v16 = a4;
  v8 = MEMORY[0x1E695DEC8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 arrayWithObjects:&v16 count:1];

  v13 = [(WFSymbolIcon *)self initWithSymbolName:v11 renderingMode:@"Monochrome" symbolColors:v12 background:v9, v16, v17];
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (WFSymbolIcon)initWithSymbolName:(id)a3 symbolColor:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = a4;
  v6 = MEMORY[0x1E695DEC8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v14 count:1];
  v10 = [WFIconColorBackground clearBackground:v14];

  v11 = [(WFSymbolIcon *)self initWithSymbolName:v8 renderingMode:@"Monochrome" symbolColors:v9 background:v10];
  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (WFSymbolIcon)initWithSymbolName:(id)a3 background:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = +[WFColor whiteColor];
  v13[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v10 = [(WFSymbolIcon *)self initWithSymbolName:v7 renderingMode:@"Monochrome" symbolColors:v9 background:v6];

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (WFSymbolIcon)initWithSymbolName:(id)a3
{
  v4 = a3;
  v5 = +[WFColor whiteColor];
  v6 = +[WFIconColorBackground clearBackground];
  v7 = [(WFSymbolIcon *)self initWithSymbolName:v4 symbolColor:v5 background:v6];

  return v7;
}

+ (id)symbolIconForActionIdentifier:(id)a3 bundleIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (symbolIconForActionIdentifier_bundleIdentifier__onceToken != -1)
  {
    dispatch_once(&symbolIconForActionIdentifier_bundleIdentifier__onceToken, &__block_literal_global_19594);
  }

  v7 = [symbolIconForActionIdentifier_bundleIdentifier__actionIdentifierMapping objectForKeyedSubscript:v5];
  if (v7 || ([symbolIconForActionIdentifier_bundleIdentifier__bundleIdentifierMapping objectForKeyedSubscript:v6], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v9 = [WFColor tintColorForBundleIdentifier:v6];
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