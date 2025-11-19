@interface RemoteUITextFieldTableCell
- (id)customTextLabel;
@end

@implementation RemoteUITextFieldTableCell

- (id)customTextLabel
{
  v4.receiver = self;
  v4.super_class = RemoteUITextFieldTableCell;
  v2 = [(RemoteUICustomTableViewCell *)&v4 customTextLabel];

  return v2;
}

@end