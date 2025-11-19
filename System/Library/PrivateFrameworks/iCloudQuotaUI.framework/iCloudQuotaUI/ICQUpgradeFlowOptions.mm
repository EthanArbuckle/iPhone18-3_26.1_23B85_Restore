@interface ICQUpgradeFlowOptions
+ (id)flowOptionsFromData:(id)a3;
- (ICQUpgradeFlowOptions)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializedData;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICQUpgradeFlowOptions

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(ICQUpgradeFlowOptions *)self navigationBarTintColor];
  [v4 setNavigationBarTintColor:v5];

  v6 = [(ICQUpgradeFlowOptions *)self buttonTintColor];
  [v4 setButtonTintColor:v6];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  navigationBarTintColor = self->_navigationBarTintColor;
  v5 = a3;
  [v5 encodeObject:navigationBarTintColor forKey:@"navigationBarTintColor"];
  [v5 encodeObject:self->_buttonTintColor forKey:@"buttonTintColor"];
}

- (ICQUpgradeFlowOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ICQUpgradeFlowOptions;
  v5 = [(ICQUpgradeFlowOptions *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"navigationBarTintColor"];
    navigationBarTintColor = v5->_navigationBarTintColor;
    v5->_navigationBarTintColor = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"buttonTintColor"];
    buttonTintColor = v5->_buttonTintColor;
    v5->_buttonTintColor = v8;
  }

  return v5;
}

- (id)serializedData
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v9];
  v4 = v9;
  v5 = _ICQGetLogSystem();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    v11 = v4;
    v7 = "Caught error (%@) serializing flowOptions";
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    v11 = self;
    v7 = "flowOptions %@ encoded successfully";
  }

  _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, v7, buf, 0xCu);
LABEL_7:

  return v3;
}

+ (id)flowOptionsFromData:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v12 = 0;
    v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v12];
    v5 = v12;
    v6 = _ICQGetLogSystem();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        *buf = 138412546;
        v14 = v5;
        v15 = 2112;
        v16 = v3;
        v8 = "Caught error (%@) unserializing flowOptions data (%@)";
        v9 = v6;
        v10 = 22;
LABEL_10:
        _os_log_impl(&dword_275623000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
      }
    }

    else if (v7)
    {
      *buf = 138412290;
      v14 = v4;
      v8 = "Successfully formed FlowOptions: %@";
      v9 = v6;
      v10 = 12;
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, "flow options is nil", buf, 2u);
  }

  v4 = 0;
LABEL_12:

  return v4;
}

@end