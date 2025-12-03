@interface _UIDatePickerStyle
- (CGSize)compactLabelBackgroundPadding;
- (CGSize)idealLayoutFittingSizeForDatePickerMode:(int64_t)mode;
- (UIEdgeInsets)maximumWidthOverhangForProposedLayoutMargins:(UIEdgeInsets)margins;
- (UIOffset)overlayPlatterPaddingForAppliedInsets:(UIEdgeInsets)insets datePickerMode:(int64_t)mode;
- (id)compactLabelBackgroundColorForEnabledState:(BOOL)state;
- (id)compactLabelTextColorForEditingState:(BOOL)state;
- (id)createOverlayBackgroundView;
- (int64_t)titleAlignmentForCalendarUnit:(unint64_t)unit datePickerMode:(int64_t)mode dayIsBeforeMonth:(BOOL)month;
@end

@implementation _UIDatePickerStyle

- (id)createOverlayBackgroundView
{
  v2 = objc_opt_new();

  return v2;
}

- (CGSize)idealLayoutFittingSizeForDatePickerMode:(int64_t)mode
{
  v3 = 0.0;
  v4 = 0.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (UIEdgeInsets)maximumWidthOverhangForProposedLayoutMargins:(UIEdgeInsets)margins
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

- (UIOffset)overlayPlatterPaddingForAppliedInsets:(UIEdgeInsets)insets datePickerMode:(int64_t)mode
{
  left = insets.left;
  top = insets.top;
  [(_UIDatePickerStyle *)self overlayPlatterDefaultMargin:mode];
  v8 = v7 - left;
  [(_UIDatePickerStyle *)self overlayPlatterDefaultMargin];
  v10 = v9 - top;
  v11 = v8;
  result.vertical = v10;
  result.horizontal = v11;
  return result;
}

- (CGSize)compactLabelBackgroundPadding
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)compactLabelTextColorForEditingState:(BOOL)state
{
  if (state)
  {
    +[UIColor blackColor];
  }

  else
  {
    +[UIColor labelColor];
  }
  v3 = ;

  return v3;
}

- (id)compactLabelBackgroundColorForEnabledState:(BOOL)state
{
  if (state)
  {
    v4 = +[UIColor tertiarySystemFillColor];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)titleAlignmentForCalendarUnit:(unint64_t)unit datePickerMode:(int64_t)mode dayIsBeforeMonth:(BOOL)month
{
  v5 = 2;
  v6 = 1;
  v7 = 2;
  if (month)
  {
    v7 = 0;
  }

  if (unit == 8)
  {
    v6 = v7;
  }

  if (unit == 16)
  {
    v6 = 2;
  }

  if (unit != 32)
  {
    v5 = v6;
  }

  if (mode == 3)
  {
    return 2;
  }

  else
  {
    return v5;
  }
}

@end