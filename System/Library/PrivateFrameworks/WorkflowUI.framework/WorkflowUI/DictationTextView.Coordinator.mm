@interface DictationTextView.Coordinator
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (void)textViewDidBeginEditing:(id)editing;
- (void)textViewDidChange:(id)change;
- (void)textViewDidEndEditing:(id)editing;
@end

@implementation DictationTextView.Coordinator

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_274924BC0(changeCopy);
}

- (void)textViewDidBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_274924F0C(editingCopy);
}

- (void)textViewDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_274925018();
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  v7 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v9 = v8;
  viewCopy = view;
  selfCopy = self;
  LOBYTE(v7) = sub_2749250E0(viewCopy, v12, v13, v7, v9);

  return v7 & 1;
}

@end