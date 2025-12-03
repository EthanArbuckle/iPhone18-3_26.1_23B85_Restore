@interface ICQConfirmationActionInfo
- (ICQConfirmationActionInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initFromDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICQConfirmationActionInfo

- (id)initFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = ICQConfirmationActionInfo;
  v5 = [(ICQConfirmationActionInfo *)&v23 init];
  if (!v5)
  {
    goto LABEL_23;
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"isDefault"];
  bOOLValue = [v6 BOOLValue];

  [(ICQConfirmationActionInfo *)v5 setIsDefault:bOOLValue];
  v8 = [dictionaryCopy objectForKeyedSubscript:@"isDestructive"];
  bOOLValue2 = [v8 BOOLValue];

  [(ICQConfirmationActionInfo *)v5 setIsDestructive:bOOLValue2];
  v10 = [dictionaryCopy objectForKeyedSubscript:@"title"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ICQConfirmationActionInfo *)v5 setTitle:v10];
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"subTitle"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ICQConfirmationActionInfo *)v5 setSubtitle:v11];
  }

  v12 = [dictionaryCopy objectForKeyedSubscript:@"actionURL"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [MEMORY[0x277CBEBC0] URLWithString:v12];
    if (v13)
    {
      [(ICQConfirmationActionInfo *)v5 setActionURL:v13];
    }
  }

  v14 = [dictionaryCopy objectForKeyedSubscript:@"actionType"];
  v15 = [dictionaryCopy objectForKeyedSubscript:@"actionParameters"];
  if (v14)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if (v15)
    {
      v17 = [v15 objectForKeyedSubscript:@"purchaseAttribution"];
      v18 = [v15 objectForKeyedSubscript:@"route"];
      if (v17)
      {
        [v16 setObject:v17 forKeyedSubscript:@"purchaseAttribution"];
      }

      if (v18)
      {
        [v16 setObject:v18 forKeyedSubscript:@"route"];
      }
    }

    if (v12)
    {
      [v16 setObject:v12 forKeyedSubscript:@"URL"];
      [v16 setObject:v12 forKeyedSubscript:@"openURL"];
    }

    v19 = [[ICQLink alloc] initWithText:v10 action:_ICQActionForServerActionString(v14) parameters:v16];

    [(ICQConfirmationActionInfo *)v5 setIcqLink:v19];
  }

  else
  {
    v19 = _ICQGetLogSystem();
    if (os_log_type_enabled(&v19->super, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&dword_275572000, &v19->super, OS_LOG_TYPE_DEFAULT, "Parsing manage storage confirmation action, no action type found", v22, 2u);
    }
  }

  if (!v14)
  {
    v20 = 0;
  }

  else
  {
LABEL_23:
    v20 = v5;
  }

  return v20;
}

- (id)description
{
  if (self->_isDestructive)
  {
    v2 = @"YES";
  }

  else
  {
    v2 = @"NO";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"title: %@, subtitle: %@, actionURL: %@, icqLink: %@, isDefault: %hhd, isDestructive: %@", *&self->_title, self->_actionURL, self->_icqLink, self->_isDefault, v2];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(ICQConfirmationActionInfo);
  [(ICQConfirmationActionInfo *)v4 setTitle:self->_title];
  [(ICQConfirmationActionInfo *)v4 setSubtitle:self->_subtitle];
  [(ICQConfirmationActionInfo *)v4 setIcqLink:self->_icqLink];
  [(ICQConfirmationActionInfo *)v4 setActionURL:self->_actionURL];
  [(ICQConfirmationActionInfo *)v4 setIsDefault:self->_isDefault];
  [(ICQConfirmationActionInfo *)v4 setIsDestructive:self->_isDestructive];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeObject:self->_subtitle forKey:@"subTitle"];
  [coderCopy encodeObject:self->_icqLink forKey:@"icqLink"];
  [coderCopy encodeObject:self->_actionURL forKey:@"actionURL"];
  [coderCopy encodeBool:self->_isDefault forKey:@"isDefault"];
  [coderCopy encodeBool:self->_isDestructive forKey:@"isDestructive"];
}

- (ICQConfirmationActionInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = ICQConfirmationActionInfo;
  v5 = [(ICQConfirmationActionInfo *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subTitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"icqLink"];
    icqLink = v5->_icqLink;
    v5->_icqLink = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionURL"];
    actionURL = v5->_actionURL;
    v5->_actionURL = v12;

    v5->_isDefault = [coderCopy decodeBoolForKey:@"isDefault"];
    v5->_isDestructive = [coderCopy decodeBoolForKey:@"isDestructive"];
  }

  return v5;
}

@end