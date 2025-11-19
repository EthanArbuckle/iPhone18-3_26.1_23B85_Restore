@interface DictationTextView.Coordinator
- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (void)textViewDidBeginEditing:(id)a3;
- (void)textViewDidChange:(id)a3;
- (void)textViewDidEndEditing:(id)a3;
@end

@implementation DictationTextView.Coordinator

- (void)textViewDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_274924BC0(v4);
}

- (void)textViewDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_274924F0C(v4);
}

- (void)textViewDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_274925018();
}

- (BOOL)textView:(id)a3 shouldChangeTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  v7 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v9 = v8;
  v10 = a3;
  v11 = self;
  LOBYTE(v7) = sub_2749250E0(v10, v12, v13, v7, v9);

  return v7 & 1;
}

@end