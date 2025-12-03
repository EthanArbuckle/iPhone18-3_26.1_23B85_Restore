@interface ICQUIManageStorageTipViewModel
- (AMSUIMessageRequest)request;
- (ICQUIManageStorageTipViewModel)initWithSectionAttributes:(id)attributes rows:(id)rows;
- (ICQUIManageStorageTipViewModel)initWithTipInfo:(id)info;
@end

@implementation ICQUIManageStorageTipViewModel

- (ICQUIManageStorageTipViewModel)initWithTipInfo:(id)info
{
  infoCopy = info;
  v5 = objc_alloc_init(MEMORY[0x277D7F368]);
  v28.receiver = self;
  v28.super_class = ICQUIManageStorageTipViewModel;
  v6 = [(ICQUIInlineTipViewModel *)&v28 initWithInlineTip:v5];

  if (!v6)
  {
    goto LABEL_11;
  }

  title = [infoCopy title];
  title = v6->_title;
  v6->_title = title;

  subtitle = [infoCopy subtitle];
  subTitle = v6->_subTitle;
  v6->_subTitle = subtitle;

  icon = [infoCopy icon];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  icon2 = [infoCopy icon];
  icon3 = icon2;
  if (isKindOfClass)
  {
    path = [icon2 path];
    systemIconName = v6->_systemIconName;
    v6->_systemIconName = path;

    systemColorName = [icon3 systemColorName];
    v18 = &OBJC_IVAR___ICQUIManageStorageTipViewModel__systemColor;
  }

  else
  {
    objc_opt_class();
    v19 = objc_opt_isKindOfClass();

    if ((v19 & 1) == 0)
    {
      goto LABEL_7;
    }

    icon3 = [infoCopy icon];
    systemColorName = [icon3 imageURL];
    v18 = &OBJC_IVAR___ICQUIManageStorageTipViewModel__iconURL;
  }

  v20 = *v18;
  v21 = *(&v6->super.super.isa + v20);
  *(&v6->super.super.isa + v20) = systemColorName;

LABEL_7:
  actions = [infoCopy actions];
  v23 = [ICQUIManageStorageTipAction actionsFromActionInfos:actions];
  actions = v6->_actions;
  v6->_actions = v23;

  if (!v6->_systemColor)
  {
    v25 = _ICQGetLogSystem();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [ICQUIManageStorageTipViewModel initWithTipInfo:];
    }

    systemColor = v6->_systemColor;
    v6->_systemColor = @"labelColor";
  }

LABEL_11:

  return v6;
}

- (ICQUIManageStorageTipViewModel)initWithSectionAttributes:(id)attributes rows:(id)rows
{
  attributesCopy = attributes;
  rowsCopy = rows;
  v8 = objc_alloc_init(MEMORY[0x277D7F368]);
  v29.receiver = self;
  v29.super_class = ICQUIManageStorageTipViewModel;
  v9 = [(ICQUIInlineTipViewModel *)&v29 initWithInlineTip:v8];

  if (v9)
  {
    v10 = [attributesCopy objectForKeyedSubscript:@"title"];
    title = v9->_title;
    v9->_title = v10;

    v12 = [attributesCopy objectForKeyedSubscript:@"subTitle"];
    subTitle = v9->_subTitle;
    v9->_subTitle = v12;

    v14 = [attributesCopy objectForKeyedSubscript:@"systemIcon"];
    systemIconName = v9->_systemIconName;
    v9->_systemIconName = v14;

    v16 = [attributesCopy objectForKeyedSubscript:@"id"];
    sectionID = v9->_sectionID;
    v9->_sectionID = v16;

    v18 = [attributesCopy objectForKeyedSubscript:@"systemColor"];
    systemColor = v9->_systemColor;
    v9->_systemColor = v18;

    v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(rowsCopy, "count")}];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __65__ICQUIManageStorageTipViewModel_initWithSectionAttributes_rows___block_invoke;
    v27[3] = &unk_27A65B608;
    v21 = v20;
    v28 = v21;
    [rowsCopy enumerateObjectsUsingBlock:v27];
    v22 = [v21 copy];
    actions = v9->_actions;
    v9->_actions = v22;

    if (!v9->_systemColor)
    {
      v24 = _ICQGetLogSystem();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [ICQUIManageStorageTipViewModel initWithSectionAttributes:rows:];
      }

      v25 = v9->_systemColor;
      v9->_systemColor = @"labelColor";
    }
  }

  return v9;
}

void __65__ICQUIManageStorageTipViewModel_initWithSectionAttributes_rows___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[ICQUIManageStorageTipAction alloc] initFromRUITableViewRow:v3];

  [v2 addObject:v4];
}

- (AMSUIMessageRequest)request
{
  v18[3] = *MEMORY[0x277D85DE8];
  v17[0] = @"background";
  v17[1] = @"imageStyle";
  v18[0] = &unk_28847A0B8;
  v18[1] = &unk_288479C18;
  v17[2] = @"imageTintColor";
  v15[0] = @"type";
  v15[1] = @"name";
  systemColor = self->_systemColor;
  v16[0] = @"named";
  v16[1] = systemColor;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v18[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];

  v6 = [objc_alloc(MEMORY[0x277CEE8F8]) initWithTitle:self->_title message:self->_subTitle appearanceInfo:v5];
  if (self->_systemIconName)
  {
    v7 = [MEMORY[0x277D755B8] systemImageNamed:?];
    [v6 setIconImage:v7];
LABEL_5:

    goto LABEL_6;
  }

  if (self->_iconURL)
  {
    v7 = [_ICQUIHelperFunctions scaledImageURL:?];
    [v6 setIconURL:v7];
    goto LABEL_5;
  }

LABEL_6:
  actions = self->_actions;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __41__ICQUIManageStorageTipViewModel_request__block_invoke;
  v13[3] = &unk_27A65B630;
  v13[4] = self;
  v9 = v6;
  v14 = v9;
  [(NSArray *)actions enumerateObjectsUsingBlock:v13];
  v10 = v14;
  v11 = v9;

  return v9;
}

void __41__ICQUIManageStorageTipViewModel_request__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CEE480];
  v4 = a2;
  v5 = [v4 actionButtonText];
  v6 = [MEMORY[0x277CCAD78] UUID];
  v7 = [v6 UUIDString];
  v14 = [v3 actionWithTitle:v5 identifier:v7];

  v8 = [v4 actionURL];
  [v14 setDeepLink:v8];

  v9 = [v4 actionName];

  v10 = [v14 userInfo];
  [v10 setObject:v9 forKeyedSubscript:@"actionName"];

  v11 = *(*(a1 + 32) + 40);
  v12 = [v14 userInfo];
  [v12 setObject:v11 forKeyedSubscript:@"id"];

  v13 = [v14 userInfo];
  [v13 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"isManageStorageTip"];

  [*(a1 + 40) addButtonAction:v14];
}

- (void)initWithTipInfo:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(&dword_275623000, v0, OS_LOG_TYPE_ERROR, "%s no image system color provided in tipInfo %@, using UIColor labelColor.", v1, 0x16u);
}

- (void)initWithSectionAttributes:rows:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(&dword_275623000, v0, OS_LOG_TYPE_ERROR, "%s no image system color provided in attributes %@, using UIColor labelColor.", v1, 0x16u);
}

@end