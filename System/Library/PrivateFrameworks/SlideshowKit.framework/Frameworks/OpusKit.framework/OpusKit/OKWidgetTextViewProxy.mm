@interface OKWidgetTextViewProxy
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)context;
- (BOOL)prepareForDisplay:(BOOL)display;
- (BOOL)prepareForUnload:(BOOL)unload;
- (BOOL)prepareForWarmup:(BOOL)warmup;
- (CGRect)textViewFrame;
- (OKWidgetTextViewProxy)initWithWidget:(id)widget;
- (UIEdgeInsets)settingTextEdgeInsets;
- (UIEdgeInsets)textEdgeInsets;
- (id)layoutSettingsKeys;
- (id)valueForUndefinedKey:(id)key;
- (void)dealloc;
- (void)setSettingTextEdgeInsets:(UIEdgeInsets)insets;
@end

@implementation OKWidgetTextViewProxy

- (OKWidgetTextViewProxy)initWithWidget:(id)widget
{
  v4.receiver = self;
  v4.super_class = OKWidgetTextViewProxy;
  return [(OKWidgetViewProxy *)&v4 initWithWidget:widget];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = OKWidgetTextViewProxy;
  [(OKWidgetView *)&v2 dealloc];
}

- (CGRect)textViewFrame
{
  [(OKWidgetTextViewProxy *)self bounds];
  v4 = v3 + self->_textEdgeInsets.left;
  [(OKWidgetTextViewProxy *)self bounds];
  v6 = self->_textEdgeInsets.top + v5;
  [(OKWidgetTextViewProxy *)self bounds];
  v8 = v7;
  [(OKWidgetTextViewProxy *)self bounds];
  v10 = v8 - v9 - self->_textEdgeInsets.left - self->_textEdgeInsets.right;
  [(OKWidgetTextViewProxy *)self bounds];
  v12 = v11;
  [(OKWidgetTextViewProxy *)self bounds];
  v14 = v12 - v13 - self->_textEdgeInsets.top - self->_textEdgeInsets.bottom;
  v15 = v4;
  v16 = v6;
  v17 = v10;

  return CGRectIntegral(*&v15);
}

- (UIEdgeInsets)textEdgeInsets
{
  top = self->_textEdgeInsets.top;
  left = self->_textEdgeInsets.left;
  bottom = self->_textEdgeInsets.bottom;
  right = self->_textEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (id)layoutSettingsKeys
{
  v4.receiver = self;
  v4.super_class = OKWidgetTextViewProxy;
  v2 = [MEMORY[0x277CBEB18] arrayWithArray:{-[OKWidgetViewProxy layoutSettingsKeys](&v4, sel_layoutSettingsKeys)}];
  [v2 addObjectsFromArray:&unk_287AF2560];
  return v2;
}

+ (id)supportedSettings
{
  v24[9] = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___OKWidgetTextViewProxy;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v4, sel_supportedSettings)}];
  v23[0] = @"textAlignment";
  v21[0] = @"type";
  v21[1] = @"mapping";
  v22[0] = &unk_287AF0CE0;
  v22[1] = &unk_287AF2068;
  v21[2] = @"default";
  v22[2] = @"left";
  v24[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v23[1] = @"fontName";
  v19[1] = @"default";
  v20[0] = &unk_287AF0D70;
  v19[0] = @"type";
  v20[1] = [objc_msgSend(MEMORY[0x277D74300] systemFontOfSize:{12.0), "fontName"}];
  v24[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v23[2] = @"fontSize";
  v17[0] = @"type";
  v17[1] = @"default";
  v18[0] = &unk_287AF0D88;
  v18[1] = &unk_287AF0DA0;
  v24[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v23[3] = @"textEdgeInsets";
  v15[1] = @"default";
  v16[0] = &unk_287AF0DB8;
  v15[0] = @"type";
  v16[1] = [MEMORY[0x277CCAE60] valueWithUIEdgeInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];
  v24[3] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v23[4] = @"textColor";
  v13[1] = @"default";
  v14[0] = &unk_287AF0DD0;
  v13[0] = @"type";
  v14[1] = [MEMORY[0x277D75348] whiteColor];
  v24[4] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v23[5] = @"textBackgroundColor";
  v11[1] = @"default";
  v12[0] = &unk_287AF0DD0;
  v11[0] = @"type";
  v12[1] = [MEMORY[0x277D75348] clearColor];
  v24[5] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v23[6] = @"text";
  v9[1] = @"default";
  v10[0] = &unk_287AF0D70;
  v9[0] = @"type";
  v10[1] = [MEMORY[0x277CBEB68] null];
  v24[6] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v23[7] = @"attributedText";
  v7[1] = @"default";
  v8[0] = &unk_287AF0DE8;
  v7[0] = @"type";
  v8[1] = [MEMORY[0x277CBEB68] null];
  v24[7] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v23[8] = @"scrollEnabled";
  v5[0] = @"type";
  v5[1] = @"jsExport";
  v6[0] = &unk_287AF0E00;
  v6[1] = @"readwrite";
  v5[2] = @"default";
  v6[2] = MEMORY[0x277CBEC28];
  v24[8] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v24, v23, 9)}];
  return v2;
}

- (id)valueForUndefinedKey:(id)key
{
  v4.receiver = self;
  v4.super_class = OKWidgetTextViewProxy;
  return [(OKWidgetViewProxy *)&v4 valueForUndefinedKey:key];
}

- (UIEdgeInsets)settingTextEdgeInsets
{
  [(OKWidgetViewProxy *)self layoutFactor];
  v4 = self->_textEdgeInsets.top / v3;
  v5 = self->_textEdgeInsets.bottom / v3;
  v7 = self->_textEdgeInsets.left / v6;
  v8 = self->_textEdgeInsets.right / v6;
  v9 = v4;
  result.right = v8;
  result.bottom = v5;
  result.left = v7;
  result.top = v9;
  return result;
}

- (void)setSettingTextEdgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  [(OKWidgetViewProxy *)self layoutFactor];
  self->_textEdgeInsets.top = top * v8;
  self->_textEdgeInsets.left = left * v9;
  self->_textEdgeInsets.bottom = bottom * v8;
  self->_textEdgeInsets.right = right * v9;

  [(OKWidgetTextViewProxy *)self setNeedsLayout];
}

- (BOOL)prepareForDisplay:(BOOL)display
{
  v4.receiver = self;
  v4.super_class = OKWidgetTextViewProxy;
  return [(OKWidgetViewProxy *)&v4 prepareForDisplay:display];
}

- (BOOL)prepareForWarmup:(BOOL)warmup
{
  v4.receiver = self;
  v4.super_class = OKWidgetTextViewProxy;
  return [(OKWidgetViewProxy *)&v4 prepareForWarmup:warmup];
}

- (BOOL)prepareForUnload:(BOOL)unload
{
  v4.receiver = self;
  v4.super_class = OKWidgetTextViewProxy;
  return [(OKWidgetViewProxy *)&v4 prepareForUnload:unload];
}

+ (void)setupJavascriptContext:(id)context
{
  [context setObject:objc_opt_class() forKeyedSubscript:@"OKWidgetTextView"];
  v4 = objc_opt_class();

  [OKSettings exportClassSettings:v4 toJavaScriptContext:context];
}

@end