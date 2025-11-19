@interface SBHPortaledShadowedWidgetView
- (BOOL)hidesSourceViews;
- (SBHPortaledShadowedWidgetView)initWithContentView:(id)a3 shadowView:(id)a4 perspectiveEnabled:(BOOL)a5;
- (void)setHidesSourceViews:(BOOL)a3;
@end

@implementation SBHPortaledShadowedWidgetView

- (SBHPortaledShadowedWidgetView)initWithContentView:(id)a3 shadowView:(id)a4 perspectiveEnabled:(BOOL)a5
{
  v6.receiver = self;
  v6.super_class = SBHPortaledShadowedWidgetView;
  return [(SBHShadowedWidgetView *)&v6 initWithContentView:a3 shadowView:a4 perspectiveEnabled:a5];
}

- (void)setHidesSourceViews:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBHShadowedWidgetView *)self contentView];
  [v5 setHidesSourceView:v3];

  v6 = [(SBHShadowedWidgetView *)self shadowView];
  [v6 setHidesSourceView:v3];
}

- (BOOL)hidesSourceViews
{
  v2 = [(SBHShadowedWidgetView *)self contentView];
  v3 = [v2 hidesSourceView];

  return v3;
}

@end