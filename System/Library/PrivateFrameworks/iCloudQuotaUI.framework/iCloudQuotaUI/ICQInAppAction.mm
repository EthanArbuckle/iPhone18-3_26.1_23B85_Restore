@interface ICQInAppAction
- (BOOL)isEqual:(id)equal;
- (ICQInAppAction)initWithCoder:(id)coder;
- (ICQInAppAction)initWithTitle:(id)title type:(id)type icqActionType:(int64_t)actionType;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICQInAppAction

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(ICQInAppAction *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  type = [(ICQInAppAction *)self type];
  [coderCopy encodeObject:type forKey:@"type"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ICQInAppAction icqActionType](self, "icqActionType")}];
  [coderCopy encodeObject:v7 forKey:@"icqActionType"];

  inAppAlert = [(ICQInAppAction *)self inAppAlert];
  [coderCopy encodeObject:inAppAlert forKey:@"inAppAlert"];
}

- (ICQInAppAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = ICQInAppAction;
  v5 = [(ICQInAppAction *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"icqActionType"];
    v5->_icqActionType = [v10 intValue];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"inAppAlert"];
    inAppAlert = v5->_inAppAlert;
    v5->_inAppAlert = v11;
  }

  return v5;
}

- (ICQInAppAction)initWithTitle:(id)title type:(id)type icqActionType:(int64_t)actionType
{
  titleCopy = title;
  typeCopy = type;
  v14.receiver = self;
  v14.super_class = ICQInAppAction;
  v11 = [(ICQInAppAction *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_type, type);
    objc_storeStrong(&v12->_title, title);
    v12->_icqActionType = actionType;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    title = self->_title;
    title = [v5 title];
    if ([(NSString *)title isEqualToString:title])
    {
      type = self->_type;
      type = [v5 type];
      if ([(NSString *)type isEqualToString:type])
      {
        icqActionType = self->_icqActionType;
        v11 = icqActionType == [v5 icqActionType];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  title = [(ICQInAppAction *)self title];
  type = [(ICQInAppAction *)self type];
  v6 = [v3 stringWithFormat:@"actionTitle: %@, actionType: %@", title, type];

  return v6;
}

@end