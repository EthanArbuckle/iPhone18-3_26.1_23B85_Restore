@interface GradientSectionDecorationView
- (void)applyLayoutAttributes:(id)a3;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation GradientSectionDecorationView

- (void)willMoveToSuperview:(id)a3
{
  v5 = a3;
  v6 = self;
  GradientSectionDecorationView.willMove(toSuperview:)(a3);
}

- (void)didMoveToSuperview
{
  v2 = self;
  GradientSectionDecorationView.didMoveToSuperview()();
}

- (void)layoutSubviews
{
  v2 = self;
  GradientSectionDecorationView.layoutSubviews()();
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  GradientSectionDecorationView.apply(_:)(v4);
}

@end