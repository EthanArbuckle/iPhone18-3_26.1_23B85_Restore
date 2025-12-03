@interface STUserNotificationContext
- (STUserNotificationContext)init;
- (STUserNotificationContext)initWithCoder:(id)coder;
- (STUserNotificationContext)initWithIdentifier:(id)identifier;
- (UNMutableNotificationContent)notificationContent;
- (void)encodeWithCoder:(id)coder;
- (void)notificationContentWithCompletionBlock:(id)block;
@end

@implementation STUserNotificationContext

- (STUserNotificationContext)init
{
  v3 = objc_opt_new();
  uUIDString = [v3 UUIDString];
  v5 = [(STUserNotificationContext *)self initWithIdentifier:uUIDString];

  return v5;
}

- (STUserNotificationContext)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = STUserNotificationContext;
  v6 = [(STUserNotificationContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
  }

  return v7;
}

- (STUserNotificationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = STUserNotificationContext;
  v5 = [(STUserNotificationContext *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
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
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"localizedUserNotificationBodyArguments"];
    localizedUserNotificationBodyArguments = v5->_localizedUserNotificationBodyArguments;
    v5->_localizedUserNotificationBodyArguments = v11;
  }

  v13 = v5;
LABEL_6:

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_localizedUserNotificationBodyArguments forKey:@"localizedUserNotificationBodyArguments"];
}

- (UNMutableNotificationContent)notificationContent
{
  v2 = objc_opt_new();
  defaultSound = [MEMORY[0x1E69832B8] defaultSound];
  [v2 setSound:defaultSound];

  v4 = objc_opt_new();
  [v4 setScheme:@"prefs"];
  [v4 setPath:@"root=SCREEN_TIME"];
  v5 = [v4 URL];

  [v2 setDefaultActionURL:v5];
  [v2 setShouldIgnoreDowntime:1];

  return v2;
}

- (void)notificationContentWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = objc_opt_new();
  defaultSound = [MEMORY[0x1E69832B8] defaultSound];
  [v5 setSound:defaultSound];

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
  v13 = blockCopy;
  v9 = v5;
  v10 = blockCopy;
  [(STUserNotificationContext *)self customizeNotificationContent:v9 withCompletionBlock:v11];
}

@end