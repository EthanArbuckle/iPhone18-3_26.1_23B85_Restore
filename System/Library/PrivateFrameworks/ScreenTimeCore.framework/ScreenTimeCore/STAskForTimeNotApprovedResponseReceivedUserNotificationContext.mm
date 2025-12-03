@interface STAskForTimeNotApprovedResponseReceivedUserNotificationContext
- (STAskForTimeNotApprovedResponseReceivedUserNotificationContext)initWithAskForTimeRequestIdentifier:(id)identifier parentName:(id)name requestedResourceName:(id)resourceName;
- (STAskForTimeNotApprovedResponseReceivedUserNotificationContext)initWithCoder:(id)coder;
- (void)customizeNotificationContent:(id)content withCompletionBlock:(id)block;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STAskForTimeNotApprovedResponseReceivedUserNotificationContext

- (STAskForTimeNotApprovedResponseReceivedUserNotificationContext)initWithAskForTimeRequestIdentifier:(id)identifier parentName:(id)name requestedResourceName:(id)resourceName
{
  nameCopy = name;
  resourceNameCopy = resourceName;
  v16.receiver = self;
  v16.super_class = STAskForTimeNotApprovedResponseReceivedUserNotificationContext;
  v10 = [(STUserNotificationContext *)&v16 initWithIdentifier:identifier];
  if (v10)
  {
    v11 = [nameCopy copy];
    parentName = v10->_parentName;
    v10->_parentName = v11;

    v13 = [resourceNameCopy copy];
    requestedResourceName = v10->_requestedResourceName;
    v10->_requestedResourceName = v13;
  }

  return v10;
}

- (STAskForTimeNotApprovedResponseReceivedUserNotificationContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = STAskForTimeNotApprovedResponseReceivedUserNotificationContext;
  v5 = [(STUserNotificationContext *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parentName"];
    parentName = v5->_parentName;
    v5->_parentName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestedResourceName"];
    requestedResourceName = v5->_requestedResourceName;
    v5->_requestedResourceName = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = STAskForTimeNotApprovedResponseReceivedUserNotificationContext;
  coderCopy = coder;
  [(STUserNotificationContext *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_parentName forKey:{@"parentName", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_requestedResourceName forKey:@"requestedResourceName"];
}

- (void)customizeNotificationContent:(id)content withCompletionBlock:(id)block
{
  contentCopy = content;
  blockCopy = block;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __115__STAskForTimeNotApprovedResponseReceivedUserNotificationContext_customizeNotificationContent_withCompletionBlock___block_invoke;
  v11[3] = &unk_1E7CE6B80;
  v12 = contentCopy;
  selfCopy = self;
  v14 = blockCopy;
  v10.receiver = self;
  v10.super_class = STAskForTimeNotApprovedResponseReceivedUserNotificationContext;
  v8 = blockCopy;
  v9 = contentCopy;
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