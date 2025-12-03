@interface SBHPortaledShadowedWidgetView
- (BOOL)hidesSourceViews;
- (SBHPortaledShadowedWidgetView)initWithContentView:(id)view shadowView:(id)shadowView perspectiveEnabled:(BOOL)enabled;
- (void)setHidesSourceViews:(BOOL)views;
@end

@implementation SBHPortaledShadowedWidgetView

- (SBHPortaledShadowedWidgetView)initWithContentView:(id)view shadowView:(id)shadowView perspectiveEnabled:(BOOL)enabled
{
  v6.receiver = self;
  v6.super_class = SBHPortaledShadowedWidgetView;
  return [(SBHShadowedWidgetView *)&v6 initWithContentView:view shadowView:shadowView perspectiveEnabled:enabled];
}

- (void)setHidesSourceViews:(BOOL)views
{
  viewsCopy = views;
  contentView = [(SBHShadowedWidgetView *)self contentView];
  [contentView setHidesSourceView:viewsCopy];

  shadowView = [(SBHShadowedWidgetView *)self shadowView];
  [shadowView setHidesSourceView:viewsCopy];
}

- (BOOL)hidesSourceViews
{
  contentView = [(SBHShadowedWidgetView *)self contentView];
  hidesSourceView = [contentView hidesSourceView];

  return hidesSourceView;
}

@end