@interface ColorSectionDecorationView
- (void)applyLayoutAttributes:(id)a3;
- (void)didMoveToSuperview;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation ColorSectionDecorationView

- (void)willMoveToSuperview:(id)a3
{
  v5 = a3;
  v6 = self;
  ColorSectionDecorationView.willMove(toSuperview:)(a3);
}

- (void)didMoveToSuperview
{
  v2 = self;
  ColorSectionDecorationView.didMoveToSuperview()();
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  ColorSectionDecorationView.apply(_:)(v4);
}

@end