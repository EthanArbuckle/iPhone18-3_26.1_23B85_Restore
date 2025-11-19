@interface _UICalendarViewPlatformMetrics
+ (id)_headerViewDefaultButtonConfiguration;
- (CATransform3D)highlightedContentTransform;
- (UIEdgeInsets)monthYearContainerEdgeInsets;
- (UIOffset)monthYearContainerOffset;
- (_UICalendarViewPlatformMetrics)init;
- (void)setHighlightedContentTransform:(CATransform3D *)a3;
@end

@implementation _UICalendarViewPlatformMetrics

- (_UICalendarViewPlatformMetrics)init
{
  v17.receiver = self;
  v17.super_class = _UICalendarViewPlatformMetrics;
  v2 = [(_UICalendarViewPlatformMetrics *)&v17 init];
  v3 = v2;
  if (v2)
  {
    [(_UICalendarViewPlatformMetrics *)v2 setMinimumContentWidth:280.0];
    [(_UICalendarViewPlatformMetrics *)v3 setMinimumLayoutWidth:220.0];
    [(_UICalendarViewPlatformMetrics *)v3 setMaximumContentWidthForLayoutMargins:&__block_literal_global_29];
    [(_UICalendarViewPlatformMetrics *)v3 setCollectionViewHeightOffset:32.0];
    [(_UICalendarViewPlatformMetrics *)v3 setHeaderViewLayoutMarginsForProposedLayoutMargins:&__block_literal_global_56];
    [(_UICalendarViewPlatformMetrics *)v3 setHeaderViewIntrinsicLayoutMarginsForProposedLayoutMargins:&__block_literal_global_58];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __38___UICalendarViewPlatformMetrics_init__block_invoke_4;
    v15[3] = &unk_1E70F6420;
    v4 = v3;
    v16 = v4;
    [(_UICalendarViewPlatformMetrics *)v4 setHeaderViewInsetsForLayoutMargins:v15];
    v5 = +[_UICalendarViewPlatformMetrics _headerViewDefaultButtonConfiguration];
    [(_UICalendarViewPlatformMetrics *)v4 setHeaderViewDefaultButtonConfiguration:v5];

    v6 = +[UIColor labelColor];
    [(_UICalendarViewPlatformMetrics *)v4 setMonthYearLabelColor:v6];

    v7 = +[UIColor tintColor];
    [(_UICalendarViewPlatformMetrics *)v4 setExpandedMonthYearLabelColor:v7];

    [(_UICalendarViewPlatformMetrics *)v4 setMonthYearLabelFontProvider:&__block_literal_global_64];
    [(_UICalendarViewPlatformMetrics *)v4 setMonthYearChevronSymbolConfiguration:&__block_literal_global_67];
    [(_UICalendarViewPlatformMetrics *)v4 setNextPreviousMonthButtonConfiguration:&__block_literal_global_71];
    [(_UICalendarViewPlatformMetrics *)v4 setMonthYearButtonConfiguration:&__block_literal_global_73];
    [(_UICalendarViewPlatformMetrics *)v4 setHeaderViewInterMonthButtonSpacing:0.0];
    [(_UICalendarViewPlatformMetrics *)v4 setMonthYearContainerEdgeInsets:-4.0, -4.0, -4.0, -4.0];
    [(_UICalendarViewPlatformMetrics *)v4 setMonthYearContainerViewProvider:&__block_literal_global_77];
    v8 = +[UIColor tertiaryLabelColor];
    [(_UICalendarViewPlatformMetrics *)v4 setWeekdayLabelTextColor:v8];

    [(_UICalendarViewPlatformMetrics *)v4 setWeekdayViewMinimumHeight:0.0];
    [(_UICalendarViewPlatformMetrics *)v4 setWeekdayViewVerticalSpacing:0.0];
    [(_UICalendarViewPlatformMetrics *)v4 setDateViewCellBackgroundSize:44.0];
    [(_UICalendarViewPlatformMetrics *)v4 setDateViewCellSpacing:-1.0];
    [(_UICalendarViewPlatformMetrics *)v4 setDateCellForegroundColorProvider:&__block_literal_global_81];
    [(_UICalendarViewPlatformMetrics *)v4 setDateCellBackgroundColorProvider:&__block_literal_global_83];
    [(_UICalendarViewPlatformMetrics *)v4 setDateCellFontProvider:&__block_literal_global_86];
    v9 = *(MEMORY[0x1E69792E8] + 80);
    v14[4] = *(MEMORY[0x1E69792E8] + 64);
    v14[5] = v9;
    v10 = *(MEMORY[0x1E69792E8] + 112);
    v14[6] = *(MEMORY[0x1E69792E8] + 96);
    v14[7] = v10;
    v11 = *(MEMORY[0x1E69792E8] + 16);
    v14[0] = *MEMORY[0x1E69792E8];
    v14[1] = v11;
    v12 = *(MEMORY[0x1E69792E8] + 48);
    v14[2] = *(MEMORY[0x1E69792E8] + 32);
    v14[3] = v12;
    [(_UICalendarViewPlatformMetrics *)v4 setHighlightedContentTransform:v14];
  }

  return v3;
}

+ (id)_headerViewDefaultButtonConfiguration
{
  v2 = +[UIButtonConfiguration plainButtonConfiguration];
  [v2 contentInsets];
  [v2 setContentInsets:?];
  v3 = +[UIColor clearColor];
  v4 = [v2 background];
  [v4 setBackgroundColor:v3];

  return v2;
}

- (UIEdgeInsets)monthYearContainerEdgeInsets
{
  top = self->_monthYearContainerEdgeInsets.top;
  left = self->_monthYearContainerEdgeInsets.left;
  bottom = self->_monthYearContainerEdgeInsets.bottom;
  right = self->_monthYearContainerEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CATransform3D)highlightedContentTransform
{
  v3 = *&self[2].m42;
  *&retstr->m31 = *&self[2].m34;
  *&retstr->m33 = v3;
  v4 = *&self[3].m12;
  *&retstr->m41 = *&self[2].m44;
  *&retstr->m43 = v4;
  v5 = *&self[2].m22;
  *&retstr->m11 = *&self[2].m14;
  *&retstr->m13 = v5;
  v6 = *&self[2].m32;
  *&retstr->m21 = *&self[2].m24;
  *&retstr->m23 = v6;
  return self;
}

- (void)setHighlightedContentTransform:(CATransform3D *)a3
{
  v3 = *&a3->m11;
  v4 = *&a3->m13;
  v5 = *&a3->m23;
  *&self->_highlightedContentTransform.m21 = *&a3->m21;
  *&self->_highlightedContentTransform.m23 = v5;
  *&self->_highlightedContentTransform.m11 = v3;
  *&self->_highlightedContentTransform.m13 = v4;
  v6 = *&a3->m31;
  v7 = *&a3->m33;
  v8 = *&a3->m43;
  *&self->_highlightedContentTransform.m41 = *&a3->m41;
  *&self->_highlightedContentTransform.m43 = v8;
  *&self->_highlightedContentTransform.m31 = v6;
  *&self->_highlightedContentTransform.m33 = v7;
}

- (UIOffset)monthYearContainerOffset
{
  horizontal = self->_monthYearContainerOffset.horizontal;
  vertical = self->_monthYearContainerOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

@end