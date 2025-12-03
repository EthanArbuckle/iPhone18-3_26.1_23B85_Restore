@interface ICQUpgradeFlowOptions
+ (id)flowOptionsFromData:(id)data;
- (ICQUpgradeFlowOptions)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializedData;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICQUpgradeFlowOptions

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  navigationBarTintColor = [(ICQUpgradeFlowOptions *)self navigationBarTintColor];
  [v4 setNavigationBarTintColor:navigationBarTintColor];

  buttonTintColor = [(ICQUpgradeFlowOptions *)self buttonTintColor];
  [v4 setButtonTintColor:buttonTintColor];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  navigationBarTintColor = self->_navigationBarTintColor;
  coderCopy = coder;
  [coderCopy encodeObject:navigationBarTintColor forKey:@"navigationBarTintColor"];
  [coderCopy encodeObject:self->_buttonTintColor forKey:@"buttonTintColor"];
}

- (ICQUpgradeFlowOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ICQUpgradeFlowOptions;
  v5 = [(ICQUpgradeFlowOptions *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"navigationBarTintColor"];
    navigationBarTintColor = v5->_navigationBarTintColor;
    v5->_navigationBarTintColor = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"buttonTintColor"];
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
    selfCopy = v4;
    v7 = "Caught error (%@) serializing flowOptions";
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    selfCopy = self;
    v7 = "flowOptions %@ encoded successfully";
  }

  _os_log_impl(&dword_275623000, v5, OS_LOG_TYPE_DEFAULT, v7, buf, 0xCu);
LABEL_7:

  return v3;
}

+ (id)flowOptionsFromData:(id)data
{
  v17 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (dataCopy)
  {
    v12 = 0;
    v4 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v12];
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
        v16 = dataCopy;
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