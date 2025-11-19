@interface STAskToManageContactsApprovedResponseReceivedUserNotificationContext
- (STAskToManageContactsApprovedResponseReceivedUserNotificationContext)initWithChildName:(id)a3;
- (STAskToManageContactsApprovedResponseReceivedUserNotificationContext)initWithCoder:(id)a3;
- (void)customizeNotificationContent:(id)a3 withCompletionBlock:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STAskToManageContactsApprovedResponseReceivedUserNotificationContext

- (STAskToManageContactsApprovedResponseReceivedUserNotificationContext)initWithChildName:(id)a3
{
  v8.receiver = self;
  v8.super_class = STAskToManageContactsApprovedResponseReceivedUserNotificationContext;
  v3 = a3;
  v4 = [(STUserNotificationContext *)&v8 initWithIdentifier:@"AskToManageContactsResponseReceivedUserNotificationContextIdentifier"];
  v5 = [v3 copy];

  childName = v4->_childName;
  v4->_childName = v5;

  return v4;
}

- (STAskToManageContactsApprovedResponseReceivedUserNotificationContext)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = STAskToManageContactsApprovedResponseReceivedUserNotificationContext;
  v5 = [(STUserNotificationContext *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"childName"];
    childName = v5->_childName;
    v5->_childName = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STAskToManageContactsApprovedResponseReceivedUserNotificationContext;
  v4 = a3;
  [(STUserNotificationContext *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_childName forKey:{@"childName", v5.receiver, v5.super_class}];
}

- (void)customizeNotificationContent:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __121__STAskToManageContactsApprovedResponseReceivedUserNotificationContext_customizeNotificationContent_withCompletionBlock___block_invoke;
  v11[3] = &unk_1E7CE6B80;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v10.receiver = self;
  v10.super_class = STAskToManageContactsApprovedResponseReceivedUserNotificationContext;
  v8 = v7;
  v9 = v6;
  [(STUserNotificationContext *)&v10 customizeNotificationContent:v9 withCompletionBlock:v11];
}

uint64_t __121__STAskToManageContactsApprovedResponseReceivedUserNotificationContext_customizeNotificationContent_withCompletionBlock___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = [*(a1 + 40) childName];
  v13[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v5 = [v2 localizedUserNotificationStringForKey:@"AskToManageContactsApprovedResponseReceivedNotificationTitle" arguments:v4];
  [*(a1 + 32) setTitle:v5];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [*(a1 + 40) childName];
  v12 = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  v9 = [v6 localizedUserNotificationStringForKey:@"AskToManageContactsApprovedResponseReceivedNotificationBody" arguments:v8];
  [*(a1 + 32) setBody:v9];

  [*(a1 + 32) setShouldPreventNotificationDismissalAfterDefaultAction:1];
  result = (*(*(a1 + 48) + 16))();
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

@end