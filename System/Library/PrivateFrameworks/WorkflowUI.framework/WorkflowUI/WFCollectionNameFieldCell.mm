@interface WFCollectionNameFieldCell
- (BOOL)textFieldShouldReturn:(id)a3;
- (void)layoutSubviews;
- (void)textFieldDidEndEditing:(id)a3;
- (void)textFieldValueDidChange;
@end

@implementation WFCollectionNameFieldCell

- (void)textFieldValueDidChange
{
  v2 = self;
  sub_274820048();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_274820120();
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_274820208(v4);
}

- (BOOL)textFieldShouldReturn:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_274820338(v4);

  return 1;
}

@end