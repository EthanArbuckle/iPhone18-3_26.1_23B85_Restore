@interface NCNotificationCellHeight
- (NCNotificationCellHeight)init;
- (id)heightForContentConfiguration:(id)configuration;
- (void)removeHeightForContentConfiguration:(id)configuration;
- (void)setHeight:(double)height forContentConfiguration:(id)configuration;
@end

@implementation NCNotificationCellHeight

- (NCNotificationCellHeight)init
{
  v5.receiver = self;
  v5.super_class = NCNotificationCellHeight;
  v2 = [(NCNotificationCellHeight *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(NCNotificationCellHeight *)v2 setCellHeightForConfigurationDictionary:v3];
  }

  return v2;
}

- (id)heightForContentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  cellHeightForConfigurationDictionary = [(NCNotificationCellHeight *)self cellHeightForConfigurationDictionary];
  v6 = [cellHeightForConfigurationDictionary objectForKey:configurationCopy];

  return v6;
}

- (void)setHeight:(double)height forContentConfiguration:(id)configuration
{
  configurationCopy = configuration;
  cellHeightForConfigurationDictionary = [(NCNotificationCellHeight *)self cellHeightForConfigurationDictionary];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:height];
  [cellHeightForConfigurationDictionary setObject:v7 forKey:configurationCopy];
}

- (void)removeHeightForContentConfiguration:(id)configuration
{
  if (configuration)
  {
    configurationCopy = configuration;
    cellHeightForConfigurationDictionary = [(NCNotificationCellHeight *)self cellHeightForConfigurationDictionary];
    [cellHeightForConfigurationDictionary removeObjectForKey:configurationCopy];
  }
}

@end