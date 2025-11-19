@interface STUserNotificationContext
- (STUserNotificationContext)init;
- (STUserNotificationContext)initWithCoder:(id)a3;
- (STUserNotificationContext)initWithIdentifier:(id)a3;
- (UNMutableNotificationContent)notificationContent;
- (void)encodeWithCoder:(id)a3;
- (void)notificationContentWithCompletionBlock:(id)a3;
@end

@implementation STUserNotificationContext

- (STUserNotificationContext)init
{
  v3 = objc_opt_new();
  v4 = [v3 UUIDString];
  v5 = [(STUserNotificationContext *)self initWithIdentifier:v4];

  return v5;
}

- (STUserNotificationContext)initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = STUserNotificationContext;
  v6 = [(STUserNotificationContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
  }

  return v7;
}

- (STUserNotificationContext)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = STUserNotificationContext;
  v5 = [(STUserNotificationContext *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    if (!v5->_identifier)
    {
      v13 = 0;
      goto LABEL_6;
    }

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"localizedUserNotificationBodyArguments"];
    localizedUserNotificationBodyArguments = v5->_localizedUserNotificationBodyArguments;
    v5->_localizedUserNotificationBodyArguments = v11;
  }

  v13 = v5;
LABEL_6:

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_localizedUserNotificationBodyArguments forKey:@"localizedUserNotificationBodyArguments"];
}

- (UNMutableNotificationContent)notificationContent
{
  v2 = objc_opt_new();
  v3 = [MEMORY[0x1E69832B8] defaultSound];
  [v2 setSound:v3];

  v4 = objc_opt_new();
  [v4 setScheme:@"prefs"];
  [v4 setPath:@"root=SCREEN_TIME"];
  v5 = [v4 URL];

  [v2 setDefaultActionURL:v5];
  [v2 setShouldIgnoreDowntime:1];

  return v2;
}

- (void)notificationContentWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [MEMORY[0x1E69832B8] defaultSound];
  [v5 setSound:v6];

  v7 = objc_opt_new();
  [v7 setScheme:@"prefs"];
  [v7 setPath:@"root=SCREEN_TIME"];
  v8 = [v7 URL];

  [v5 setDefaultActionURL:v8];
  [v5 setShouldIgnoreDowntime:1];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__STUserNotificationContext_notificationContentWithCompletionBlock___block_invoke;
  v11[3] = &unk_1E7CE6948;
  v12 = v5;
  v13 = v4;
  v9 = v5;
  v10 = v4;
  [(STUserNotificationContext *)self customizeNotificationContent:v9 withCompletionBlock:v11];
}

@end