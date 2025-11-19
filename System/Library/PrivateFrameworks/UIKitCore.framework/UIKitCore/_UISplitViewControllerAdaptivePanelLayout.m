@interface _UISplitViewControllerAdaptivePanelLayout
- (BOOL)canIncludeColumn:(int64_t)a3 style:(int64_t)a4;
- (BOOL)canShowSplitViewControllerColumn:(int64_t)a3 withSplitViewControllerColumn:(int64_t)a4;
- (CGRect)columnFrameForSplitViewControllerColumn:(int64_t)a3;
- (CGRect)separatorFrameForSplitViewControllerColumn:(int64_t)a3;
- (CGSize)contentSize;
- (CGSize)minimumSize;
- (CGSize)preferredSize;
- (NSString)description;
- (UIEdgeInsets)contentInsetsForSplitViewControllerColumn:(int64_t)a3;
- (UIEdgeInsets)scrollPocketInsetsForSplitViewControllerColumn:(int64_t)a3;
- (_UISplitViewControllerAdaptivePanelLayout)init;
- (_UISplitViewControllerAdaptivePanelLayout)initWithDataSource:(id)a3 delegate:(id)a4;
- (double)dimmingLevelForSplitViewControllerColumn:(int64_t)a3;
- (double)maximumWidthForSplitViewControllerColumn:(int64_t)a3;
- (double)minimumWidthForSplitViewControllerColumn:(int64_t)a3;
- (int64_t)displayMode;
- (int64_t)levelForSplitViewControllerColumn:(int64_t)a3;
- (int64_t)primaryEdge;
- (int64_t)splitBehavior;
- (int64_t)splitViewControllerColumnDisplayedAfterSplitViewControllerColumn:(int64_t)a3;
- (int64_t)splitViewControllerColumnDisplayedBeforeSplitViewControllerColumn:(int64_t)a3;
- (unint64_t)columnModeForSplitViewControllerColumn:(int64_t)a3;
- (unint64_t)maskedCornersForSplitViewControllerColumn:(int64_t)a3;
- (unint64_t)primaryEdgeButtonForSplitViewControllerColumn:(int64_t)a3;
- (unint64_t)secondaryEdgeButtonForSplitViewControllerColumn:(int64_t)a3;
- (void)enumerateDisplayInOrder:(unint64_t)a3 withBlock:(id)a4;
- (void)enumerateDisplayOrder:(id)a3;
- (void)enumerateSubviewZOrder:(id)a3;
- (void)prepareLayout;
- (void)validateData;
@end

@implementation _UISplitViewControllerAdaptivePanelLayout

- (_UISplitViewControllerAdaptivePanelLayout)initWithDataSource:(id)a3 delegate:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_188E5C8A8();
}

- (CGSize)contentSize
{
  v2 = (self + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data);
  swift_beginAccess();
  v3 = v2[5];
  v4 = v2[6];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)minimumSize
{
  v2 = (self + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution);
  swift_beginAccess();
  v3 = v2[2];
  v4 = v2[3];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)preferredSize
{
  v2 = (self + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution);
  swift_beginAccess();
  v3 = v2[4];
  v4 = v2[5];
  result.height = v4;
  result.width = v3;
  return result;
}

- (int64_t)primaryEdge
{
  v2 = self + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
  swift_beginAccess();
  return *(v2 + 6);
}

- (int64_t)splitBehavior
{
  v2 = self + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
  swift_beginAccess();
  return *(v2 + 9);
}

