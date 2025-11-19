@interface UIDatePickerCompactTimeLabel
@end

@implementation UIDatePickerCompactTimeLabel

void __67___UIDatePickerCompactTimeLabel_initWithTimeFormat_minuteInterval___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 configuration];
  v4 = [*(a1 + 32) compactLabelBackgroundColorForEnabledState:{objc_msgSend(v3, "isEnabled")}];
  v5 = [v6 background];
  [v5 setBackgroundColor:v4];

  [v3 setConfiguration:v6];
}

void __58___UIDatePickerCompactTimeLabel__updateTimeFormatIfNeeded__block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 544) &= ~2u;
  [*(a1 + 32) pushCurrentStateIntoUI];
  v2 = [*(a1 + 32) pointerInteraction];
  [v2 invalidate];
}

void __71___UIDatePickerCompactTimeLabel__updateInputFieldLayoutForCurrentState__block_invoke(uint64_t a1)
{
  v8 = CGRectInset(*(a1 + 40), -2.0, -2.0);
  x = v8.origin.x;
  y = v8.origin.y;
  width = v8.size.width;
  height = v8.size.height;
  v6 = [*(a1 + 32) inputBackgroundView];
  [v6 setFrame:{x, y, width, height}];
}

double __61___UIDatePickerCompactTimeLabel__updateLayoutRectsForRanges___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return *MEMORY[0x1E695F058];
  }

  [*(*(a1 + 32) + 656) boundingRectForCharacterRange:{a2, a3}];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = *(a1 + 32);
  v14 = [v13 label];
  [v13 convertRect:v14 fromView:{v6, v8, v10, v12}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [*(a1 + 32) traitCollection];
  [v23 displayScale];
  v3 = UIRectIntegralWithScale(v16, v18, v20, v22, v24);

  return v3;
}

void __61___UIDatePickerCompactTimeLabel__updateLayoutRectsForRanges___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[69];
  v4 = v2[70];
  v5 = v2[71];
  v6 = v2[72];
  v7 = [v2 hourLabel];
  [v7 setFrame:{v3, v4, v5, v6}];

  v8 = *(a1 + 32);
  v9 = v8[73];
  v10 = v8[74];
  v11 = v8[75];
  v12 = v8[76];
  v13 = [v8 minuteLabel];
  [v13 setFrame:{v9, v10, v11, v12}];

  v14 = *(a1 + 32);
  v15 = v14[77];
  v16 = v14[78];
  v17 = v14[79];
  v18 = v14[80];
  v19 = [v14 timeOfDayLabel];
  [v19 setFrame:{v15, v16, v17, v18}];
}

void __75___UIDatePickerCompactTimeLabel__activateCompactLabelForGestureRecognizer___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isFirstResponder])
  {
    [*(a1 + 32) resignFirstResponder];
  }

  v2 = [*(a1 + 32) backgroundView];
  [v2 setSelected:0];
}

void __46___UIDatePickerCompactTimeLabel_activateLabel__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 sender];
  v4 = [v3 date];

  [*(a1 + 32) _reloadWithDate:v4 notify:1];
  [*(a1 + 32) wheelChanged];
}

void __46___UIDatePickerCompactTimeLabel_activateLabel__block_invoke_3(uint64_t a1, char a2)
{
  [*(a1 + 32) endEditingWheels];
  if ((a2 & 1) == 0)
  {
    v4 = [*(a1 + 32) selectionDelegate];
    [v4 compactTimeLabelDidEndEditing:*(a1 + 32)];
  }

  v5 = [*(a1 + 32) backgroundView];
  [v5 setSelected:0];
}

@end