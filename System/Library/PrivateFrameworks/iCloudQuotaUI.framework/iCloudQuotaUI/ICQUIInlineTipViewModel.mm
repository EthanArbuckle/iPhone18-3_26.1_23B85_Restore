@interface ICQUIInlineTipViewModel
- (AMSUIBubbleTipInlineAnchorInfo)tipArrow;
- (AMSUIMessageRequest)request;
- (ICQUIInlineTipViewModel)initWithInlineTip:(id)tip;
- (id)_tipTintColorName;
@end

@implementation ICQUIInlineTipViewModel

- (ICQUIInlineTipViewModel)initWithInlineTip:(id)tip
{
  tipCopy = tip;
  v9.receiver = self;
  v9.super_class = ICQUIInlineTipViewModel;
  v6 = [(ICQUIInlineTipViewModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tip, tip);
  }

  return v7;
}

- (AMSUIMessageRequest)request
{
  v31[3] = *MEMORY[0x277D85DE8];
  v30[0] = @"background";
  v30[1] = @"imageStyle";
  v31[0] = &unk_28847A108;
  v31[1] = &unk_288479C30;
  v30[2] = @"imageTintColor";
  v28[0] = @"type";
  v28[1] = @"name";
  v29[0] = @"named";
  _tipTintColorName = [(ICQUIInlineTipViewModel *)self _tipTintColorName];
  v29[1] = _tipTintColorName;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v31[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];

  v6 = objc_alloc(MEMORY[0x277CEE8F8]);
  title = [(ICQInlineTip *)self->_tip title];
  subTitle = [(ICQInlineTip *)self->_tip subTitle];
  v9 = [v6 initWithTitle:title message:subTitle appearanceInfo:v5];

  v10 = [MEMORY[0x277CEE480] actionWithTitle:0 style:2];
  v11 = *MEMORY[0x277CEE180];
  [v10 setIdentifier:*MEMORY[0x277CEE180]];
  userInfo = [v10 userInfo];
  [userInfo setObject:v11 forKeyedSubscript:@"actionName"];

  [v9 addButtonAction:v10];
  icon = [(ICQInlineTip *)self->_tip icon];
  objc_opt_class();
  LOBYTE(userInfo) = objc_opt_isKindOfClass();

  icon2 = [(ICQInlineTip *)self->_tip icon];
  icon3 = icon2;
  if (userInfo)
  {
    v16 = MEMORY[0x277D755B8];
    path = [icon2 path];
    imageURL = [v16 systemImageNamed:path];

    [v9 setIconImage:imageURL];
LABEL_5:

    goto LABEL_6;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    icon3 = [(ICQInlineTip *)self->_tip icon];
    imageURL = [icon3 imageURL];
    v20 = [_ICQUIHelperFunctions scaledImageURL:imageURL];
    [v9 setIconURL:v20];

    goto LABEL_5;
  }

LABEL_6:
  actions = [(ICQInlineTip *)self->_tip actions];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __34__ICQUIInlineTipViewModel_request__block_invoke;
  v26[3] = &unk_27A65B680;
  v26[4] = self;
  v22 = v9;
  v27 = v22;
  [actions enumerateObjectsUsingBlock:v26];

  v23 = v27;
  v24 = v22;

  return v22;
}

void __34__ICQUIInlineTipViewModel_request__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CEE480];
  v4 = a2;
  v5 = [v4 buttonTitle];
  v6 = [MEMORY[0x277CCAD78] UUID];
  v7 = [v6 UUIDString];
  v20 = [v3 actionWithTitle:v5 identifier:v7];

  v8 = [v4 actionURL];
  [v20 setDeepLink:v8];

  v9 = [*(*(a1 + 32) + 8) criteria];
  v10 = [v9 excludeApps];
  v11 = [v20 userInfo];
  [v11 setObject:v10 forKeyedSubscript:@"excludeApps"];

  v12 = [*(*(a1 + 32) + 8) criteria];
  v13 = v12 != 0;

  v14 = [v4 actionName];

  v15 = [v20 userInfo];
  [v15 setObject:v14 forKeyedSubscript:@"actionName"];

  v16 = [*(*(a1 + 32) + 8) id];
  v17 = [v20 userInfo];
  [v17 setObject:v16 forKeyedSubscript:@"id"];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:v13];
  v19 = [v20 userInfo];
  [v19 setObject:v18 forKeyedSubscript:@"isTurnOnApps"];

  [*(a1 + 40) addButtonAction:v20];
}

- (AMSUIBubbleTipInlineAnchorInfo)tipArrow
{
  arrowConfiguration = [(ICQInlineTip *)self->_tip arrowConfiguration];
  v4 = [arrowConfiguration isEqualToString:*MEMORY[0x277D7F2F0]];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CEE898]);
    v6 = 0.5;
LABEL_3:
    v7 = 0;
    goto LABEL_7;
  }

  arrowConfiguration2 = [(ICQInlineTip *)self->_tip arrowConfiguration];
  v9 = [arrowConfiguration2 isEqualToString:*MEMORY[0x277D7F2D8]];

  if (v9)
  {
    v5 = objc_alloc(MEMORY[0x277CEE898]);
    v6 = 0.5;
LABEL_6:
    v7 = 1;
    goto LABEL_7;
  }

  arrowConfiguration3 = [(ICQInlineTip *)self->_tip arrowConfiguration];
  v13 = [arrowConfiguration3 isEqualToString:*MEMORY[0x277D7F2F8]];

  if (v13)
  {
    v5 = objc_alloc(MEMORY[0x277CEE898]);
    v6 = 0.1;
    goto LABEL_3;
  }

  arrowConfiguration4 = [(ICQInlineTip *)self->_tip arrowConfiguration];
  v15 = [arrowConfiguration4 isEqualToString:*MEMORY[0x277D7F300]];

  if (v15)
  {
    v5 = objc_alloc(MEMORY[0x277CEE898]);
    v6 = 0.9;
    goto LABEL_3;
  }

  arrowConfiguration5 = [(ICQInlineTip *)self->_tip arrowConfiguration];
  v17 = [arrowConfiguration5 isEqualToString:*MEMORY[0x277D7F2E0]];

  if (v17)
  {
    v5 = objc_alloc(MEMORY[0x277CEE898]);
    v6 = 0.1;
    goto LABEL_6;
  }

  arrowConfiguration6 = [(ICQInlineTip *)self->_tip arrowConfiguration];
  v19 = [arrowConfiguration6 isEqualToString:*MEMORY[0x277D7F2E8]];

  v5 = objc_alloc(MEMORY[0x277CEE898]);
  if (v19)
  {
    v6 = 0.9;
    goto LABEL_6;
  }

  v6 = 0.0;
  v7 = -1;
LABEL_7:
  v10 = [v5 initWithArrowDirection:v7 relativeArrowOffset:v6];

  return v10;
}

- (id)_tipTintColorName
{
  icon = [(ICQInlineTip *)self->_tip icon];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    icon2 = [(ICQInlineTip *)self->_tip icon];
    systemColorName = [icon2 systemColorName];

    if (systemColorName)
    {
      systemColorName2 = [icon2 systemColorName];
    }

    else
    {
      systemColorName2 = @"blue";
    }
  }

  else
  {
    systemColorName2 = @"blue";
  }

  return systemColorName2;
}

@end