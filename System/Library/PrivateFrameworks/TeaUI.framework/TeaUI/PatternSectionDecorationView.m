@interface PatternSectionDecorationView
- (void)applyLayoutAttributes:(id)a3;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
- (void)willMoveToSuperview:(id)a3;
@end

@implementation PatternSectionDecorationView

- (void)layoutSubviews
{
  v2 = self;
  PatternSectionDecorationView.layoutSubviews()();
}

- (void)willMoveToSuperview:(id)a3
{
  v5 = a3;
  v6 = self;
  PatternSectionDecorationView.willMove(toSuperview:)(a3);
}

- (void)didMoveToSuperview
{
  v2 = self;
  PatternSectionDecorationView.didMoveToSuperview()();
}

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  PatternSectionDecorationView.apply(_:)(v4);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  PatternSectionDecorationView.traitCollectionDidChange(_:)(v9);
}

@end