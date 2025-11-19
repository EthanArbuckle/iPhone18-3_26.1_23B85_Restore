@interface RERecentActionNotifier
- (void)performedAction:(id)a3;
@end

@implementation RERecentActionNotifier

- (void)performedAction:(id)a3
{
  v15[3] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v14[0] = @"RERecentDonatedActionBundleIdentifierKey";
    v3 = a3;
    v4 = [v3 donationIdentifier];
    v5 = [v4 dataSource];
    v15[0] = v5;
    v14[1] = @"RERecentDonatedActionIdentifierKey";
    v6 = MEMORY[0x277CCABB0];
    v7 = [v3 actionTypeIdentifier];
    v8 = [v6 numberWithUnsignedLongLong:{objc_msgSend(v7, "re_actionIdentifierHashValue")}];
    v15[1] = v8;
    v14[2] = @"RERecentDonatedActionDateKey";
    v9 = [v3 creationDate];

    v10 = v9;
    if (!v9)
    {
      v10 = [MEMORY[0x277CBEAA8] date];
    }

    v15[2] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
    if (!v9)
    {
    }

    v12 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v12 postNotificationName:@"RERecentDonatedActionWasPerformedNotification" object:0 userInfo:v11];
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end