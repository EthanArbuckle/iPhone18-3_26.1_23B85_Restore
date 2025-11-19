@interface ICQActionInfo
- (ICQActionInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)initFromConfirmationAction:(id)a3;
- (id)initFromDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICQActionInfo

- (id)initFromDictionary:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = ICQActionInfo;
  v5 = [(ICQActionInfo *)&v32 init];
  if (!v5)
  {
    goto LABEL_27;
  }

  v6 = [v4 objectForKeyedSubscript:@"isDefault"];
  v7 = [v6 BOOLValue];

  [(ICQActionInfo *)v5 setIsDefault:v7];
  v8 = [v4 objectForKeyedSubscript:@"isDestructive"];
  v9 = [v8 BOOLValue];

  [(ICQActionInfo *)v5 setIsDestructive:v9];
  v10 = [v4 objectForKeyedSubscript:@"title"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ICQActionInfo *)v5 setTitle:v10];
  }

  v11 = [v4 objectForKeyedSubscript:@"subTitle"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ICQActionInfo *)v5 setSubtitle:v11];
  }

  v12 = [v4 objectForKeyedSubscript:@"actionURL"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [MEMORY[0x277CBEBC0] URLWithString:v12];
    if (v13)
    {
      [(ICQActionInfo *)v5 setActionURL:v13];
    }
  }

  v14 = [v4 objectForKeyedSubscript:@"confirmation"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = [[ICQConfirmationInfo alloc] initFromDictionary:v14];
    [(ICQActionInfo *)v5 setConfirmation:v15];
  }

  v16 = [v4 objectForKeyedSubscript:@"actionType"];
  v17 = [v4 objectForKeyedSubscript:@"actionParameters"];
  if (v16)
  {
    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v30 = v11;
    if (v17)
    {
      v28 = v12;
      v29 = v10;
      v19 = [v17 objectForKeyedSubscript:@"purchaseAttribution"];
      v20 = [v17 objectForKeyedSubscript:@"route"];
      v21 = [v17 objectForKeyedSubscript:@"identifier"];
      if (v19)
      {
        [v18 setObject:v19 forKeyedSubscript:@"purchaseAttribution"];
      }

      if (v20)
      {
        [v18 setObject:v20 forKeyedSubscript:@"route"];
      }

      if (v21)
      {
        [v18 setObject:v21 forKeyedSubscript:@"identifier"];
      }

      v12 = v28;
      v10 = v29;
    }

    if (v12)
    {
      [v18 setObject:v12 forKeyedSubscript:@"URL"];
      [v18 setObject:v12 forKeyedSubscript:@"openURL"];
    }

    v22 = v12;
    v23 = [[ICQLink alloc] initWithText:v10 action:_ICQActionForServerActionString(v16) parameters:v18];
    v24 = [(ICQActionInfo *)v5 actionURL];
    [(ICQLink *)v23 setActionURL:v24];

    goto LABEL_26;
  }

  if (v14)
  {
    v30 = v11;
    v22 = v12;
    v23 = 0;
LABEL_26:
    [(ICQActionInfo *)v5 setIcqLink:v23];

LABEL_27:
    v25 = v5;
    goto LABEL_28;
  }

  v27 = _ICQGetLogSystem();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v27, OS_LOG_TYPE_DEFAULT, "Parsing manage storage action, no action type and no confirmation found", buf, 2u);
  }

  v25 = 0;
LABEL_28:

  return v25;
}

- (id)initFromConfirmationAction:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ICQActionInfo;
  v5 = [(ICQActionInfo *)&v11 init];
  if (v5)
  {
    v6 = [v4 title];
    [(ICQActionInfo *)v5 setTitle:v6];

    v7 = [v4 subtitle];
    [(ICQActionInfo *)v5 setSubtitle:v7];

    v8 = [v4 icqLink];
    [(ICQActionInfo *)v5 setIcqLink:v8];

    v9 = [v4 actionURL];
    [(ICQActionInfo *)v5 setActionURL:v9];

    -[ICQActionInfo setIsDefault:](v5, "setIsDefault:", [v4 isDefault]);
    -[ICQActionInfo setIsDestructive:](v5, "setIsDestructive:", [v4 isDestructive]);
  }

  return v5;
}

- (id)description
{
  v2 = @"NO";
  if (self->_isDestructive)
  {
    v2 = @"YES";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"title: %@, subtitle: %@, actionURL: %@, icqLink: %@, isDefault: %hhd, isDestructive: %@, confirmation: %@", *&self->_title, self->_actionURL, self->_icqLink, self->_isDefault, v2, self->_confirmation];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(ICQActionInfo);
  [(ICQActionInfo *)v4 setTitle:self->_title];
  [(ICQActionInfo *)v4 setSubtitle:self->_subtitle];
  [(ICQActionInfo *)v4 setIcqLink:self->_icqLink];
  [(ICQActionInfo *)v4 setActionURL:self->_actionURL];
  [(ICQActionInfo *)v4 setConfirmation:self->_confirmation];
  [(ICQActionInfo *)v4 setIsDefault:self->_isDefault];
  [(ICQActionInfo *)v4 setIsDestructive:self->_isDestructive];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"title"];
  [v5 encodeObject:self->_subtitle forKey:@"subTitle"];
  [v5 encodeObject:self->_icqLink forKey:@"icqLink"];
  [v5 encodeObject:self->_actionURL forKey:@"actionURL"];
  [v5 encodeObject:self->_confirmation forKey:@"confirmation"];
  [v5 encodeBool:self->_isDefault forKey:@"isDefault"];
  [v5 encodeBool:self->_isDestructive forKey:@"isDestructive"];
}

- (ICQActionInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = ICQActionInfo;
  v5 = [(ICQActionInfo *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subTitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"icqLink"];
    icqLink = v5->_icqLink;
    v5->_icqLink = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionURL"];
    actionURL = v5->_actionURL;
    v5->_actionURL = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"confirmation"];
    confirmation = v5->_confirmation;
    v5->_confirmation = v14;

    v5->_isDefault = [v4 decodeBoolForKey:@"isDefault"];
    v5->_isDestructive = [v4 decodeBoolForKey:@"isDestructive"];
  }

  return v5;
}

@end