- (CGRect)columnFrameForSplitViewControllerColumn:(int64_t)a3
{
  v3 = sub_188E5CC18(a3);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (double)minimumWidthForSplitViewControllerColumn:(int64_t)a3
{
  v5 = OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  v7 = 0.0;
  if (*(v6 + 16))
  {
    v8 = sub_188B85570(a3);
    if (v9)
    {
      v7 = *(*(v6 + 56) + 216 * v8 + 112);
    }
  }

  swift_endAccess();
  return v7;
}

- (double)maximumWidthForSplitViewControllerColumn:(int64_t)a3
{
  v5 = OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  v7 = 0.0;
  if (*(v6 + 16))
  {
    v8 = sub_188B85570(a3);
    if (v9)
    {
      v7 = *(*(v6 + 56) + 216 * v8 + 104);
    }
  }

  swift_endAccess();
  return v7;
}

- (UIEdgeInsets)contentInsetsForSplitViewControllerColumn:(int64_t)a3
{
  v3 = sub_188E5CE10(a3);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (UIEdgeInsets)scrollPocketInsetsForSplitViewControllerColumn:(int64_t)a3
{
  v3 = sub_188E5CEE8(a3);
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (int64_t)levelForSplitViewControllerColumn:(int64_t)a3
{
  v5 = OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  if (*(v6 + 16) && (v7 = sub_188B85570(a3), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 216 * v7 + 88);
  }

  else
  {
    v9 = 0;
  }

  swift_endAccess();
  return v9;
}

- (unint64_t)maskedCornersForSplitViewControllerColumn:(int64_t)a3
{
  v5 = OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  if (*(v6 + 16) && (v7 = sub_188B85570(a3), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 216 * v7 + 96);
  }

  else
  {
    v9 = 0;
  }

  swift_endAccess();
  return v9;
}

- (CGRect)separatorFrameForSplitViewControllerColumn:(int64_t)a3
{
  v3 = sub_188E5D2CC(a3);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (int64_t)displayMode
{
  v2 = self + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
  swift_beginAccess();
  return *(v2 + 1);
}

- (unint64_t)columnModeForSplitViewControllerColumn:(int64_t)a3
{
  v4 = self;
  v5 = sub_188E5D3F4(a3);

  return v5;
}

- (double)dimmingLevelForSplitViewControllerColumn:(int64_t)a3
{
  v5 = OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  v7 = 0.0;
  if (*(v6 + 16))
  {
    v8 = sub_188B85570(a3);
    if (v9)
    {
      v7 = *(*(v6 + 56) + 216 * v8 + 72);
    }
  }

  swift_endAccess();
  return v7;
}

- (BOOL)canShowSplitViewControllerColumn:(int64_t)a3 withSplitViewControllerColumn:(int64_t)a4
{
  v6 = self;
  LOBYTE(a4) = sub_188E5D610(a3, a4);

  return a4 & 1;
}

- (unint64_t)primaryEdgeButtonForSplitViewControllerColumn:(int64_t)a3
{
  v5 = OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  if (*(v6 + 16) && (v7 = sub_188B85570(a3), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 216 * v7 + 128);
  }

  else
  {
    v9 = 0;
  }

  swift_endAccess();
  return v9;
}

- (unint64_t)secondaryEdgeButtonForSplitViewControllerColumn:(int64_t)a3
{
  v5 = OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_solution;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  if (*(v6 + 16) && (v7 = sub_188B85570(a3), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 216 * v7 + 168);
  }

  else
  {
    v9 = 0;
  }

  swift_endAccess();
  return v9;
}

- (void)enumerateDisplayOrder:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = self + OBJC_IVAR____UISplitViewControllerAdaptivePanelLayout_data;
  swift_beginAccess();
  v6 = *(v5 + 7);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = self;

    v9 = 32;
    do
    {
      v4[2](v4, *(v6 + v9));
      v9 += 8;
      --v7;
    }

    while (v7);
  }

  else
  {
    v8 = self;
  }

  _Block_release(v4);
}

- (void)enumerateDisplayInOrder:(unint64_t)a3 withBlock:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = self;
  sub_188E670D4(a3, v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)enumerateSubviewZOrder:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_188E67218(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (int64_t)splitViewControllerColumnDisplayedBeforeSplitViewControllerColumn:(int64_t)a3
{
  v4 = self;
  v5 = sub_188E5E3B8(a3);

  return v5;
}

- (int64_t)splitViewControllerColumnDisplayedAfterSplitViewControllerColumn:(int64_t)a3
{
  v4 = self;
  v5 = sub_188E5E4E0(a3);

  return v5;
}

- (void)prepareLayout
{
  v2 = self;
  sub_188E5E6C0();
}

- (void)validateData
{
  v2 = self;
  sub_188E639CC();
}

- (BOOL)canIncludeColumn:(int64_t)a3 style:(int64_t)a4
{
  if (qword_1EA9308E0 != -1)
  {
    swift_once();
  }

  v6 = sub_188C1CAD8(a3, off_1EA9308F0);
  v7 = a4 == 2;
  if (a4 < 2)
  {
    v7 = a3 != 1;
  }

  return v6 && v7;
}

- (NSString)description
{
  v2 = self;
  sub_18A4A80E8();
  MEMORY[0x18CFE22D0](0xD00000000000002CLL, 0x800000018A68C1F0);
  sub_18A4A82D8();
  MEMORY[0x18CFE22D0](62, 0xE100000000000000);

  v3 = sub_18A4A7258();

  return v3;
}

- (_UISplitViewControllerAdaptivePanelLayout)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end