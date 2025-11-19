@interface ICQInlineTip
+ (NSArray)downwardArrowConfigurationStrings;
+ (NSArray)upwardArrowConfigurationStrings;
- (ICQInlineTip)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICQInlineTip

- (id)description
{
  v2 = *&self->_title;
  dismissURL = self->_dismissURL;
  return [MEMORY[0x277CCACA8] stringWithFormat:@"id: %@ anchor: %@, title: %@, subtitle: %@ actions: %@, criteria: %@, arrowConfiguration:%@ icon: %@ dismissURL:%@, displayURL: %@", self->_id, self->_anchor, self->_title, self->_subTitle, self->_actions, self->_criteria, self->_arrowConfiguration, self->_icon, dismissURL, self->_displayURL];
}

+ (NSArray)upwardArrowConfigurationStrings
{
  if (upwardArrowConfigurationStrings_onceToken != -1)
  {
    +[ICQInlineTip upwardArrowConfigurationStrings];
  }

  v3 = upwardArrowConfigurationStrings_strings;

  return v3;
}

void __47__ICQInlineTip_upwardArrowConfigurationStrings__block_invoke()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = @"TOP";
  v3[1] = @"TOPLEFT";
  v3[2] = @"TOPRIGHT";
  v3[3] = @"NONE";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:4];
  v1 = upwardArrowConfigurationStrings_strings;
  upwardArrowConfigurationStrings_strings = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (NSArray)downwardArrowConfigurationStrings
{
  if (downwardArrowConfigurationStrings_onceToken != -1)
  {
    +[ICQInlineTip downwardArrowConfigurationStrings];
  }

  v3 = downwardArrowConfigurationStrings_strings;

  return v3;
}

void __49__ICQInlineTip_downwardArrowConfigurationStrings__block_invoke()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v3[0] = @"BOTTOM";
  v3[1] = @"BOTTOMLEFT";
  v3[2] = @"BOTTOMRIGHT";
  v3[3] = @"NONE";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:4];
  v1 = downwardArrowConfigurationStrings_strings;
  downwardArrowConfigurationStrings_strings = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(ICQInlineTip);
  [(ICQInlineTip *)v4 setId:self->_id];
  [(ICQInlineTip *)v4 setAnchor:self->_anchor];
  [(ICQInlineTip *)v4 setTitle:self->_title];
  [(ICQInlineTip *)v4 setSubTitle:self->_subTitle];
  [(ICQInlineTip *)v4 setActions:self->_actions];
  [(ICQInlineTip *)v4 setCriteria:self->_criteria];
  [(ICQInlineTip *)v4 setIcon:self->_icon];
  [(ICQInlineTip *)v4 setArrowConfiguration:self->_arrowConfiguration];
  [(ICQInlineTip *)v4 setDismissURL:self->_dismissURL];
  [(ICQInlineTip *)v4 setDisplayURL:self->_displayURL];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  id = self->_id;
  v5 = a3;
  [v5 encodeObject:id forKey:@"id"];
  [v5 encodeObject:self->_anchor forKey:@"anchor"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeObject:self->_subTitle forKey:@"subTitle"];
  [v5 encodeObject:self->_actions forKey:@"actions"];
  [v5 encodeObject:self->_criteria forKey:@"criteria"];
  [v5 encodeObject:self->_arrowConfiguration forKey:@"arrowConfiguration"];
  [v5 encodeObject:self->_icon forKey:@"icon"];
  [v5 encodeObject:self->_dismissURL forKey:@"dismissURL"];
  [v5 encodeObject:self->_displayURL forKey:@"displayURL"];
}

- (ICQInlineTip)initWithCoder:(id)a3
{
  v32[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v31.receiver = self;
  v31.super_class = ICQInlineTip;
  v5 = [(ICQInlineTip *)&v31 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    id = v5->_id;
    v5->_id = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"anchor"];
    anchor = v5->_anchor;
    v5->_anchor = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subTitle"];
    subTitle = v5->_subTitle;
    v5->_subTitle = v12;

    v14 = MEMORY[0x277CBEB98];
    v32[0] = objc_opt_class();
    v32[1] = objc_opt_class();
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    v16 = [v14 setWithArray:v15];

    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"actions"];
    actions = v5->_actions;
    v5->_actions = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"criteria"];
    criteria = v5->_criteria;
    v5->_criteria = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"arrowConfiguration"];
    arrowConfiguration = v5->_arrowConfiguration;
    v5->_arrowConfiguration = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dismissURL"];
    dismissURL = v5->_dismissURL;
    v5->_dismissURL = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayURL"];
    displayURL = v5->_displayURL;
    v5->_displayURL = v27;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v5;
}

@end