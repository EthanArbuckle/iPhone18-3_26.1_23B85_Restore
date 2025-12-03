@interface NCNotificationCellHeightDictionary
- (NCNotificationCellHeightDictionary)init;
- (id)heightForRequest:(id)request withContentConfiguration:(id)configuration;
- (void)removeAllHeightsForRequest:(id)request;
- (void)removeHeightForContentConfiguration:(id)configuration forRequest:(id)request;
- (void)setHeight:(double)height forRequest:(id)request withContentConfiguration:(id)configuration;
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

- (id)heightForRequest:(id)request withContentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  requestCopy = request;
  cellHeightDictionary = [(NCNotificationCellHeightDictionary *)self cellHeightDictionary];
  identifiersString = [requestCopy identifiersString];

  v10 = [cellHeightDictionary objectForKey:identifiersString];
  v11 = [v10 heightForContentConfiguration:configurationCopy];

  return v11;
}

- (void)setHeight:(double)height forRequest:(id)request withContentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  identifiersString = [request identifiersString];
  cellHeightDictionary = [(NCNotificationCellHeightDictionary *)self cellHeightDictionary];
  v10 = [cellHeightDictionary objectForKey:identifiersString];

  if (!v10)
  {
    v10 = objc_opt_new();
  }

  [v10 setHeight:configurationCopy forContentConfiguration:height];
  cellHeightDictionary2 = [(NCNotificationCellHeightDictionary *)self cellHeightDictionary];
  [cellHeightDictionary2 setObject:v10 forKey:identifiersString];
}

- (void)removeHeightForContentConfiguration:(id)configuration forRequest:(id)request
{
  v19 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  requestCopy = request;
  cellHeightDictionary = [(NCNotificationCellHeightDictionary *)self cellHeightDictionary];
  identifiersString = [requestCopy identifiersString];
  v10 = [cellHeightDictionary objectForKey:identifiersString];
  [v10 removeHeightForContentConfiguration:configurationCopy];

  v11 = *MEMORY[0x277D77DD0];
  if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    v15 = 138543618;
    v16 = un_logDigest;
    v17 = 2114;
    v18 = configurationCopy;
    _os_log_impl(&dword_21E77E000, v12, OS_LOG_TYPE_DEFAULT, "Notification height cache removed for request %{public}@ with contentConfiguration %{public}@", &v15, 0x16u);
  }
}

- (void)removeAllHeightsForRequest:(id)request
{
  v14 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  identifiersString = [requestCopy identifiersString];
  if (identifiersString)
  {
    cellHeightDictionary = [(NCNotificationCellHeightDictionary *)self cellHeightDictionary];
    [cellHeightDictionary removeObjectForKey:identifiersString];

    v7 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      notificationIdentifier = [requestCopy notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      v12 = 138543362;
      v13 = un_logDigest;
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