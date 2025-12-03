@interface OKWidgetLabelView
+ (id)supportedSettings;
- (BOOL)settingAdjustsFontSizeToFitWidth;
- (CGSize)settingTextShadowOffset;
- (OKWidgetLabelView)initWithWidget:(id)widget;
- (id)settingAttributedText;
- (id)settingTextShadowColor;
- (int64_t)settingBaselineAdjustment;
- (int64_t)settingLineBreakMode;
- (int64_t)settingNumberOfLine;
- (void)setSettingAdjustsFontSizeToFitWidth:(BOOL)width;
- (void)setSettingAttributedText:(id)text;
- (void)setSettingBaselineAdjustment:(int64_t)adjustment;
- (void)setSettingFontFileName:(id)name;
- (void)setSettingLineBreakMode:(int64_t)mode;
- (void)setSettingMinimumScaleFactor:(float)factor;
- (void)setSettingNumberOfLines:(int64_t)lines;
- (void)setSettingTextShadowColor:(id)color;
- (void)setSettingTextShadowOffset:(CGSize)offset;
@end

@implementation OKWidgetLabelView

- (OKWidgetLabelView)initWithWidget:(id)widget
{
  v6.receiver = self;
  v6.super_class = OKWidgetLabelView;
  v3 = [(OKWidgetLabelViewProxy *)&v6 initWithWidget:widget];
  v4 = v3;
  if (v3)
  {
    [-[OKWidgetLabelViewProxy label](v3 "label")];
  }

  return v4;
}

+ (id)supportedSettings
{
  v16[5] = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___OKWidgetLabelView;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v4, sel_supportedSettings)}];
  v15[0] = @"baselineAdjustment";
  v13[0] = @"type";
  v13[1] = @"mapping";
  v14[0] = &unk_287AF0F98;
  v14[1] = &unk_287AF20B8;
  v13[2] = @"default";
  v14[2] = @"alignBaselines";
  v16[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v15[1] = @"lineBreakMode";
  v11[0] = @"type";
  v11[1] = @"mapping";
  v12[0] = &unk_287AF0F98;
  v12[1] = &unk_287AF20E0;
  v11[2] = @"default";
  v12[2] = @"truncatingTail";
  v16[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  v15[2] = @"numberOfLines";
  v9[0] = @"type";
  v9[1] = @"default";
  v10[0] = &unk_287AF1040;
  v10[1] = &unk_287AF1058;
  v16[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v15[3] = @"adjustsFontSizeToFitWidth";
  v7[0] = @"type";
  v7[1] = @"default";
  v8[0] = &unk_287AF1070;
  v8[1] = MEMORY[0x277CBEC28];
  v16[3] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v15[4] = @"minimumScaleFactor";
  v5[0] = @"type";
  v5[1] = @"default";
  v6[0] = &unk_287AF1088;
  v6[1] = &unk_287AF2358;
  v16[4] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v16, v15, 5)}];
  return v2;
}

- (void)setSettingFontFileName:(id)name
{
  v5 = [MEMORY[0x277CBEBC0] URLWithString:?];
  v6 = objc_alloc_init(MEMORY[0x277CCAA00]);
  if (([v6 fileExistsAtPath:{objc_msgSend(v5, "path")}] & 1) == 0)
  {
    v7 = [objc_msgSend(objc_msgSend(-[OKWidgetViewProxy pageViewController](self "pageViewController")];
    stringByDeletingPathExtension = [name stringByDeletingPathExtension];
    if ([objc_msgSend(name "pathExtension")])
    {
      pathExtension = [name pathExtension];
    }

    else
    {
      pathExtension = @"ttf";
    }

    v5 = [v7 URLForResource:stringByDeletingPathExtension withExtension:pathExtension];
  }

  if (v6)
  {
  }

  v10 = CGDataProviderCreateWithFilename([objc_msgSend(v5 "path")]);
  v11 = CGFontCreateWithDataProvider(v10);
  v12 = CGFontCopyPostScriptName(v11);
  error = 0;
  CTFontManagerRegisterGraphicsFont(v11, &error);
  CGDataProviderRelease(v10);
  CGFontRelease(v11);
  [-[OKWidgetLabelViewProxy label](self "label")];
}

- (void)setSettingBaselineAdjustment:(int64_t)adjustment
{
  label = [(OKWidgetLabelViewProxy *)self label];

  [label setBaselineAdjustment:adjustment];
}

- (int64_t)settingBaselineAdjustment
{
  label = [(OKWidgetLabelViewProxy *)self label];

  return [label baselineAdjustment];
}

- (id)settingTextShadowColor
{
  label = [(OKWidgetLabelViewProxy *)self label];

  return [label shadowColor];
}

- (void)setSettingTextShadowColor:(id)color
{
  label = [(OKWidgetLabelViewProxy *)self label];

  [label setShadowColor:color];
}

- (CGSize)settingTextShadowOffset
{
  label = [(OKWidgetLabelViewProxy *)self label];

  [label shadowOffset];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setSettingTextShadowOffset:(CGSize)offset
{
  height = offset.height;
  width = offset.width;
  label = [(OKWidgetLabelViewProxy *)self label];

  [label setShadowOffset:{width, height}];
}

- (int64_t)settingNumberOfLine
{
  label = [(OKWidgetLabelViewProxy *)self label];

  return [label numberOfLines];
}

- (void)setSettingNumberOfLines:(int64_t)lines
{
  label = [(OKWidgetLabelViewProxy *)self label];

  [label setNumberOfLines:lines];
}

- (BOOL)settingAdjustsFontSizeToFitWidth
{
  label = [(OKWidgetLabelViewProxy *)self label];

  return [label adjustsFontSizeToFitWidth];
}

- (void)setSettingAdjustsFontSizeToFitWidth:(BOOL)width
{
  widthCopy = width;
  label = [(OKWidgetLabelViewProxy *)self label];

  [label setAdjustsFontSizeToFitWidth:widthCopy];
}

- (int64_t)settingLineBreakMode
{
  label = [(OKWidgetLabelViewProxy *)self label];

  return [label lineBreakMode];
}

- (void)setSettingLineBreakMode:(int64_t)mode
{
  label = [(OKWidgetLabelViewProxy *)self label];

  [label setLineBreakMode:mode];
}

- (void)setSettingMinimumScaleFactor:(float)factor
{
  factorCopy = factor;
  label = [(OKWidgetLabelViewProxy *)self label];

  [label setMinimumScaleFactor:factorCopy];
}

- (id)settingAttributedText
{
  label = [(OKWidgetLabelViewProxy *)self label];

  return [label attributedText];
}

- (void)setSettingAttributedText:(id)text
{
  label = [(OKWidgetLabelViewProxy *)self label];

  [label setAttributedText:text];
}

@end