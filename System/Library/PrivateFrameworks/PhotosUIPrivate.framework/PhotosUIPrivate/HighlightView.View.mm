@interface HighlightView.View
- (id)contextMenuItemsForAttributionView:(id)view;
- (void)layoutSubviews;
@end

@implementation HighlightView.View

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1B3727A58();
}

- (id)contextMenuItemsForAttributionView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_1B3727B1C(viewCopy);

  sub_1B3710718(0, &unk_1EB851C40);
  v6 = sub_1B3C9C778();

  return v6;
}

@end