@interface NCNotificationCellHeight
- (NCNotificationCellHeight)init;
- (id)heightForContentConfiguration:(id)a3;
- (void)removeHeightForContentConfiguration:(id)a3;
- (void)setHeight:(double)a3 forContentConfiguration:(id)a4;
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

- (id)heightForContentConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(NCNotificationCellHeight *)self cellHeightForConfigurationDictionary];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (void)setHeight:(double)a3 forContentConfiguration:(id)a4
{
  v6 = a4;
  v8 = [(NCNotificationCellHeight *)self cellHeightForConfigurationDictionary];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  [v8 setObject:v7 forKey:v6];
}

- (void)removeHeightForContentConfiguration:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(NCNotificationCellHeight *)self cellHeightForConfigurationDictionary];
    [v5 removeObjectForKey:v4];
  }
}

@end