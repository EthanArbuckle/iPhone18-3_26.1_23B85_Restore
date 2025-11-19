@interface STAskForTimeApprovedResponseReceivedUserNotificationContext
- (STAskForTimeApprovedResponseReceivedUserNotificationContext)initWithAskForTimeRequestIdentifier:(id)a3 parentName:(id)a4 requestedResourceName:(id)a5 amountGranted:(double)a6;
- (STAskForTimeApprovedResponseReceivedUserNotificationContext)initWithCoder:(id)a3;
- (void)customizeNotificationContent:(id)a3 withCompletionBlock:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STAskForTimeApprovedResponseReceivedUserNotificationContext

- (STAskForTimeApprovedResponseReceivedUserNotificationContext)initWithAskForTimeRequestIdentifier:(id)a3 parentName:(id)a4 requestedResourceName:(id)a5 amountGranted:(double)a6
{
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = STAskForTimeApprovedResponseReceivedUserNotificationContext;
  v12 = [(STUserNotificationContext *)&v18 initWithIdentifier:a3];
  if (v12)
  {
    v13 = [v10 copy];
    parentName = v12->_parentName;
    v12->_parentName = v13;

    v15 = [v11 copy];
    requestedResourceName = v12->_requestedResourceName;
    v12->_requestedResourceName = v15;

    v12->_amountGranted = a6;
  }

  return v12;
}

- (STAskForTimeApprovedResponseReceivedUserNotificationContext)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = STAskForTimeApprovedResponseReceivedUserNotificationContext;
  v5 = [(STUserNotificationContext *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"parentName"];
    parentName = v5->_parentName;
    v5->_parentName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestedResourceName"];
    requestedResourceName = v5->_requestedResourceName;
    v5->_requestedResourceName = v8;

    [v4 decodeDoubleForKey:@"amountGranted"];
    v5->_amountGranted = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STAskForTimeApprovedResponseReceivedUserNotificationContext;
  v4 = a3;
  [(STUserNotificationContext *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_parentName forKey:{@"parentName", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_requestedResourceName forKey:@"requestedResourceName"];
  [v4 encodeDouble:@"amountGranted" forKey:self->_amountGranted];
}

- (void)customizeNotificationContent:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __112__STAskForTimeApprovedResponseReceivedUserNotificationContext_customizeNotificationContent_withCompletionBlock___block_invoke;
  v11[3] = &unk_1E7CE6B80;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v10.receiver = self;
  v10.super_class = STAskForTimeApprovedResponseReceivedUserNotificationContext;
  v8 = v7;
  v9 = v6;
  [(STUserNotificationContext *)&v10 customizeNotificationContent:v9 withCompletionBlock:v11];
}

void __112__STAskForTimeApprovedResponseReceivedUserNotificationContext_customizeNotificationContent_withCompletionBlock___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  [v2 setAllowedUnits:96];
  [v2 setUnitsStyle:3];
  [v2 setFormattingContext:5];
  [*(a1 + 32) amountGranted];
  v3 = [v2 stringFromTimeInterval:?];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [*(a1 + 32) parentName];
  v17[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v7 = [v4 localizedUserNotificationStringForKey:@"AskForTimeApprovedResposeReceivedNotificationTitle" arguments:v6];
  [*(a1 + 40) setTitle:v7];

  v8 = [*(a1 + 32) requestedResourceName];
  v9 = v8;
  v10 = MEMORY[0x1E696AEC0];
  if (v8)
  {
    v16[0] = v3;
    v16[1] = v8;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v12 = @"AskForTimeApprovedResposeReceivedNotificationBody";
  }

  else
  {
    v15 = v3;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    v12 = @"AskForTimeApprovedNoResourceResposeReceivedNotificationBody";
  }

  v13 = [v10 localizedUserNotificationStringForKey:v12 arguments:v11];
  [*(a1 + 40) setBody:v13];

  [*(a1 + 40) setInterruptionLevel:2];
  (*(*(a1 + 48) + 16))();

  v14 = *MEMORY[0x1E69E9840];
}

@end