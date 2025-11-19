@interface _UISplitViewControllerAdaptiveSingleColumnLayout
- (BOOL)canCollapseColumn:(int64_t)a3 style:(int64_t)a4;
- (CGRect)columnFrameForSplitViewControllerColumn:(int64_t)a3;
- (CGRect)separatorFrameForSplitViewControllerColumn:(int64_t)a3;
- (CGSize)contentSize;
- (CGSize)minimumSize;
- (CGSize)preferredSize;
- (NSString)description;
- (UIEdgeInsets)contentInsetsForSplitViewControllerColumn:(int64_t)a3;
- (UIEdgeInsets)scrollPocketInsetsForSplitViewControllerColumn:(int64_t)a3;
- (_UISplitViewControllerAdaptiveLayoutPreferredColumns)updatedPreferredColumns:(SEL)a3 toHideSplitViewControllerColumn:(_UISplitViewControllerAdaptiveLayoutPreferredColumns *)a4;
- (_UISplitViewControllerAdaptiveLayoutPreferredColumns)updatedPreferredColumns:(SEL)a3 toShowSplitViewControllerColumn:(_UISplitViewControllerAdaptiveLayoutPreferredColumns *)a4;
- (_UISplitViewControllerAdaptiveSingleColumnLayout)init;
- (_UISplitViewControllerAdaptiveSingleColumnLayout)initWithDataSource:(id)a3 delegate:(id)a4;
- (int64_t)preferredSplitViewControllerColumnAtEdge:(int64_t)a3;
- (unint64_t)columnModeForSplitViewControllerColumn:(int64_t)a3;
- (unint64_t)columnVisibilityForSplitViewControllerColumn:(int64_t)a3;
- (unint64_t)primaryEdgeButtonForSplitViewControllerColumn:(int64_t)a3;
- (void)enumerateDisplayInOrder:(unint64_t)a3 withBlock:(id)a4;
- (void)enumerateDisplayOrder:(id)a3;
- (void)enumerateSubviewZOrder:(id)a3;
- (void)prepareCollapsedColumns;
- (void)prepareForDisplay;
- (void)preparePresentedColumn;
- (void)validateData;
@end

@implementation _UISplitViewControllerAdaptiveSingleColumnLayout

- (void)enumerateDisplayOrder:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = self + OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data;
  v6 = *&self->data[OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data + 144];
  v7 = qword_1EA930918;
  v8 = self;
  if (v7 != -1)
  {
    swift_once();
  }

  if (v6 != qword_1EA994EC8)
  {
    v4[2](v4, *(v5 + 19));
  }

  _Block_release(v4);
}

- (void)enumerateDisplayInOrder:(unint64_t)a3 withBlock:(id)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = _Block_copy(a4);
  v6 = self + OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data;
  v7 = *&self->data[OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data + 144];
  v8 = qword_1EA930918;
  v9 = self;
  if (v8 != -1)
  {
    swift_once();
  }

  if (v7 == qword_1EA994EC8)
  {
    _Block_release(v5);
  }

  else
  {
    v10 = 0;
    (*(v5 + 2))(v5, *(v6 + 19), &v10);
    _Block_release(v5);
  }
}

- (void)preparePresentedColumn
{
  v2 = self;
  sub_188B14778();
}

- (void)prepareCollapsedColumns
{
  v2 = self;
  sub_188B143B0();
}

- (unint64_t)columnVisibilityForSplitViewControllerColumn:(int64_t)a3
{
  v4 = self;
  v5 = sub_188B17C1C(a3);

  return v5;
}

- (CGRect)columnFrameForSplitViewControllerColumn:(int64_t)a3
{
  v4 = qword_1EA930918;
  v5 = self;
  if (v4 != -1)
  {
    v16 = v5;
    swift_once();
    v5 = v16;
  }

  if (qword_1EA994EC8 == a3)
  {
    v6 = (MEMORY[0x1E695F050] + 16);
    v7 = (MEMORY[0x1E695F050] + 24);
    v8 = *MEMORY[0x1E695F050];
    v9 = *(MEMORY[0x1E695F050] + 8);
  }

  else
  {
    v6 = &v5->data[OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data + 32];
    v7 = &v5->data[OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data + 40];
    v8 = 0.0;
    v9 = 0.0;
  }

  v10 = *v6;
  v11 = *v7;

  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (int64_t)preferredSplitViewControllerColumnAtEdge:(int64_t)a3
{
  v3 = self;
  v4 = sub_18905B68C();

  return v4;
}

- (_UISplitViewControllerAdaptiveSingleColumnLayout)initWithDataSource:(id)a3 delegate:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_188B19194();
}

- (void)validateData
{
  v2 = self;
  sub_188B19354();
}

- (unint64_t)columnModeForSplitViewControllerColumn:(int64_t)a3
{
  v4 = self;
  v5 = sub_18905AFF8(a3);

  return v5;
}

