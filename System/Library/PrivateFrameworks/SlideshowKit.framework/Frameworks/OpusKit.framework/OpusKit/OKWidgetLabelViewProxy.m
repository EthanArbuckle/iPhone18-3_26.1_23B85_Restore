@interface OKWidgetLabelViewProxy
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)a3;
- (BOOL)prepareForDisplay:(BOOL)a3;
- (BOOL)prepareForUnload:(BOOL)a3;
- (BOOL)prepareForWarmup:(BOOL)a3;
- (OKWidgetLabelViewProxy)initWithWidget:(id)a3;
- (float)settingFontSize;
- (id)layoutSettingsKeys;
- (id)settingFontName;
- (id)settingText;
- (id)settingTextColor;
- (id)valueForUndefinedKey:(id)a3;
- (int64_t)settingTextAlignment;
- (void)dealloc;
- (void)setSettingFontName:(id)a3;
- (void)setSettingFontSize:(float)a3;
- (void)setSettingText:(id)a3;
- (void)setSettingTextAlignment:(int64_t)a3;
- (void)setSettingTextBackgroundColor:(id)a3;
- (void)setSettingTextColor:(id)a3;
@end

@implementation OKWidgetLabelViewProxy

- (OKWidgetLabelViewProxy)initWithWidget:(id)a3
{
  v6.receiver = self;
  v6.super_class = OKWidgetLabelViewProxy;
  v3 = [(OKWidgetViewProxy *)&v6 initWithWidget:a3];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    [(OFUIView *)[(OKWidgetViewProxy *)v3 contentView] bounds];
    v3->_label = [v4 initWithFrame:?];
    [-[OKWidgetLabelViewProxy label](v3 "label")];
    [-[OKWidgetLabelViewProxy label](v3 "label")];
    [-[OKWidgetLabelViewProxy label](v3 "label")];
    [-[OKWidgetLabelViewProxy label](v3 "label")];
    [-[OKWidgetLabelViewProxy label](v3 "label")];
    [(OFUIView *)[(OKWidgetViewProxy *)v3 contentView] addSubview:[(OKWidgetLabelViewProxy *)v3 label]];
    if ([[(OKPresentationCanvas *)[(OKWidgetViewProxy *)v3 widget] presentation] enableDisplayDebugging])
    {
      [objc_msgSend(-[OKWidgetLabelViewProxy label](v3 "label")];
      [objc_msgSend(-[OKWidgetLabelViewProxy label](v3 "label")];
      [-[OKWidgetLabelViewProxy label](v3 "label")];
    }
  }

  return v3;
}

- (void)dealloc
{
  label = self->_label;
  if (label)
  {

    self->_label = 0;
  }

  v4.receiver = self;
  v4.super_class = OKWidgetLabelViewProxy;
  [(OKWidgetView *)&v4 dealloc];
}

- (id)layoutSettingsKeys
{
  v4.receiver = self;
  v4.super_class = OKWidgetLabelViewProxy;
  v2 = [MEMORY[0x277CBEB18] arrayWithArray:{-[OKWidgetViewProxy layoutSettingsKeys](&v4, sel_layoutSettingsKeys)}];
  [v2 addObjectsFromArray:&unk_287AF2578];
  return v2;
}

+ (id)supportedSettings
{
  v26[10] = *MEMORY[0x277D85DE8];
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___OKWidgetLabelViewProxy;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v4, sel_supportedSettings)}];
  v25[0] = @"fontFileName";
  v23 = @"type";
  v24 = &unk_287AF0E78;
  v26[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
  v25[1] = @"fontSize";
  v21[0] = @"type";
  v21[1] = @"default";
  v22[0] = &unk_287AF0E90;
  v22[1] = &unk_287AF0EA8;
  v26[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v25[2] = @"fontName";
  v19[1] = @"default";
  v20[0] = &unk_287AF0E78;
  v19[0] = @"type";
  v20[1] = [objc_msgSend(MEMORY[0x277D74300] systemFontOfSize:{12.0), "fontName"}];
  v26[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v25[3] = @"textColor";
  v17[0] = @"type";
  v17[1] = @"jsExport";
  v18[0] = &unk_287AF0EC0;
  v18[1] = @"readwrite";
  v17[2] = @"default";
  v18[2] = [MEMORY[0x277D75348] whiteColor];
  v26[3] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
  v25[4] = @"textBackgroundColor";
  v15[1] = @"default";
  v16[0] = &unk_287AF0EC0;
  v15[0] = @"type";
  v16[1] = [MEMORY[0x277D75348] clearColor];
  v26[4] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v25[5] = @"text";
  v13[0] = @"type";
  v13[1] = @"jsExport";
  v14[0] = &unk_287AF0E78;
  v14[1] = @"readwrite";
  v13[2] = @"default";
  v14[2] = [MEMORY[0x277CBEB68] null];
  v26[5] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v25[6] = @"attributedText";
  v11[0] = @"type";
  v11[1] = @"jsExport";
  v12[0] = &unk_287AF0ED8;
  v12[1] = @"readwrite";
  v11[2] = @"default";
  v12[2] = [MEMORY[0x277CBEB68] null];
  v26[6] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  v25[7] = @"textAlignment";
  v9[0] = @"type";
  v9[1] = @"mapping";
  v10[0] = &unk_287AF0EF0;
  v10[1] = &unk_287AF2090;
  v9[2] = @"default";
  v10[2] = @"left";
  v26[7] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
  v25[8] = @"textShadowColor";
  v7[1] = @"default";
  v8[0] = &unk_287AF0EC0;
  v7[0] = @"type";
  v8[1] = [MEMORY[0x277D75348] clearColor];
  v26[8] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v25[9] = @"textShadowOffset";
  v5[1] = @"default";
  v6[0] = &unk_287AF0F80;
  v5[0] = @"type";
  v6[1] = [MEMORY[0x277CCAE60] valueWithCGSize:{0.0, -1.0}];
  v26[9] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v26, v25, 10)}];
  return v2;
}

