@interface WGWidgetAttributionView
+ (id)widgetAttributionIDsInOrder;
+ (void)requestAttributedStringForIdentifier:(id)a3 withHandler:(id)a4;
- (WGWidgetAttributionView)initWithWidgetAttributedString:(id)a3;
- (id)_attributionFont;
- (id)_paragraphStyle;
- (void)_configureAttributedString;
- (void)layoutSubviews;
- (void)setLegibilityTextColor:(id)a3;
@end

@implementation WGWidgetAttributionView

+ (void)requestAttributedStringForIdentifier:(id)a3 withHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isEqualToString:@"com.apple.weather.WeatherAppTodayWidget"])
  {
    if (v6)
    {
      v7 = dispatch_get_global_queue(25, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __76__WGWidgetAttributionView_requestAttributedStringForIdentifier_withHandler___block_invoke;
      block[3] = &unk_279ED0C88;
      v13 = v6;
      dispatch_async(v7, block);

      v8 = v13;
LABEL_7:
    }
  }

  else if ([v5 isEqualToString:@"com.apple.stocks.widget"])
  {
    if (v6)
    {
      v9 = dispatch_get_global_queue(25, 0);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __76__WGWidgetAttributionView_requestAttributedStringForIdentifier_withHandler___block_invoke_2;
      v10[3] = &unk_279ED0C88;
      v11 = v6;
      dispatch_async(v9, v10);

      v8 = v11;
      goto LABEL_7;
    }
  }

  else if (v6)
  {
    (*(v6 + 2))(v6, 0);
  }
}

void __76__WGWidgetAttributionView_requestAttributedStringForIdentifier_withHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = WAAttributionString();
  (*(v1 + 16))(v1, v2);
}

void __76__WGWidgetAttributionView_requestAttributedStringForIdentifier_withHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = StocksAttributionString();
  (*(v1 + 16))(v1, v2);
}

+ (id)widgetAttributionIDsInOrder
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"com.apple.weather.WeatherAppTodayWidget";
  v4[1] = @"com.apple.stocks.widget";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

- (WGWidgetAttributionView)initWithWidgetAttributedString:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WGWidgetAttributionView;
  v5 = [(WGWidgetAttributionView *)&v10 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAB48]) initWithAttributedString:v4];
    widgetAttributedString = v5->_widgetAttributedString;
    v5->_widgetAttributedString = v6;

    [(WGWidgetAttributionView *)v5 _configureAttributedString];
    v8 = [(WGWidgetAttributionView *)v5 _attributionBackgroundColor];
    [(WGWidgetAttributionView *)v5 setBackgroundColor:v8];

    [(WGWidgetAttributionView *)v5 setOpaque:0];
    [(WGWidgetAttributionView *)v5 setEditable:0];
  }

  return v5;
}

- (id)_attributionFont
{
  v2 = [MEMORY[0x277CF0D60] preferredFontProvider];
  v3 = [v2 preferredFontForTextStyle:*MEMORY[0x277D76940] hiFontStyle:1];

  return v3;
}

- (id)_paragraphStyle
{
  v2 = objc_alloc_init(MEMORY[0x277D74240]);
  [v2 setAlignment:1];

  return v2;
}

- (void)_configureAttributedString
{
  v21[3] = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableAttributedString *)self->_widgetAttributedString length];
  v4 = *MEMORY[0x277D740C0];
  [(NSMutableAttributedString *)self->_widgetAttributedString removeAttribute:*MEMORY[0x277D740C0] range:0, v3];
  v5 = *MEMORY[0x277D740A8];
  [(NSMutableAttributedString *)self->_widgetAttributedString removeAttribute:*MEMORY[0x277D740A8] range:0, v3];
  widgetAttributedString = self->_widgetAttributedString;
  v7 = [(WGWidgetAttributionView *)self _attributionFont];
  [(NSMutableAttributedString *)widgetAttributedString addAttribute:v5 value:v7 range:0, v3];

  v8 = self->_widgetAttributedString;
  v9 = *MEMORY[0x277D74118];
  v10 = [(WGWidgetAttributionView *)self _paragraphStyle];
  [(NSMutableAttributedString *)v8 addAttribute:v9 value:v10 range:0, v3];

  v11 = [(WGWidgetAttributionView *)self legibilityTextColor];

  if (v11)
  {
    v12 = self->_widgetAttributedString;
    v13 = [(WGWidgetAttributionView *)self legibilityTextColor];
    [(NSMutableAttributedString *)v12 addAttribute:v4 value:v13 range:0, v3];

    v20[0] = v4;
    v14 = [(WGWidgetAttributionView *)self legibilityTextColor];
    v15 = *MEMORY[0x277D741F0];
    v21[0] = v14;
    v21[1] = &unk_28834F148;
    v16 = *MEMORY[0x277D741E8];
    v20[1] = v15;
    v20[2] = v16;
    v17 = [(WGWidgetAttributionView *)self legibilityTextColor];
    v18 = [v17 colorWithAlphaComponent:0.4];
    v21[2] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
    [(WGWidgetAttributionView *)self setLinkTextAttributes:v19];
  }

  [(WGWidgetAttributionView *)self setAttributedText:self->_widgetAttributedString];
  [(WGWidgetAttributionView *)self invalidateIntrinsicContentSize];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = WGWidgetAttributionView;
  [(WGWidgetAttributionView *)&v3 layoutSubviews];
  [(WGWidgetAttributionView *)self _configureAttributedString];
  [(WGWidgetAttributionView *)self sizeToFit];
}

- (void)setLegibilityTextColor:(id)a3
{
  v4 = [a3 copy];
  legibilityTextColor = self->_legibilityTextColor;
  self->_legibilityTextColor = v4;

  [(WGWidgetAttributionView *)self setNeedsLayout];
}

@end