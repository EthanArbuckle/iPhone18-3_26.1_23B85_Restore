@interface TVStyleFactory
+ (void)_registerDefaultStyles;
+ (void)initialize;
+ (void)registerStyle:(id)style withType:(int64_t)type inherited:(BOOL)inherited;
@end

@implementation TVStyleFactory

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    +[TVStyleFactory _registerDefaultStyles];
  }
}

+ (void)registerStyle:(id)style withType:(int64_t)type inherited:(BOOL)inherited
{
  inheritedCopy = inherited;
  if ((type - 1) >= 8)
  {
    v6 = 3;
  }

  else
  {
    v6 = type - 1;
  }

  [MEMORY[0x277D1B140] registerStyle:style aliasName:0 withType:v6 inherited:inheritedCopy];
}

+ (void)_registerDefaultStyles
{
  v14[4] = *MEMORY[0x277D85DE8];
  [MEMORY[0x277D1B140] unregisterStyles];
  [MEMORY[0x277D1B140] registerStyle:@"background-color" aliasName:0 withType:4 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"border-color" aliasName:0 withType:4 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"border-radius" withType:8 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"color" aliasName:0 withType:4 inherited:1];
  [MEMORY[0x277D1B140] registerStyle:@"column-count" aliasName:0 withType:0 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"row-count" aliasName:0 withType:0 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"font-family" aliasName:0 withType:3 inherited:1];
  [MEMORY[0x277D1B140] registerStyle:@"font-size" aliasName:0 withType:2 inherited:1];
  [MEMORY[0x277D1B140] registerStyle:@"font-weight" aliasName:0 withType:3 inherited:1];
  [MEMORY[0x277D1B140] registerStyle:@"font-stretch" aliasName:0 withType:3 inherited:1];
  [MEMORY[0x277D1B140] registerStyle:@"height" aliasName:*MEMORY[0x277D1AFD8] withType:2 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"max-height" aliasName:0 withType:2 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"max-width" aliasName:0 withType:2 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"min-height" aliasName:0 withType:2 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"min-width" aliasName:0 withType:2 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"text-align" aliasName:0 withType:3 inherited:1];
  [MEMORY[0x277D1B140] registerStyle:@"text-shadow" aliasName:0 withType:9 inherited:1];
  [MEMORY[0x277D1B140] registerStyle:@"transform" aliasName:0 withType:6 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"width" aliasName:*MEMORY[0x277D1AFE0] withType:2 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"text-transform" aliasName:0 withType:3 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-overflow" withType:3 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"line-height" withType:2 inherited:1];
  v2 = MEMORY[0x277D1B140];
  v14[0] = @"border-top-width";
  v14[1] = @"border-left-width";
  v14[2] = @"border-bottom-width";
  v14[3] = @"border-right-width";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:4];
  [v2 registerEdgeInsetStyle:@"border-width" aliasName:0 withPositionStyleNames:v3 inherited:0];

  v4 = MEMORY[0x277D1B140];
  v13[0] = @"margin-top";
  v13[1] = @"margin-left";
  v13[2] = @"margin-bottom";
  v13[3] = @"margin-right";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:4];
  [v4 registerEdgeInsetStyle:@"margin" aliasName:0 withPositionStyleNames:v5 inherited:0];

  v6 = MEMORY[0x277D1B140];
  v12[0] = @"padding-top";
  v12[1] = @"padding-left";
  v12[2] = @"padding-bottom";
  v12[3] = @"padding-right";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];
  [v6 registerEdgeInsetStyle:@"padding" aliasName:@"itml-padding" withPositionStyleNames:v7 inherited:0];

  v8 = MEMORY[0x277D1B140];
  v11[0] = @"tv-scrollable-bounds-inset-top";
  v11[1] = @"tv-scrollable-bounds-inset-left";
  v11[2] = @"tv-scrollable-bounds-inset-bottom";
  v11[3] = @"tv-scrollable-bounds-inset-right";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
  [v8 registerEdgeInsetStyle:@"tv-scrollable-bounds-inset" aliasName:0 withPositionStyleNames:v9 inherited:0];

  [MEMORY[0x277D1B140] registerStyle:@"padding-top" aliasName:@"itml-top-padding" withType:1 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"padding-left" aliasName:@"itml-left-padding" withType:1 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"padding-bottom" aliasName:@"itml-bottom-padding" withType:1 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"padding-right" aliasName:@"itml-right-padding" withType:1 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-background-highlight-style" withType:3 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-background-highlight-color" withType:4 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-focus-margin" aliasName:0 withType:7 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-img-upscale-factor" aliasName:0 withType:1 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-accepts-focus" aliasName:0 withType:3 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-align" aliasName:*MEMORY[0x277D1AFC0] withType:3 inherited:1];
  [MEMORY[0x277D1B140] registerStyle:@"tv-border-continuous" aliasName:0 withType:3 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-content-align" aliasName:@"itml-content-align" withType:3 inherited:1];
  [MEMORY[0x277D1B140] registerStyle:@"tv-focus-align" aliasName:0 withType:3 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-focus-size-increase" aliasName:0 withType:0 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-focus-transform" aliasName:0 withType:6 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-highlight-color" aliasName:@"itml-highlight-color" withType:4 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-img-treatment" aliasName:*MEMORY[0x277D1AFD0] withType:3 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-index-display" aliasName:0 withType:3 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-interitem-spacing" aliasName:@"itml-interitem-spacing" withType:2 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-line-spacing" aliasName:@"itml-line-spacing" withType:2 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-minimum-scale-factor" aliasName:@"itml-minimum-scale-factor" withType:1 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-placeholder" aliasName:@"itml-placeholder" withType:3 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-position" aliasName:*MEMORY[0x277D1AFC8] withType:3 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-progress-style" aliasName:0 withType:3 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-rating-style" aliasName:@"itml-rating-style" withType:3 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-search-style" aliasName:0 withType:3 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-shadow" aliasName:0 withType:9 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-text-highlight-style" aliasName:@"itml-text-hightlight-style" withType:3 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-highlight-style" aliasName:0 withType:3 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-scroll-mode" aliasName:0 withType:3 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-text-hyphenation-factor" aliasName:0 withType:1 inherited:1];
  [MEMORY[0x277D1B140] registerStyle:@"tv-text-max-lines" aliasName:*MEMORY[0x277D1B000] withType:0 inherited:0];
  v10 = *MEMORY[0x277D1B008];
  [MEMORY[0x277D1B140] registerStyle:@"tv-text-style" aliasName:*MEMORY[0x277D1B008] withType:3 inherited:1];
  [MEMORY[0x277D1B140] registerStyle:@"tv-tint-color" aliasName:@"itml-tint-color" withType:4 inherited:1];
  [MEMORY[0x277D1B140] registerStyle:@"tv-dark-tint-color" aliasName:0 withType:4 inherited:1];
  [MEMORY[0x277D1B140] registerStyle:@"tv-tint-color2" aliasName:@"itml-tint-color2" withType:4 inherited:1];
  [MEMORY[0x277D1B140] registerStyle:@"tv-transition" aliasName:*MEMORY[0x277D1B010] withType:3 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-transition-interval" aliasName:*MEMORY[0x277D1B018] withType:1 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-visual-effect" aliasName:@"itml-visual-effect" withType:3 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-column-color" aliasName:0 withType:4 inherited:1];
  [MEMORY[0x277D1B140] registerStyle:@"tv-column-padding" aliasName:0 withType:1 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-layer-flip-mode" aliasName:0 withType:3 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-symbol-point-size" aliasName:0 withType:2 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-symbol-weight" aliasName:0 withType:3 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-symbol-scale" aliasName:0 withType:3 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-symbol-text-style" aliasName:v10 withType:3 inherited:0];
  [MEMORY[0x277D1B140] registerHiddenStyle:@"tv-hidden"];
  [MEMORY[0x277D1B140] registerStyle:@"tv-group" aliasName:0 withType:3 inherited:0];
  [MEMORY[0x277D1B140] registerStyle:@"tv-max-lines" aliasName:0 withType:0 inherited:0];
}

@end