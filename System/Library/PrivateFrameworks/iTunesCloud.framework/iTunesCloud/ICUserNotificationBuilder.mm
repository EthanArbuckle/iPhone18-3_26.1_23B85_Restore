@interface ICUserNotificationBuilder
- (BOOL)allowInCar;
- (BOOL)displaysActionButtonOnLockScreen;
- (BOOL)displaysAsTopMost;
- (BOOL)forcesModalAppearance;
- (ICUserNotificationBuilder)init;
- (ICUserNotificationBuilder)initWithStoreDialog:(id)dialog;
- (NSString)alternateButtonTitle;
- (NSString)defaultButtonTitle;
- (NSString)message;
- (NSString)otherButtonTitle;
- (NSString)title;
- (__CFUserNotification)createCFUserNotification;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setBoolValue:(BOOL)value forKey:(__CFString *)key;
- (void)setAlternateButtonTitle:(id)title;
- (void)setDefaultButtonTitle:(id)title;
- (void)setMessage:(id)message;
- (void)setOtherButtonTitle:(id)title;
- (void)setTitle:(id)title;
@end

@implementation ICUserNotificationBuilder

- (void)_setBoolValue:(BOOL)value forKey:(__CFString *)key
{
  userNotificationDictionary = self->_userNotificationDictionary;
  v5 = MEMORY[0x1E695E4D0];
  if (!value)
  {
    v5 = MEMORY[0x1E695E4C0];
  }

  [(NSMutableDictionary *)userNotificationDictionary setObject:*v5 forKey:key];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (v5)
  {
    *(v5 + 16) = self->_alertLevel;
    *(v5 + 24) = self->_timeoutInterval;
    v7 = [(NSMutableDictionary *)self->_userNotificationDictionary mutableCopyWithZone:zone];
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

- (void)setTitle:(id)title
{
  v4 = [title copy];
  [(NSMutableDictionary *)self->_userNotificationDictionary setObject:v4 forKey:*MEMORY[0x1E695EE58]];
}

- (void)setOtherButtonTitle:(id)title
{
  v4 = [title copy];
  [(NSMutableDictionary *)self->_userNotificationDictionary setObject:v4 forKey:*MEMORY[0x1E695EE98]];
}

- (void)setMessage:(id)message
{
  v4 = [message copy];
  [(NSMutableDictionary *)self->_userNotificationDictionary setObject:v4 forKey:*MEMORY[0x1E695EE60]];
}

- (void)setDefaultButtonTitle:(id)title
{
  v4 = [title copy];
  [(NSMutableDictionary *)self->_userNotificationDictionary setObject:v4 forKey:*MEMORY[0x1E695EE78]];
}

- (void)setAlternateButtonTitle:(id)title
{
  v4 = [title copy];
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
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)displaysAsTopMost
{
  v2 = [(NSMutableDictionary *)self->_userNotificationDictionary objectForKey:*MEMORY[0x1E695EE68]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)displaysActionButtonOnLockScreen
{
  v2 = [(NSMutableDictionary *)self->_userNotificationDictionary objectForKey:*MEMORY[0x1E69D44E0]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
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
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (ICUserNotificationBuilder)initWithStoreDialog:(id)dialog
{
  dialogCopy = dialog;
  v5 = [(ICUserNotificationBuilder *)self init];
  if (v5)
  {
    message = [dialogCopy message];
    if ([message length])
    {
      [(ICUserNotificationBuilder *)v5 setTitle:message];
    }

    explanation = [dialogCopy explanation];
    if ([explanation length])
    {
      [(ICUserNotificationBuilder *)v5 setMessage:explanation];
    }

    buttons = [dialogCopy buttons];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __49__ICUserNotificationBuilder_initWithStoreDialog___block_invoke;
    v10[3] = &unk_1E7BF4B20;
    v11 = v5;
    [buttons enumerateObjectsUsingBlock:v10];
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