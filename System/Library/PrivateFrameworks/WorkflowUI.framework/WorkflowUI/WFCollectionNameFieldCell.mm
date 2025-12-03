@interface WFCollectionNameFieldCell
- (BOOL)textFieldShouldReturn:(id)return;
- (void)layoutSubviews;
- (void)textFieldDidEndEditing:(id)editing;
- (void)textFieldValueDidChange;
@end

@implementation WFCollectionNameFieldCell

- (void)textFieldValueDidChange
{
  selfCopy = self;
  sub_274820048();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_274820120();
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  sub_274820208(editingCopy);
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  selfCopy = self;
  sub_274820338(returnCopy);

  return 1;
}

@end