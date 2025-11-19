@interface ICQSpecifierInfo
- (ICQSpecifierInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICQSpecifierInfo

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(ICQSpecifierInfo);
  [(ICQSpecifierInfo *)v4 setIdentifier:self->_identifier];
  [(ICQSpecifierInfo *)v4 setType:self->_type];
  [(ICQSpecifierInfo *)v4 setTitle:self->_title];
  [(ICQSpecifierInfo *)v4 setSubTitle:self->_subTitle];
  [(ICQSpecifierInfo *)v4 setIconURL:self->_iconURL];
  [(ICQSpecifierInfo *)v4 setActionURL:self->_actionURL];
  [(ICQSpecifierInfo *)v4 setIcqLink:self->_icqLink];
  [(ICQSpecifierInfo *)v4 setActions:self->_actions];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_type forKey:@"type"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeObject:self->_subTitle forKey:@"subTitle"];
  [v5 encodeObject:self->_iconURL forKey:@"iconURL"];
  [v5 encodeObject:self->_actionURL forKey:@"actionURL"];
  [v5 encodeObject:self->_icqLink forKey:@"icqLink"];
  [v5 encodeObject:self->_actions forKey:@"actions"];
}

- (ICQSpecifierInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = ICQSpecifierInfo;
  v5 = [(ICQSpecifierInfo *)&v23 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subTitle"];
    subTitle = v5->_subTitle;
    v5->_subTitle = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iconURL"];
    iconURL = v5->_iconURL;
    v5->_iconURL = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionURL"];
    actionURL = v5->_actionURL;
    v5->_actionURL = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"icqLink"];
    icqLink = v5->_icqLink;
    v5->_icqLink = v18;

    v20 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"actions"];
    actions = v5->_actions;
    v5->_actions = v20;
  }

  return v5;
}

@end