@interface ICQUIInlineTipViewModel
- (AMSUIBubbleTipInlineAnchorInfo)tipArrow;
- (AMSUIMessageRequest)request;
- (ICQUIInlineTipViewModel)initWithInlineTip:(id)a3;
- (id)_tipTintColorName;
@end

@implementation ICQUIInlineTipViewModel

- (ICQUIInlineTipViewModel)initWithInlineTip:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ICQUIInlineTipViewModel;
  v6 = [(ICQUIInlineTipViewModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tip, a3);
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
  v3 = [(ICQUIInlineTipViewModel *)self _tipTintColorName];
  v29[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v31[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];

  v6 = objc_alloc(MEMORY[0x277CEE8F8]);
  v7 = [(ICQInlineTip *)self->_tip title];
  v8 = [(ICQInlineTip *)self->_tip subTitle];
  v9 = [v6 initWithTitle:v7 message:v8 appearanceInfo:v5];

  v10 = [MEMORY[0x277CEE480] actionWithTitle:0 style:2];
  v11 = *MEMORY[0x277CEE180];
  [v10 setIdentifier:*MEMORY[0x277CEE180]];
  v12 = [v10 userInfo];
  [v12 setObject:v11 forKeyedSubscript:@"actionName"];

  [v9 addButtonAction:v10];
  v13 = [(ICQInlineTip *)self->_tip icon];
  objc_opt_class();
  LOBYTE(v12) = objc_opt_isKindOfClass();

  v14 = [(ICQInlineTip *)self->_tip icon];
  v15 = v14;
  if (v12)
  {
    v16 = MEMORY[0x277D755B8];
    v17 = [v14 path];
    v18 = [v16 systemImageNamed:v17];

    [v9 setIconImage:v18];
LABEL_5:

    goto LABEL_6;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v15 = [(ICQInlineTip *)self->_tip icon];
    v18 = [v15 imageURL];
    v20 = [_ICQUIHelperFunctions scaledImageURL:v18];
    [v9 setIconURL:v20];

    goto LABEL_5;
  }

LABEL_6:
  v21 = [(ICQInlineTip *)self->_tip actions];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __34__ICQUIInlineTipViewModel_request__block_invoke;
  v26[3] = &unk_27A65B680;
  v26[4] = self;
  v22 = v9;
  v27 = v22;
  [v21 enumerateObjectsUsingBlock:v26];

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
  v3 = [(ICQInlineTip *)self->_tip arrowConfiguration];
  v4 = [v3 isEqualToString:*MEMORY[0x277D7F2F0]];

  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277CEE898]);
    v6 = 0.5;
LABEL_3:
    v7 = 0;
    goto LABEL_7;
  }

  v8 = [(ICQInlineTip *)self->_tip arrowConfiguration];
  v9 = [v8 isEqualToString:*MEMORY[0x277D7F2D8]];

  if (v9)
  {
    v5 = objc_alloc(MEMORY[0x277CEE898]);
    v6 = 0.5;
LABEL_6:
    v7 = 1;
    goto LABEL_7;
  }

  v12 = [(ICQInlineTip *)self->_tip arrowConfiguration];
  v13 = [v12 isEqualToString:*MEMORY[0x277D7F2F8]];

  if (v13)
  {
    v5 = objc_alloc(MEMORY[0x277CEE898]);
    v6 = 0.1;
    goto LABEL_3;
  }

  v14 = [(ICQInlineTip *)self->_tip arrowConfiguration];
  v15 = [v14 isEqualToString:*MEMORY[0x277D7F300]];

  if (v15)
  {
    v5 = objc_alloc(MEMORY[0x277CEE898]);
    v6 = 0.9;
    goto LABEL_3;
  }

  v16 = [(ICQInlineTip *)self->_tip arrowConfiguration];
  v17 = [v16 isEqualToString:*MEMORY[0x277D7F2E0]];

  if (v17)
  {
    v5 = objc_alloc(MEMORY[0x277CEE898]);
    v6 = 0.1;
    goto LABEL_6;
  }

  v18 = [(ICQInlineTip *)self->_tip arrowConfiguration];
  v19 = [v18 isEqualToString:*MEMORY[0x277D7F2E8]];

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
  v3 = [(ICQInlineTip *)self->_tip icon];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(ICQInlineTip *)self->_tip icon];
    v6 = [v5 systemColorName];

    if (v6)
    {
      v7 = [v5 systemColorName];
    }

    else
    {
      v7 = @"blue";
    }
  }

  else
  {
    v7 = @"blue";
  }

  return v7;
}

@end