@interface NCNotificationCellHeightDictionary
- (NCNotificationCellHeightDictionary)init;
- (id)heightForRequest:(id)a3 withContentConfiguration:(id)a4;
- (void)removeAllHeightsForRequest:(id)a3;
- (void)removeHeightForContentConfiguration:(id)a3 forRequest:(id)a4;
- (void)setHeight:(double)a3 forRequest:(id)a4 withContentConfiguration:(id)a5;
@end

@implementation NCNotificationCellHeightDictionary

- (NCNotificationCellHeightDictionary)init
{
  v5.receiver = self;
  v5.super_class = NCNotificationCellHeightDictionary;
  v2 = [(NCNotificationCellHeightDictionary *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(NCNotificationCellHeightDictionary *)v2 setCellHeightDictionary:v3];
  }

  return v2;
}

- (id)heightForRequest:(id)a3 withContentConfiguration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NCNotificationCellHeightDictionary *)self cellHeightDictionary];
  v9 = [v7 identifiersString];

  v10 = [v8 objectForKey:v9];
  v11 = [v10 heightForContentConfiguration:v6];

  return v11;
}

- (void)setHeight:(double)a3 forRequest:(id)a4 withContentConfiguration:(id)a5
{
  v12 = a5;
  v8 = [a4 identifiersString];
  v9 = [(NCNotificationCellHeightDictionary *)self cellHeightDictionary];
  v10 = [v9 objectForKey:v8];

  if (!v10)
  {
    v10 = objc_opt_new();
  }

  [v10 setHeight:v12 forContentConfiguration:a3];
  v11 = [(NCNotificationCellHeightDictionary *)self cellHeightDictionary];
  [v11 setObject:v10 forKey:v8];
}

- (void)removeHeightForContentConfiguration:(id)a3 forRequest:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(NCNotificationCellHeightDictionary *)self cellHeightDictionary];
  v9 = [v7 identifiersString];
  v10 = [v8 objectForKey:v9];
  [v10 removeHeightForContentConfiguration:v6];

  v11 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [v7 notificationIdentifier];
    v14 = [v13 un_logDigest];
    v15 = 138543618;
    v16 = v14;
    v17 = 2114;
    v18 = v6;
    _os_log_impl(&dword_21E77E000, v12, OS_LOG_TYPE_DEFAULT, "Notification height cache removed for request %{public}@ with contentConfiguration %{public}@", &v15, 0x16u);
  }
}

- (void)removeAllHeightsForRequest:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 identifiersString];
  if (v5)
  {
    v6 = [(NCNotificationCellHeightDictionary *)self cellHeightDictionary];
    [v6 removeObjectForKey:v5];

    v7 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [v4 notificationIdentifier];
      v10 = [v9 un_logDigest];
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_21E77E000, v8, OS_LOG_TYPE_DEFAULT, "Notification height cache removed for request %{public}@", &v12, 0xCu);
    }
  }

  else
  {
    v11 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_21E77E000, v11, OS_LOG_TYPE_DEFAULT, "Notification height cache removal failed due to nil requestIdentifier", &v12, 2u);
    }
  }
}

@end