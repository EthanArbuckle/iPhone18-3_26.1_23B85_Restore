@interface WGWidgetListEditViewFavoritesTableCellView
- (WGWidgetListEditViewFavoritesTableCellView)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation WGWidgetListEditViewFavoritesTableCellView

- (WGWidgetListEditViewFavoritesTableCellView)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v30[2] = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = WGWidgetListEditViewFavoritesTableCellView;
  v4 = [(WGWidgetListEditViewFavoritesTableCellView *)&v29 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(WGWidgetListEditViewFavoritesTableCellView *)v4 contentView];
    v7 = [MEMORY[0x277D755B8] systemImageNamed:@"plus.circle.fill"];
    v8 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v7];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [MEMORY[0x277D75348] colorWithRed:0.784313725 green:0.780392157 blue:0.8 alpha:1.0];
    [v8 setTintColor:v9];

    v10 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = _os_feature_enabled_impl();
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = v12;
    if (v11)
    {
      v14 = @"WIDGETS_EDIT_DRAG_TO_PIN_LEGACY";
    }

    else
    {
      v14 = @"WIDGETS_EDIT_DRAG_TO_PIN";
    }

    v15 = [v12 localizedStringForKey:v14 value:&stru_2883435D8 table:@"Widgets"];
    [v10 setText:v15];

    v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [v10 setFont:v16];

    v17 = [MEMORY[0x277D75348] colorWithWhite:0.596078431 alpha:1.0];
    [v10 setTextColor:v17];

    v18 = objc_alloc(MEMORY[0x277D75A68]);
    v30[0] = v8;
    v30[1] = v10;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
    v20 = [v18 initWithArrangedSubviews:v19];

    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v20 setAxis:0];
    [v20 setAlignment:2];
    [v20 setSpacing:8.0];
    [v6 addSubview:v20];
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v22 = [v20 centerXAnchor];
    v23 = [v6 centerXAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    [v21 addObject:v24];

    v25 = [v20 centerYAnchor];
    v26 = [v6 centerYAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    [v21 addObject:v27];

    [MEMORY[0x277CCAAD0] activateConstraints:v21];
  }

  return v5;
}

@end