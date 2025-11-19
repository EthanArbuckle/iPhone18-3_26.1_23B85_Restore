@interface ICUserNotificationBuilder
- (BOOL)allowInCar;
- (BOOL)displaysActionButtonOnLockScreen;
- (BOOL)displaysAsTopMost;
- (BOOL)forcesModalAppearance;
- (ICUserNotificationBuilder)init;
- (ICUserNotificationBuilder)initWithStoreDialog:(id)a3;
- (NSString)alternateButtonTitle;
- (NSString)defaultButtonTitle;
- (NSString)message;
- (NSString)otherButtonTitle;
- (NSString)title;
- (__CFUserNotification)createCFUserNotification;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_setBoolValue:(BOOL)a3 forKey:(__CFString *)a4;
- (void)setAlternateButtonTitle:(id)a3;
- (void)setDefaultButtonTitle:(id)a3;
- (void)setMessage:(id)a3;
- (void)setOtherButtonTitle:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation ICUserNotificationBuilder

- (void)_setBoolValue:(BOOL)a3 forKey:(__CFString *)a4
{
  userNotificationDictionary = self->_userNotificationDictionary;
  v5 = MEMORY[0x1E695E4D0];
  if (!a3)
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  [(NSMutableDictionary *)userNotificationDictionary setObject:*v5 forKey:a4];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (v5)
  {
    *(v5 + 16) = self->_alertLevel;
    *(v5 + 24) = self->_timeoutInterval;
    v7 = [(NSMutableDictionary *)self->_userNotificationDictionary mutableCopyWithZone:a3];
    v8 = v6[1];
    v6[1] = v7;
  }

  return v6;
}

- (NSString)title
{
  v2 = [(NSMutableDictionary *)self->_userNotificationDictionary objectForKey:*MEMORY[0x1E695EE58]];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F2C4A680;
  }

  v5 = v4;

  return &v4->isa;
}

- (void)setTitle:(id)a3
{
  v4 = [a3 copy];
  [(NSMutableDictionary *)self->_userNotificationDictionary setObject:v4 forKey:*MEMORY[0x1E695EE58]];
}

- (void)setOtherButtonTitle:(id)a3
{
  v4 = [a3 copy];
  [(NSMutableDictionary *)self->_userNotificationDictionary setObject:v4 forKey:*MEMORY[0x1E695EE98]];
}

- (void)setMessage:(id)a3
{
  v4 = [a3 copy];
  [(NSMutableDictionary *)self->_userNotificationDictionary setObject:v4 forKey:*MEMORY[0x1E695EE60]];
}

- (void)setDefaultButtonTitle:(id)a3
{
  v4 = [a3 copy];
  [(NSMutableDictionary *)self->_userNotificationDictionary setObject:v4 forKey:*MEMORY[0x1E695EE78]];
}

- (void)setAlternateButtonTitle:(id)a3
{
  v4 = [a3 copy];
  [(NSMutableDictionary *)self->_userNotificationDictionary setObject:v4 forKey:*MEMORY[0x1E695EE70]];
}

- (NSString)otherButtonTitle
{
  v2 = [(NSMutableDictionary *)self->_userNotificationDictionary objectForKey:*MEMORY[0x1E695EE98]];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F2C4A680;
  }

  v5 = v4;

  return &v4->isa;
}

- (NSString)message
{
  v2 = [(NSMutableDictionary *)self->_userNotificationDictionary objectForKey:*MEMORY[0x1E695EE60]];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F2C4A680;
  }

  v5 = v4;

  return &v4->isa;
}

- (BOOL)forcesModalAppearance
{
  v2 = [(NSMutableDictionary *)self->_userNotificationDictionary objectForKey:*MEMORY[0x1E69D4500]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)displaysAsTopMost
{
  v2 = [(NSMutableDictionary *)self->_userNotificationDictionary objectForKey:*MEMORY[0x1E695EE68]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)displaysActionButtonOnLockScreen
{
  v2 = [(NSMutableDictionary *)self->_userNotificationDictionary objectForKey:*MEMORY[0x1E69D44E0]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (NSString)defaultButtonTitle
{
  v2 = [(NSMutableDictionary *)self->_userNotificationDictionary objectForKey:*MEMORY[0x1E695EE78]];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F2C4A680;
  }

  v5 = v4;

  return &v4->isa;
}

- (__CFUserNotification)createCFUserNotification
{
  alertLevel = self->_alertLevel;
  v3 = alertLevel > 3;
  v4 = 3 - alertLevel;
  if (v3)
  {
    v5 = 3;
  }

  else
  {
    v5 = v4;
  }

  return CFUserNotificationCreate(*MEMORY[0x1E695E480], self->_timeoutInterval, v5, 0, self->_userNotificationDictionary);
}

- (NSString)alternateButtonTitle
{
  v2 = [(NSMutableDictionary *)self->_userNotificationDictionary objectForKey:*MEMORY[0x1E695EE70]];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_1F2C4A680;
  }

  v5 = v4;

  return &v4->isa;
}

- (BOOL)allowInCar
{
  v2 = [(NSMutableDictionary *)self->_userNotificationDictionary objectForKey:*MEMORY[0x1E69D4478]];
  v3 = [v2 BOOLValue];

  return v3;
}

- (ICUserNotificationBuilder)initWithStoreDialog:(id)a3
{
  v4 = a3;
  v5 = [(ICUserNotificationBuilder *)self init];
  if (v5)
  {
    v6 = [v4 message];
    if ([v6 length])
    {
      [(ICUserNotificationBuilder *)v5 setTitle:v6];
    }

    v7 = [v4 explanation];
    if ([v7 length])
    {
      [(ICUserNotificationBuilder *)v5 setMessage:v7];
    }

    v8 = [v4 buttons];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __49__ICUserNotificationBuilder_initWithStoreDialog___block_invoke;
    v10[3] = &unk_1E7BF4B20;
    v11 = v5;
    [v8 enumerateObjectsUsingBlock:v10];
  }

  return v5;
}

void __49__ICUserNotificationBuilder_initWithStoreDialog___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 title];
  if ([v3 length])
  {
    v4 = [v5 type];
    switch(v4)
    {
      case 1:
        [*(a1 + 32) setDefaultButtonTitle:v3];
        break;
      case 3:
        [*(a1 + 32) setOtherButtonTitle:v3];
        break;
      case 2:
        [*(a1 + 32) setAlternateButtonTitle:v3];
        break;
    }
  }
}

- (ICUserNotificationBuilder)init
{
  v7.receiver = self;
  v7.super_class = ICUserNotificationBuilder;
  v2 = [(ICUserNotificationBuilder *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    userNotificationDictionary = v2->_userNotificationDictionary;
    v2->_userNotificationDictionary = v3;

    v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:0];
    [(NSMutableDictionary *)v2->_userNotificationDictionary setObject:v5 forKey:*MEMORY[0x1E69D44C0]];
  }

  return v2;
}

@end