@interface ICQInAppAction
- (BOOL)isEqual:(id)a3;
- (ICQInAppAction)initWithCoder:(id)a3;
- (ICQInAppAction)initWithTitle:(id)a3 type:(id)a4 icqActionType:(int64_t)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICQInAppAction

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ICQInAppAction *)self title];
  [v4 encodeObject:v5 forKey:@"title"];

  v6 = [(ICQInAppAction *)self type];
  [v4 encodeObject:v6 forKey:@"type"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ICQInAppAction icqActionType](self, "icqActionType")}];
  [v4 encodeObject:v7 forKey:@"icqActionType"];

  v8 = [(ICQInAppAction *)self inAppAlert];
  [v4 encodeObject:v8 forKey:@"inAppAlert"];
}

- (ICQInAppAction)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ICQInAppAction;
  v5 = [(ICQInAppAction *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"icqActionType"];
    v5->_icqActionType = [v10 intValue];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"inAppAlert"];
    inAppAlert = v5->_inAppAlert;
    v5->_inAppAlert = v11;
  }

  return v5;
}

- (ICQInAppAction)initWithTitle:(id)a3 type:(id)a4 icqActionType:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = ICQInAppAction;
  v11 = [(ICQInAppAction *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_type, a4);
    objc_storeStrong(&v12->_title, a3);
    v12->_icqActionType = a5;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    title = self->_title;
    v7 = [v5 title];
    if ([(NSString *)title isEqualToString:v7])
    {
      type = self->_type;
      v9 = [v5 type];
      if ([(NSString *)type isEqualToString:v9])
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
  v4 = [(ICQInAppAction *)self title];
  v5 = [(ICQInAppAction *)self type];
  v6 = [v3 stringWithFormat:@"actionTitle: %@, actionType: %@", v4, v5];

  return v6;
}

@end