- (UIEdgeInsets)scrollPocketInsetsForSplitViewControllerColumn:(int64_t)a3
{
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)enumerateSubviewZOrder:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = self + OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data;
  v6 = *&self->data[OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data + 144];
  v7 = qword_1EA930918;
  v8 = self;
  if (v7 != -1)
  {
    swift_once();
  }

  if (v6 != qword_1EA994EC8)
  {
    (*(v4 + 2))(v4, *(v5 + 19), 0);
  }

  _Block_release(v4);
}

- (CGRect)separatorFrameForSplitViewControllerColumn:(int64_t)a3
{
  v3 = *MEMORY[0x1E695F050];
  v4 = *(MEMORY[0x1E695F050] + 8);
  v5 = *(MEMORY[0x1E695F050] + 16);
  v6 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (UIEdgeInsets)contentInsetsForSplitViewControllerColumn:(int64_t)a3
{
  v3 = *&self->data[OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data];
  v4 = *&self->data[OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data + 8];
  v5 = *&self->data[OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data + 16];
  v6 = *&self->data[OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data + 24];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (CGSize)preferredSize
{
  v2 = 0.0;
  v3 = 0.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)prepareForDisplay
{
  v2 = self;
  [(_UISplitViewControllerAdaptiveSingleColumnLayout *)v2 prepareCollapsedColumns];
  [(_UISplitViewControllerAdaptiveSingleColumnLayout *)v2 preparePresentedColumn];
}

- (CGSize)contentSize
{
  v2 = *&self->data[OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data + 32];
  v3 = *&self->data[OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data + 40];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)minimumSize
{
  v2 = 0.0;
  v3 = 0.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (unint64_t)primaryEdgeButtonForSplitViewControllerColumn:(int64_t)a3
{
  if (*&self->data[OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data + 144] != a3)
  {
    return 0;
  }

  if (*(*&self->data[OBJC_IVAR____UISplitViewControllerAdaptiveSingleColumnLayout_data + 120] + 16))
  {
    return 24;
  }

  return 16;
}

- (_UISplitViewControllerAdaptiveLayoutPreferredColumns)updatedPreferredColumns:(SEL)a3 toShowSplitViewControllerColumn:(_UISplitViewControllerAdaptiveLayoutPreferredColumns *)a4
{
  preferredEdge = a4->preferredEdge;
  shouldEnforcePreferences = a4->shouldEnforcePreferences;
  secondaryEdgePreferenceMode = a4->secondaryEdgePreferenceMode;
  v9 = *&a4->collapsedSplitViewControllerColumn;
  v21[0] = *&a4->primaryEdgeSplitViewControllerColumn;
  v21[1] = v9;
  v22 = preferredEdge;
  v23 = shouldEnforcePreferences;
  v24 = *&a4->splitBehavior;
  v25 = secondaryEdgePreferenceMode;
  sub_18905B138(v21, a5, v16);
  v11 = v17;
  v12 = v20;
  v13 = v16[1];
  v14 = v18 & 1;
  v15 = v19;
  *&retstr->primaryEdgeSplitViewControllerColumn = v16[0];
  *&retstr->collapsedSplitViewControllerColumn = v13;
  retstr->preferredEdge = v11;
  retstr->shouldEnforcePreferences = v14;
  *&retstr->splitBehavior = v15;
  retstr->secondaryEdgePreferenceMode = v12;
  return result;
}

- (_UISplitViewControllerAdaptiveLayoutPreferredColumns)updatedPreferredColumns:(SEL)a3 toHideSplitViewControllerColumn:(_UISplitViewControllerAdaptiveLayoutPreferredColumns *)a4
{
  preferredEdge = a4->preferredEdge;
  shouldEnforcePreferences = a4->shouldEnforcePreferences;
  secondaryEdgePreferenceMode = a4->secondaryEdgePreferenceMode;
  v10 = *&a4->collapsedSplitViewControllerColumn;
  v23[0] = *&a4->primaryEdgeSplitViewControllerColumn;
  v23[1] = v10;
  v24 = preferredEdge;
  v25 = shouldEnforcePreferences;
  v26 = *&a4->splitBehavior;
  v27 = secondaryEdgePreferenceMode;
  v11 = self;
  sub_18905B244(v23, a5, v18);
  v12 = v19;
  v13 = v20;
  v14 = v22;

  v16 = v18[1];
  v17 = v21;
  *&retstr->primaryEdgeSplitViewControllerColumn = v18[0];
  *&retstr->collapsedSplitViewControllerColumn = v16;
  retstr->preferredEdge = v12;
  retstr->shouldEnforcePreferences = v13 & 1;
  *&retstr->splitBehavior = v17;
  retstr->secondaryEdgePreferenceMode = v14;
  return result;
}

- (BOOL)canCollapseColumn:(int64_t)a3 style:(int64_t)a4
{
  if (a4 >= 2)
  {
    return a4 == 2;
  }

  else
  {
    return a3 != 1;
  }
}

- (NSString)description
{
  v2 = self;
  sub_18905B46C();

  v3 = sub_18A4A7258();

  return v3;
}

- (_UISplitViewControllerAdaptiveSingleColumnLayout)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end