- (id)valueForUndefinedKey:(id)a3
{
  v4.receiver = self;
  v4.super_class = OKWidgetLabelViewProxy;
  return [(OKWidgetViewProxy *)&v4 valueForUndefinedKey:a3];
}

- (int64_t)settingTextAlignment
{
  v2 = [(OKWidgetLabelViewProxy *)self label];

  return [v2 textAlignment];
}

- (void)setSettingTextAlignment:(int64_t)a3
{
  v4 = [(OKWidgetLabelViewProxy *)self label];

  [v4 setTextAlignment:a3];
}

- (id)settingFontName
{
  v2 = [-[OKWidgetLabelViewProxy label](self "label")];

  return [v2 fontName];
}

- (void)setSettingFontName:(id)a3
{
  v5 = [-[OKWidgetLabelViewProxy label](self "label")];
  if (v5)
  {
    v6 = MEMORY[0x277D74300];
    [v5 pointSize];
    v8 = v6;
  }

  else
  {
    [(OKWidgetViewProxy *)self layoutFactor];
    v8 = MEMORY[0x277D74300];
    if (v9 >= v10)
    {
      v9 = v10;
    }

    v7 = v9 * 12.0;
  }

  v11 = [v8 fontWithName:a3 size:v7];
  v12 = [(OKWidgetLabelViewProxy *)self label];

  [v12 setFont:v11];
}

- (float)settingFontSize
{
  [(OKWidgetViewProxy *)self layoutFactor];
  v4 = v3;
  v6 = v5;
  [objc_msgSend(-[OKWidgetLabelViewProxy label](self "label")];
  if (v4 >= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  return v7 / v8;
}

- (void)setSettingFontSize:(float)a3
{
  [(OKWidgetViewProxy *)self layoutFactor];
  v6 = v5;
  v8 = v7;
  v9 = [-[OKWidgetLabelViewProxy label](self "label")];
  if (v9)
  {
    if (v6 >= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v6;
    }

    v11 = [v9 fontWithSize:v10 * a3];
  }

  else
  {
    if (v6 >= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v6;
    }

    v11 = [MEMORY[0x277D74300] systemFontOfSize:v12 * a3];
  }

  v13 = v11;
  v14 = [(OKWidgetLabelViewProxy *)self label];

  [v14 setFont:v13];
}

- (id)settingTextColor
{
  v2 = [(OKWidgetLabelViewProxy *)self label];

  return [v2 textColor];
}

- (void)setSettingTextColor:(id)a3
{
  v4 = [(OKWidgetLabelViewProxy *)self label];

  [v4 setTextColor:a3];
}

- (void)setSettingTextBackgroundColor:(id)a3
{
  v4 = [(OKWidgetLabelViewProxy *)self label];

  [v4 setBackgroundColor:a3];
}

- (id)settingText
{
  v2 = [(OKWidgetLabelViewProxy *)self label];

  return [v2 text];
}

- (void)setSettingText:(id)a3
{
  v4 = [(OKWidgetLabelViewProxy *)self label];

  [v4 setText:a3];
}

- (BOOL)prepareForDisplay:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = OKWidgetLabelViewProxy;
  return [(OKWidgetViewProxy *)&v4 prepareForDisplay:a3];
}

- (BOOL)prepareForWarmup:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = OKWidgetLabelViewProxy;
  return [(OKWidgetViewProxy *)&v4 prepareForWarmup:a3];
}

- (BOOL)prepareForUnload:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = OKWidgetLabelViewProxy;
  return [(OKWidgetViewProxy *)&v4 prepareForUnload:a3];
}

+ (void)setupJavascriptContext:(id)a3
{
  [a3 setObject:objc_opt_class() forKeyedSubscript:@"OKWidgetLabelView"];
  v4 = objc_opt_class();

  [OKSettings exportClassSettings:v4 toJavaScriptContext:a3];
}

@end