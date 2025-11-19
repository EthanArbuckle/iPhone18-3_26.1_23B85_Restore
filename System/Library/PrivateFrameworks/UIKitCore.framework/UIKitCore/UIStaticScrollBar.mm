@interface UIStaticScrollBar
@end

@implementation UIStaticScrollBar

id __44___UIStaticScrollBar__setupSubviewsIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [(UIButton *)_UIStaticScrollbarButton buttonWithType:0];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  if (_UISolariumEnabled() && ([*(a1 + 32) traitCollection], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "userInterfaceIdiom"), v5, v6 == 3))
  {
    v7 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleCallout" scale:2];
    v8 = [UIImageSymbolConfiguration configurationWithWeight:6];
    v9 = [v7 configurationByApplyingConfiguration:v8];
  }

  else
  {
    v9 = [UIImageSymbolConfiguration configurationWithTextStyle:@"UICTFontTextStyleEmphasizedCallout" scale:3];
  }

  v10 = [UIImage systemImageNamed:v3 withConfiguration:v9];

  v11 = [v10 imageWithRenderingMode:2];
  [v4 setImage:v11 forState:0];

  [v4 addTarget:*(a1 + 32) action:sel_buttonTapped_ forControlEvents:64];

  return v4;
}

@end