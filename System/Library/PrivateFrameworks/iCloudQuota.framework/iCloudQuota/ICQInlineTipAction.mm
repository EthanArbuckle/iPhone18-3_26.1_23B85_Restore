@interface ICQInlineTipAction
- (ICQInlineTipAction)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICQInlineTipAction

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(ICQInlineTipAction);
  [(ICQInlineTipAction *)v4 setButtonTitle:self->_buttonTitle];
  [(ICQInlineTipAction *)v4 setActionName:self->_actionName];
  [(ICQInlineTipAction *)v4 setActionURL:self->_actionURL];
  [(ICQInlineTipAction *)v4 setLink:self->_link];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  buttonTitle = self->_buttonTitle;
  coderCopy = coder;
  [coderCopy encodeObject:buttonTitle forKey:@"buttonTitle"];
  [coderCopy encodeObject:self->_actionName forKey:@"actionName"];
  [coderCopy encodeObject:self->_actionURL forKey:@"actionURL"];
  [coderCopy encodeObject:self->_link forKey:@"link"];
}

- (ICQInlineTipAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = ICQInlineTipAction;
  v5 = [(ICQInlineTipAction *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"buttonTitle"];
    buttonTitle = v5->_buttonTitle;
    v5->_buttonTitle = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionName"];
    actionName = v5->_actionName;
    v5->_actionName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionURL"];
    actionURL = v5->_actionURL;
    v5->_actionURL = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"link"];
    link = v5->_link;
    v5->_link = v12;
  }

  return v5;
}

@end