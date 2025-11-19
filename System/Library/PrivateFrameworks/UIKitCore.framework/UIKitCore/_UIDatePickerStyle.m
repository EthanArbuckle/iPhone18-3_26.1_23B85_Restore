@interface _UIDatePickerStyle
- (CGSize)compactLabelBackgroundPadding;
- (CGSize)idealLayoutFittingSizeForDatePickerMode:(int64_t)a3;
- (UIEdgeInsets)maximumWidthOverhangForProposedLayoutMargins:(UIEdgeInsets)a3;
- (UIOffset)overlayPlatterPaddingForAppliedInsets:(UIEdgeInsets)a3 datePickerMode:(int64_t)a4;
- (id)compactLabelBackgroundColorForEnabledState:(BOOL)a3;
- (id)compactLabelTextColorForEditingState:(BOOL)a3;
- (id)createOverlayBackgroundView;
- (int64_t)titleAlignmentForCalendarUnit:(unint64_t)a3 datePickerMode:(int64_t)a4 dayIsBeforeMonth:(BOOL)a5;
@end

@implementation _UIDatePickerStyle

- (id)createOverlayBackgroundView
{
  v2 = objc_opt_new();

  return v2;
}

- (CGSize)idealLayoutFittingSizeForDatePickerMode:(int64_t)a3
{
  v3 = 0.0;
  v4 = 0.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (UIEdgeInsets)maximumWidthOverhangForProposedLayoutMargins:(UIEdgeInsets)a3
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

- (UIOffset)overlayPlatterPaddingForAppliedInsets:(UIEdgeInsets)a3 datePickerMode:(int64_t)a4
{
  left = a3.left;
  top = a3.top;
  [(_UIDatePickerStyle *)self overlayPlatterDefaultMargin:a4];
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

- (id)compactLabelTextColorForEditingState:(BOOL)a3
{
  if (a3)
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

- (id)compactLabelBackgroundColorForEnabledState:(BOOL)a3
{
  if (a3)
  {
    v4 = +[UIColor tertiarySystemFillColor];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)titleAlignmentForCalendarUnit:(unint64_t)a3 datePickerMode:(int64_t)a4 dayIsBeforeMonth:(BOOL)a5
{
  v5 = 2;
  v6 = 1;
  v7 = 2;
  if (a5)
  {
    v7 = 0;
  }

  if (a3 == 8)
  {
    v6 = v7;
  }

  if (a3 == 16)
  {
    v6 = 2;
  }

  if (a3 != 32)
  {
    v5 = v6;
  }

  if (a4 == 3)
  {
    return 2;
  }

  else
  {
    return v5;
  }
}

@end