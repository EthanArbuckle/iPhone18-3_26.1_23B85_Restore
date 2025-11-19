@interface STAskForTimeNotApprovedResponseReceivedUserNotificationContext
- (STAskForTimeNotApprovedResponseReceivedUserNotificationContext)initWithAskForTimeRequestIdentifier:(id)a3 parentName:(id)a4 requestedResourceName:(id)a5;
- (STAskForTimeNotApprovedResponseReceivedUserNotificationContext)initWithCoder:(id)a3;
- (void)customizeNotificationContent:(id)a3 withCompletionBlock:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STAskForTimeNotApprovedResponseReceivedUserNotificationContext

- (STAskForTimeNotApprovedResponseReceivedUserNotificationContext)initWithAskForTimeRequestIdentifier:(id)a3 parentName:(id)a4 requestedResourceName:(id)a5
{
  v8 = a4;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = STAskForTimeNotApprovedResponseReceivedUserNotificationContext;
  v10 = [(STUserNotificationContext *)&v16 initWithIdentifier:a3];
  if (v10)
  {
    v11 = [v8 copy];
    parentName = v10->_parentName;
    v10->_parentName = v11;

    v13 = [v9 copy];
    requestedResourceName = v10->_requestedResourceName;
    v10->_requestedResourceName = v13;
  }

  return v10;
}

- (STAskForTimeNotApprovedResponseReceivedUserNotificationContext)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = STAskForTimeNotApprovedResponseReceivedUserNotificationContext;
  v5 = [(STUserNotificationContext *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parentName"];
    parentName = v5->_parentName;
    v5->_parentName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestedResourceName"];
    requestedResourceName = v5->_requestedResourceName;
    v5->_requestedResourceName = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STAskForTimeNotApprovedResponseReceivedUserNotificationContext;
  v4 = a3;
  [(STUserNotificationContext *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_parentName forKey:{@"parentName", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_requestedResourceName forKey:@"requestedResourceName"];
}

- (void)customizeNotificationContent:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __115__STAskForTimeNotApprovedResponseReceivedUserNotificationContext_customizeNotificationContent_withCompletionBlock___block_invoke;
  v11[3] = &unk_1E7CE6B80;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v10.receiver = self;
  v10.super_class = STAskForTimeNotApprovedResponseReceivedUserNotificationContext;
  v8 = v7;
  v9 = v6;
  [(STUserNotificationContext *)&v10 customizeNotificationContent:v9 withCompletionBlock:v11];
}

uint64_t __115__STAskForTimeNotApprovedResponseReceivedUserNotificationContext_customizeNotificationContent_withCompletionBlock___block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  v3 = [*(a1 + 40) parentName];
  v13[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v5 = [v2 localizedUserNotificationStringForKey:@"AskForTimeNotApprovedResposeReceivedNotificationTitle" arguments:v4];
  [*(a1 + 32) setTitle:v5];

  v6 = MEMORY[0x1E696AEC0];
  v7 = [*(a1 + 40) requestedResourceName];
  v12 = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
  v9 = [v6 localizedUserNotificationStringForKey:@"AskForTimeNotApprovedResposeReceivedNotificationBody" arguments:v8];
  [*(a1 + 32) setBody:v9];

  [*(a1 + 32) setInterruptionLevel:2];
  result = (*(*(a1 + 48) + 16))();
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

@end