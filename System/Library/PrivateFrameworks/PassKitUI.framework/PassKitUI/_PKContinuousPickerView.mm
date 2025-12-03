@interface _PKContinuousPickerView
- (void)pickerTableView:(id)view didChangeSelectionBarRowFrom:(int64_t)from to:(int64_t)to;
@end

@implementation _PKContinuousPickerView

- (void)pickerTableView:(id)view didChangeSelectionBarRowFrom:(int64_t)from to:(int64_t)to
{
  if ([(_PKContinuousPickerView *)self numberOfComponents:view]>= 1)
  {
    v6 = 0;
    do
    {
      v7 = [(_PKContinuousPickerView *)self selectedRowInComponent:v6];
      delegate = [(_PKContinuousPickerView *)self delegate];
      [delegate pickerView:self didSelectRow:v7 inComponent:v6];

      ++v6;
    }

    while (v6 < [(_PKContinuousPickerView *)self numberOfComponents]);
  }
}

@end