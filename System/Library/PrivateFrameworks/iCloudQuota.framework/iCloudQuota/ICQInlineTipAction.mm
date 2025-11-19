@interface ICQInlineTipAction
- (ICQInlineTipAction)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICQInlineTipAction

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(ICQInlineTipAction);
  [(ICQInlineTipAction *)v4 setButtonTitle:self->_buttonTitle];
  [(ICQInlineTipAction *)v4 setActionName:self->_actionName];
  [(ICQInlineTipAction *)v4 setActionURL:self->_actionURL];
  [(ICQInlineTipAction *)v4 setLink:self->_link];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  buttonTitle = self->_buttonTitle;
  v5 = a3;
  [v5 encodeObject:buttonTitle forKey:@"buttonTitle"];
  [v5 encodeObject:self->_actionName forKey:@"actionName"];
  [v5 encodeObject:self->_actionURL forKey:@"actionURL"];
  [v5 encodeObject:self->_link forKey:@"link"];
}

- (ICQInlineTipAction)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ICQInlineTipAction;
  v5 = [(ICQInlineTipAction *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"buttonTitle"];
    buttonTitle = v5->_buttonTitle;
    v5->_buttonTitle = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionName"];
    actionName = v5->_actionName;
    v5->_actionName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionURL"];
    actionURL = v5->_actionURL;
    v5->_actionURL = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"link"];
    link = v5->_link;
    v5->_link = v12;
  }

  return v5;
}

@end