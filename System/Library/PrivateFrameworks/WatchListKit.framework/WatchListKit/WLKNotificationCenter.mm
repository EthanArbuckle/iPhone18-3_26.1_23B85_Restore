@interface WLKNotificationCenter
+ (id)defaultCenter;
- (WLKNotificationCenter)init;
- (WLKNotificationCenterDelegate)delegate;
- (void)post:(id)post title:(id)title body:(id)body options:(id)options;
- (void)setBadgeNumber:(id)number withCompletionHandler:(id)handler;
- (void)setBadgeString:(id)string withCompletionHandler:(id)handler;
@end

@implementation WLKNotificationCenter

+ (id)defaultCenter
{
  if (defaultCenter_onceToken != -1)
  {
    +[WLKNotificationCenter defaultCenter];
  }

  v3 = defaultCenter__singleton;

  return v3;
}

uint64_t __38__WLKNotificationCenter_defaultCenter__block_invoke()
{
  defaultCenter__singleton = objc_alloc_init(WLKNotificationCenter);

  return MEMORY[0x2821F96F8]();
}

- (WLKNotificationCenter)init
{
  v6.receiver = self;
  v6.super_class = WLKNotificationCenter;
  v2 = [(WLKNotificationCenter *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(WLKNotificationsImpl_iOS);
    impl = v2->_impl;
    v2->_impl = v3;
  }

  return v2;
}

- (void)post:(id)post title:(id)title body:(id)body options:(id)options
{
  postCopy = post;
  titleCopy = title;
  bodyCopy = body;
  optionsCopy = options;
  if ([postCopy length])
  {
    v14 = [optionsCopy objectForKeyedSubscript:@"expirationDate"];
    date = [MEMORY[0x277CBEAA8] date];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [date compare:v14] == 1)
    {
      NSLog(&cfstr_Wlknotificatio_0.isa);
    }

    else
    {
      impl = self->_impl;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __49__WLKNotificationCenter_post_title_body_options___block_invoke;
      v17[3] = &unk_279E5F470;
      v17[4] = self;
      v18 = postCopy;
      v19 = titleCopy;
      v20 = bodyCopy;
      v21 = optionsCopy;
      [(WLKNotificationsImpl *)impl getNotificationSettings:v17];
    }
  }

  else
  {
    NSLog(&cfstr_Wlknotificatio.isa);
  }
}

void __49__WLKNotificationCenter_post_title_body_options___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  NSLog(&cfstr_Unusernotifica.isa, [v3 authorizationStatus]);
  v4 = [v3 authorizationStatus];

  if (v4 == 2)
  {
    v5 = a1[5];
    v6 = *(a1[4] + 8);
    v7 = a1[6];
    v8 = a1[7];
    v9 = a1[8];

    [v6 post:v5 title:v7 body:v8 options:v9];
  }
}

- (void)setBadgeNumber:(id)number withCompletionHandler:(id)handler
{
  numberCopy = number;
  handlerCopy = handler;
  if (([numberCopy integerValue] & 0x8000000000000000) == 0)
  {
    [(WLKNotificationsImpl *)self->_impl setBadgeNumber:numberCopy withCompletionHandler:handlerCopy];
  }
}

- (void)setBadgeString:(id)string withCompletionHandler:(id)handler
{
  stringCopy = string;
  handlerCopy = handler;
  if (![stringCopy length] || objc_msgSend(stringCopy, "isEqualToString:", @" "))
  {
    [(WLKNotificationsImpl *)self->_impl setBadgeString:stringCopy withCompletionHandler:handlerCopy];
  }
}

- (WLKNotificationCenterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end