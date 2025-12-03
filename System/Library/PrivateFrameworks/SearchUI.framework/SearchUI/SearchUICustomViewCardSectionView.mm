@interface SearchUICustomViewCardSectionView
- (BOOL)needsInternalFocus;
- (BOOL)setupManualFocus;
- (SearchUICustomViewCardSectionView)initWithRowModel:(id)model feedbackDelegate:(id)delegate;
- (SearchUICustomViewProvider)viewProvider;
- (id)setupContentView;
- (void)removeManualFocus;
- (void)setViewProvider:(id)provider;
- (void)updateWithRowModel:(id)model;
@end

@implementation SearchUICustomViewCardSectionView

- (SearchUICustomViewProvider)viewProvider
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setViewProvider:(id)provider
{
  swift_unknownObjectWeakAssign();
  selfCopy = self;
  swift_unknownObjectRetain();
  rowModel = [(SearchUICardSectionView *)selfCopy rowModel];
  if (rowModel)
  {
    v5 = rowModel;
    [(SearchUICustomViewCardSectionView *)selfCopy updateWithRowModel:v5];
  }

  swift_unknownObjectRelease();
}

- (id)setupContentView
{
  selfCopy = self;
  [(SearchUICustomViewCardSectionView *)selfCopy setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview:1];
  v3 = OBJC_IVAR___SearchUICustomViewCardSectionView_baseView;
  [*(selfCopy + OBJC_IVAR___SearchUICustomViewCardSectionView_baseView) setInvalidatingIntrinsicContentSizeAlsoInvalidatesSuperview_];
  v4 = *(selfCopy + v3);
  v5 = v4;

  return v4;
}

- (void)updateWithRowModel:(id)model
{
  modelCopy = model;
  selfCopy = self;
  sub_1DA231CBC(model);
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

- (SearchUICustomViewCardSectionView)initWithRowModel:(id)model feedbackDelegate:(id)delegate
{
  modelCopy = model;
  swift_unknownObjectRetain();
  return sub_1DA2324F8(model, delegate);
}

@end