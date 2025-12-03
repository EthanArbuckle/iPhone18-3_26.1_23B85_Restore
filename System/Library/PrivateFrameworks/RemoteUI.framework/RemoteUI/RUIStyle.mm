@interface RUIStyle
+ (RUIStyle)sharedInstance;
+ (id)_staticButtonTitleColorWithTintColor:(id)color;
+ (id)defaultStyle;
+ (id)frontRowStyle;
+ (id)osloStyle;
+ (id)setupAssistantModalStyle;
+ (id)setupAssistantStyle;
- (NSDirectionalEdgeInsets)directionalLayoutMargins;
- (RUIStyle)init;
- (UIEdgeInsets)headerMargin;
- (id)boldButtonTitleColorWithTintColor:(id)color;
- (void)applyToNavigationBar:(id)bar;
- (void)applyToNavigationController:(id)controller;
@end

@implementation RUIStyle

- (RUIStyle)init
{
  v33.receiver = self;
  v33.super_class = RUIStyle;
  v2 = [(RUIStyle *)&v33 init];
  if (v2)
  {
    tableBackgroundColor = [MEMORY[0x277D75348] tableBackgroundColor];
    v4 = *(v2 + 2);
    *(v2 + 2) = tableBackgroundColor;

    tableCellBlueTextColor = [MEMORY[0x277D75348] tableCellBlueTextColor];
    v6 = *(v2 + 4);
    *(v2 + 4) = tableCellBlueTextColor;

    tableCellBlueTextColor2 = [MEMORY[0x277D75348] tableCellBlueTextColor];
    v8 = *(v2 + 3);
    *(v2 + 3) = tableCellBlueTextColor2;

    if (+[RUIPlatform isSolariumEnabled])
    {
      [MEMORY[0x277D75348] labelColor];
    }

    else
    {
      [MEMORY[0x277D75348] tableCellBlueTextColor];
    }
    v9 = ;
    v10 = *(v2 + 6);
    *(v2 + 6) = v9;

    _labelColor = [MEMORY[0x277D75348] _labelColor];
    v12 = *(v2 + 5);
    *(v2 + 5) = _labelColor;

    _labelColor2 = [MEMORY[0x277D75348] _labelColor];
    v14 = *(v2 + 7);
    *(v2 + 7) = _labelColor2;

    v15 = RemoteUIHeaderTextColor();
    v16 = *(v2 + 8);
    *(v2 + 8) = v15;

    v17 = RemoteUISubheaderTextColor();
    v18 = *(v2 + 9);
    *(v2 + 9) = v17;

    v19 = RemoteUIDetailHeaderTextColor();
    v20 = *(v2 + 10);
    *(v2 + 10) = v19;

    v21 = RemoteUIFooterTextColor();
    v22 = *(v2 + 11);
    *(v2 + 11) = v21;

    labelColor = [MEMORY[0x277D75348] labelColor];
    v24 = *(v2 + 12);
    *(v2 + 12) = labelColor;

    v25 = vdupq_n_s64(4uLL);
    *(v2 + 104) = v25;
    *(v2 + 120) = v25;
    if (+[RUIPlatform isSolariumEnabled])
    {
      v26 = 4;
    }

    else
    {
      v26 = 1;
    }

    *(v2 + 17) = v26;
    v27 = RemoteUIFooterFont();
    v28 = *(v2 + 19);
    *(v2 + 19) = v27;

    *(v2 + 33) = 0xBFF0000000000000;
    [v2 setSubHeaderTopMargin:0.0];
    [v2 setHeaderImagePadding:12.0];
    v29 = [MEMORY[0x277D74300] systemFontOfSize:19.0 weight:*MEMORY[0x277D74410]];
    [v2 setNavBarButtonLabelFont:v29];

    [v2 setNavBarLabelSpacingWithImage:8.0];
    [v2 setFooterTopMargin:7.0];
    [v2 setUseNonOBStyleButton:0];
    [v2 setHeaderMargin:{0.0, 0.0, 8.0, 0.0}];
    [v2 setHeaderContainerSideMargin:20.0];
    [v2 setSectionHeaderHeight:*MEMORY[0x277D76F30]];
    _secondaryLabelColor = [MEMORY[0x277D75348] _secondaryLabelColor];
    [v2 setSpinnerLabelColor:_secondaryLabelColor];

    v31 = [MEMORY[0x277D74300] systemFontOfSize:15.0];
    [v2 setSpinnerLabelFont:v31];

    [v2 setShowsImageInLoadingNavbar:1];
    [v2 setUsesCustomLayoutMargins:0];
    [v2 setDirectionalLayoutMargins:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];
  }

  return v2;
}

