@interface ICQUIManageStorageTipAction
+ (id)actionsFromActionInfos:(id)infos;
- (id)initFromActionInfo:(id)info;
- (id)initFromRUITableViewRow:(id)row;
@end

@implementation ICQUIManageStorageTipAction

- (id)initFromRUITableViewRow:(id)row
{
  rowCopy = row;
  v16.receiver = self;
  v16.super_class = ICQUIManageStorageTipAction;
  v5 = [(ICQUIManageStorageTipAction *)&v16 init];
  if (v5)
  {
    attributes = [rowCopy attributes];
    v7 = [attributes objectForKeyedSubscript:@"actionButtonText"];
    actionButtonText = v5->_actionButtonText;
    v5->_actionButtonText = v7;

    v9 = [attributes objectForKeyedSubscript:@"actionName"];
    actionName = v5->_actionName;
    v5->_actionName = v9;

    v11 = MEMORY[0x277CBEBC0];
    v12 = [attributes objectForKeyedSubscript:@"actionURL"];
    v13 = [v11 URLWithString:v12];
    actionURL = v5->_actionURL;
    v5->_actionURL = v13;
  }

  return v5;
}

- (id)initFromActionInfo:(id)info
{
  infoCopy = info;
  v22.receiver = self;
  v22.super_class = ICQUIManageStorageTipAction;
  v5 = [(ICQUIManageStorageTipAction *)&v22 init];
  if (v5)
  {
    title = [infoCopy title];
    actionButtonText = v5->_actionButtonText;
    v5->_actionButtonText = title;

    icqLink = [infoCopy icqLink];
    [icqLink action];
    v9 = _ICQStringForAction();
    actionName = v5->_actionName;
    v5->_actionName = v9;

    actionURL = [infoCopy actionURL];
    v12 = actionURL;
    if (actionURL)
    {
      v13 = actionURL;
      actionURL = v5->_actionURL;
      v5->_actionURL = v13;
    }

    else
    {
      actionURL = [infoCopy icqLink];
      serverUIURL = [actionURL serverUIURL];
      v16 = serverUIURL;
      if (serverUIURL)
      {
        v17 = serverUIURL;
        icqLink2 = v5->_actionURL;
        v5->_actionURL = v17;
      }

      else
      {
        icqLink2 = [infoCopy icqLink];
        actionURL2 = [icqLink2 actionURL];
        v20 = v5->_actionURL;
        v5->_actionURL = actionURL2;
      }
    }
  }

  return v5;
}

+ (id)actionsFromActionInfos:(id)infos
{
  v19 = *MEMORY[0x277D85DE8];
  infosCopy = infos;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = infosCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [ICQUIManageStorageTipAction alloc];
        v12 = [(ICQUIManageStorageTipAction *)v11 initFromActionInfo:v10, v14];
        if (v12)
        {
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

@end