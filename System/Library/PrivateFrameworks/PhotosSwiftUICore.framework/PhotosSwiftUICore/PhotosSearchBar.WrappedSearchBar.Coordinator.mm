@interface PhotosSearchBar.WrappedSearchBar.Coordinator
- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text;
- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action;
- (void)tapAction:(id)action;
- (void)textViewDidBeginEditing:(void *)editing;
- (void)textViewDidChange:(id)change;
- (void)textViewDidChangeSelection:(id)selection;
@end

@implementation PhotosSearchBar.WrappedSearchBar.Coordinator

- (void)textViewDidBeginEditing:(void *)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_1C1181880(editingCopy);
}

- (void)textViewDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1C1181964(changeCopy);
}

- (void)textViewDidChangeSelection:(id)selection
{
  selectionCopy = selection;
  selfCopy = self;
  sub_1C1181AC4(selectionCopy);
}

- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action
{
  viewCopy = view;
  itemCopy = item;
  actionCopy = action;
  selfCopy = self;
  v12 = sub_1C1181CD4(viewCopy, itemCopy, actionCopy);

  return v12;
}

- (BOOL)textView:(id)view shouldChangeTextInRange:(_NSRange)range replacementText:(id)text
{
  length = range.length;
  location = range.location;
  v9 = sub_1C1265EA0();
  v11 = v10;
  viewCopy = view;
  selfCopy = self;
  LOBYTE(length) = sub_1C1182284(viewCopy, location, length, v9, v11);

  return length & 1;
}

- (void)tapAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_1C1183010();
}

@end