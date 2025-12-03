@interface RERecentActionNotifier
- (void)performedAction:(id)action;
@end

@implementation RERecentActionNotifier

- (void)performedAction:(id)action
{
  v15[3] = *MEMORY[0x277D85DE8];
  if (action)
  {
    v14[0] = @"RERecentDonatedActionBundleIdentifierKey";
    actionCopy = action;
    donationIdentifier = [actionCopy donationIdentifier];
    dataSource = [donationIdentifier dataSource];
    v15[0] = dataSource;
    v14[1] = @"RERecentDonatedActionIdentifierKey";
    v6 = MEMORY[0x277CCABB0];
    actionTypeIdentifier = [actionCopy actionTypeIdentifier];
    v8 = [v6 numberWithUnsignedLongLong:{objc_msgSend(actionTypeIdentifier, "re_actionIdentifierHashValue")}];
    v15[1] = v8;
    v14[2] = @"RERecentDonatedActionDateKey";
    creationDate = [actionCopy creationDate];

    date = creationDate;
    if (!creationDate)
    {
      date = [MEMORY[0x277CBEAA8] date];
    }

    v15[2] = date;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
    if (!creationDate)
    {
    }

    defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
    [defaultCenter postNotificationName:@"RERecentDonatedActionWasPerformedNotification" object:0 userInfo:v11];
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end