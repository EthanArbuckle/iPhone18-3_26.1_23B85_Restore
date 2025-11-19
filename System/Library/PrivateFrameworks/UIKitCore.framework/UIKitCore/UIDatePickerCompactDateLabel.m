@interface UIDatePickerCompactDateLabel
@end

@implementation UIDatePickerCompactDateLabel

void __47___UIDatePickerCompactDateLabel_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained activateLabel];
}

void __47___UIDatePickerCompactDateLabel_initWithFrame___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 traitCollection];
  v7 = +[UIDatePicker _styleForIdiom:](UIDatePicker, "_styleForIdiom:", [v3 userInterfaceIdiom]);

  v4 = [v2 configuration];
  v5 = [v7 compactLabelBackgroundColorForEnabledState:{objc_msgSend(v2, "isEnabled")}];
  v6 = [v4 background];
  [v6 setBackgroundColor:v5];

  [v2 setConfiguration:v4];
}

void __47___UIDatePickerCompactDateLabel_initWithFrame___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHighlightedForTouch:1];
}

void __47___UIDatePickerCompactDateLabel_initWithFrame___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHighlightedForTouch:0];
}

void __46___UIDatePickerCompactDateLabel_activateLabel__block_invoke(uint64_t a1, char a2)
{
  v4 = [*(*(a1 + 32) + 440) compactLabelTextColorForEditingState:0];
  v5 = [*(a1 + 32) textLabel];
  [v5 setTextColor:v4];

  if ((a2 & 1) == 0 && (*(a1 + 40) & 1) == 0)
  {
    v6 = [*(a1 + 32) delegate];
    [v6 compactDateLabelDidEndEditing:*(a1 + 32)];
  }

  v7 = [*(a1 + 32) backgroundView];
  [v7 setSelected:0];
}

@end