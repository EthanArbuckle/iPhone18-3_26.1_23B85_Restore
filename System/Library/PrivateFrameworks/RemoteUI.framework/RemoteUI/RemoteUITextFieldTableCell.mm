@interface RemoteUITextFieldTableCell
- (id)customTextLabel;
@end

@implementation RemoteUITextFieldTableCell

- (id)customTextLabel
{
  v4.receiver = self;
  v4.super_class = RemoteUITextFieldTableCell;
  customTextLabel = [(RemoteUICustomTableViewCell *)&v4 customTextLabel];

  return customTextLabel;
}

@end