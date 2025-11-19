@interface ICQUIManageStorageTipAction
+ (id)actionsFromActionInfos:(id)a3;
- (id)initFromActionInfo:(id)a3;
- (id)initFromRUITableViewRow:(id)a3;
@end

@implementation ICQUIManageStorageTipAction

- (id)initFromRUITableViewRow:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = ICQUIManageStorageTipAction;
  v5 = [(ICQUIManageStorageTipAction *)&v16 init];
  if (v5)
  {
    v6 = [v4 attributes];
    v7 = [v6 objectForKeyedSubscript:@"actionButtonText"];
    actionButtonText = v5->_actionButtonText;
    v5->_actionButtonText = v7;

    v9 = [v6 objectForKeyedSubscript:@"actionName"];
    actionName = v5->_actionName;
    v5->_actionName = v9;

    v11 = MEMORY[0x277CBEBC0];
    v12 = [v6 objectForKeyedSubscript:@"actionURL"];
    v13 = [v11 URLWithString:v12];
    actionURL = v5->_actionURL;
    v5->_actionURL = v13;
  }

  return v5;
}

- (id)initFromActionInfo:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = ICQUIManageStorageTipAction;
  v5 = [(ICQUIManageStorageTipAction *)&v22 init];
  if (v5)
  {
    v6 = [v4 title];
    actionButtonText = v5->_actionButtonText;
    v5->_actionButtonText = v6;

    v8 = [v4 icqLink];
    [v8 action];
    v9 = _ICQStringForAction();
    actionName = v5->_actionName;
    v5->_actionName = v9;

    v11 = [v4 actionURL];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
      actionURL = v5->_actionURL;
      v5->_actionURL = v13;
    }

    else
    {
      actionURL = [v4 icqLink];
      v15 = [actionURL serverUIURL];
      v16 = v15;
      if (v15)
      {
        v17 = v15;
        v18 = v5->_actionURL;
        v5->_actionURL = v17;
      }

      else
      {
        v18 = [v4 icqLink];
        v19 = [v18 actionURL];
        v20 = v5->_actionURL;
        v5->_actionURL = v19;
      }
    }
  }

  return v5;
}

+ (id)actionsFromActionInfos:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
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