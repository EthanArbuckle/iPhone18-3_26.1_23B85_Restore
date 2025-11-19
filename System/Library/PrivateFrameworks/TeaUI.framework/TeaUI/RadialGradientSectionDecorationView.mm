@interface RadialGradientSectionDecorationView
- (void)applyLayoutAttributes:(id)a3;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation RadialGradientSectionDecorationView

- (void)willMoveToSuperview:(id)a3
{
  v5 = a3;
  v6 = self;
  RadialGradientSectionDecorationView.willMove(toSuperview:)(a3);
}

- (void)didMoveToSuperview
{
  v2 = self;
  RadialGradientSectionDecorationView.didMoveToSuperview()();
}

- (void)layoutSubviews
{
  v2 = self;
  RadialGradientSectionDecorationView.layoutSubviews()();
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  RadialGradientSectionDecorationView.apply(_:)(v4);
}

@end