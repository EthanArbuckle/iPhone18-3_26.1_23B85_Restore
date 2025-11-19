@interface SearchUICustomViewCardSectionView
- (BOOL)needsInternalFocus;
- (BOOL)setupManualFocus;
- (SearchUICustomViewCardSectionView)initWithRowModel:(id)a3 feedbackDelegate:(id)a4;
- (SearchUICustomViewProvider)viewProvider;
- (id)setupContentView;
- (void)removeManualFocus;
- (void)setViewProvider:(id)a3;
- (void)updateWithRowModel:(id)a3;
@end

@implementation SearchUICustomViewCardSectionView

- (SearchUICustomViewProvider)viewProvider
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setViewProvider:(id)a3
{
  swift_unknownObjectWeakAssign();
  v6 = self;
  swift_unknownObjectRetain();
  v4 = [(SearchUICardSectionView *)v6 rowModel];
  if (v4)
  {
    v5 = v4;
    [(SearchUICustomViewCardSectionView *)v6 updateWithRowModel:v5];
  }

  swift_unknownObjectRelease();
}

- (id)setupContentView
{
  v2 = self;
  [(SearchUICustomViewCardSectionView *)v2 setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:1];
  v3 = OBJC_IVAR___SearchUICustomViewCardSectionView_baseView;
  [*(v2 + OBJC_IVAR___SearchUICustomViewCardSectionView_baseView) setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview_];
  v4 = *(v2 + v3);
  v5 = v4;

  return v4;
}

- (void)updateWithRowModel:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1DA231CBC(a3);
}

- (BOOL)needsInternalFocus
{
  v2 = *(self + OBJC_IVAR___SearchUICustomViewCardSectionView_wrappedView);
  if (v2)
  {
    v3 = swift_dynamicCastObjCProtocolConditional();
    if (v3)
    {
      v4 = v3;
      v5 = v2;
      v3 = v4;
    }
  }

  else
  {
    v3 = 0;
  }

  v6 = v3 != 0;
  swift_unknownObjectRelease();
  return v6;
}

- (BOOL)setupManualFocus
{
  if (!*(self + OBJC_IVAR___SearchUICustomViewCardSectionView_wrappedView))
  {
    return 0;
  }

  v2 = swift_dynamicCastObjCProtocolConditional();
  if (!v2)
  {
    return 0;
  }

  v3 = 1;
  [v2 setIsSelected_];
  return v3;
}

- (void)removeManualFocus
{
  if (*(self + OBJC_IVAR___SearchUICustomViewCardSectionView_wrappedView))
  {
    v2 = swift_dynamicCastObjCProtocolConditional();
    if (v2)
    {
      [v2 setIsSelected_];
    }
  }
}

- (SearchUICustomViewCardSectionView)initWithRowModel:(id)a3 feedbackDelegate:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  return sub_1DA2324F8(a3, a4);
}

@end