+ (RUIStyle)sharedInstance
{
  v3 = sharedInstance_instances;
  if (!sharedInstance_instances)
  {
    v4 = objc_opt_new();
    v5 = sharedInstance_instances;
    sharedInstance_instances = v4;

    v3 = sharedInstance_instances;
  }

  v6 = NSStringFromClass(self);
  v7 = [v3 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = objc_opt_new();
    v8 = sharedInstance_instances;
    v9 = NSStringFromClass(self);
    [v8 setObject:v7 forKeyedSubscript:v9];
  }

  return v7;
}

+ (id)defaultStyle
{
  if (defaultStyle_onceToken != -1)
  {
    +[RUIStyle defaultStyle];
  }

  if (defaultStyle_isATV == 1)
  {
    v2 = +[RUIStyle frontRowStyle];
  }

  else if (defaultStyle_isAppleWatch == 1)
  {
    v2 = +[RUIStyle watchDefaultStyle];
  }

  else
  {
    v2 = objc_opt_new();
  }

  return v2;
}

uint64_t __24__RUIStyle_defaultStyle__block_invoke()
{
  result = MGGetSInt32Answer();
  defaultStyle_isATV = result == 4;
  defaultStyle_isAppleWatch = result == 6;
  return result;
}

+ (id)osloStyle
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)setupAssistantStyle
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)setupAssistantModalStyle
{
  v2 = objc_opt_new();

  return v2;
}

+ (id)frontRowStyle
{
  v2 = objc_opt_new();

  return v2;
}

- (void)applyToNavigationController:(id)controller
{
  navigationBar = [controller navigationBar];
  [(RUIStyle *)self applyToNavigationBar:navigationBar];
}

- (void)applyToNavigationBar:(id)bar
{
  v7 = *MEMORY[0x277D85DE8];
  barCopy = bar;
  [barCopy setRequestedContentSize:3];
  if (_isInternalInstall())
  {
    v4 = _RUILoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = barCopy;
      _os_log_impl(&dword_21B93D000, v4, OS_LOG_TYPE_DEFAULT, "applyToNavigationBar: %@", &v5, 0xCu);
    }
  }
}

- (id)boldButtonTitleColorWithTintColor:(id)color
{
  colorCopy = color;
  if (colorCopy)
  {
    v4 = objc_alloc(MEMORY[0x277D75348]);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__RUIStyle_boldButtonTitleColorWithTintColor___block_invoke;
    v7[3] = &unk_2782E8210;
    v8 = colorCopy;
    v5 = [v4 initWithDynamicProvider:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_staticButtonTitleColorWithTintColor:(id)color
{
  cGColor = [color CGColor];
  Components = CGColorGetComponents(cGColor);
  NumberOfComponents = CGColorGetNumberOfComponents(cGColor);
  v6 = *Components;
  v7 = *Components;
  if (NumberOfComponents != 2)
  {
    v7 = Components[1];
    v6 = Components[2];
  }

  if ((v7 * 255.0 * 587.0 + *Components * 255.0 * 299.0 + v6 * 255.0 * 114.0) / 1000.0 >= 125.0)
  {
    [MEMORY[0x277D75348] blackColor];
  }

  else
  {
    [MEMORY[0x277D75348] whiteColor];
  }
  v8 = ;

  return v8;
}

- (UIEdgeInsets)headerMargin
{
  top = self->_headerMargin.top;
  left = self->_headerMargin.left;
  bottom = self->_headerMargin.bottom;
  right = self->_headerMargin.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (NSDirectionalEdgeInsets)directionalLayoutMargins
{
  top = self->_directionalLayoutMargins.top;
  leading = self->_directionalLayoutMargins.leading;
  bottom = self->_directionalLayoutMargins.bottom;
  trailing = self->_directionalLayoutMargins.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

@end