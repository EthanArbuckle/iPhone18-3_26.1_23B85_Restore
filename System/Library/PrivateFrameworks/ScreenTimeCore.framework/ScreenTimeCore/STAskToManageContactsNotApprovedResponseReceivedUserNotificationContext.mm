@interface STAskToManageContactsNotApprovedResponseReceivedUserNotificationContext
- (STAskToManageContactsNotApprovedResponseReceivedUserNotificationContext)initWithChildName:(id)name;
- (STAskToManageContactsNotApprovedResponseReceivedUserNotificationContext)initWithCoder:(id)coder;
- (void)customizeNotificationContent:(id)content withCompletionBlock:(id)block;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STAskToManageContactsNotApprovedResponseReceivedUserNotificationContext

- (STAskToManageContactsNotApprovedResponseReceivedUserNotificationContext)initWithChildName:(id)name
{
  v8.receiver = self;
  v8.super_class = STAskToManageContactsNotApprovedResponseReceivedUserNotificationContext;
  nameCopy = name;
  v4 = [(STUserNotificationContext *)&v8 initWithIdentifier:@"AskToManageContactsResponseReceivedUserNotificationContextIdentifier"];
  v5 = [nameCopy copy];

  childName = v4->_childName;
  v4->_childName = v5;

  return v4;
}

- (STAskToManageContactsNotApprovedResponseReceivedUserNotificationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = STAskToManageContactsNotApprovedResponseReceivedUserNotificationContext;
  v5 = [(STUserNotificationContext *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"childName"];
    childName = v5->_childName;
    v5->_childName = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STAskToManageContactsNotApprovedResponseReceivedUserNotificationContext;
  coderCopy = coder;
  [(STUserNotificationContext *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_childName forKey:{@"childName", v5.receiver, v5.super_class}];
}

- (void)customizeNotificationContent:(id)content withCompletionBlock:(id)block
{
  contentCopy = content;
  blockCopy = block;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __124__STAskToManageContactsNotApprovedResponseReceivedUserNotificationContext_customizeNotificationContent_withCompletionBlock___block_invoke;
  v11[3] = &unk_1E7CE6B80;
  v12 = contentCopy;
  selfCopy = self;
  v14 = blockCopy;
  v10.receiver = self;
  v10.super_class = STAskToManageContactsNotApprovedResponseReceivedUserNotificationContext;
  v8 = blockCopy;
  v9 = contentCopy;
  [(STUserNotificationContext *)&v10 customizeNotificationContent:v9 withCompletionBlock:v11];
}

uint64_t __124__STAskToManageContactsNotApprovedResponseReceivedUserNotificationContext_customizeNotificationContent_withCompletionBlock___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = [*(a1 + 40) childName];
  v13[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v5 = [v2 localizedUserNotificationStringForKey:@"AskToManageContactsNotApprovedResponseReceivedNotificationTitle" arguments:v4];
  [*(a1 + 32) setTitle:v5];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [*(a1 + 40) childName];
  v12 = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  v9 = [v6 localizedUserNotificationStringForKey:@"AskToManageContactsNotApprovedResponseReceivedNotificationBody" arguments:v8];
  [*(a1 + 32) setBody:v9];

  [*(a1 + 32) setShouldPreventNotificationDismissalAfterDefaultAction:1];
  result = (*(*(a1 + 48) + 16))();
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

@end