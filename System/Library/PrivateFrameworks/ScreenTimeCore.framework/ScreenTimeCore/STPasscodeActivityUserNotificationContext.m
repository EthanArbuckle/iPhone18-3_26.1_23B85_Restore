@interface STPasscodeActivityUserNotificationContext
- (STPasscodeActivityUserNotificationContext)initWithCoder:(id)a3;
- (STPasscodeActivityUserNotificationContext)initWithDeviceName:(id)a3 lastPasscodeUseDate:(id)a4 childDSID:(id)a5;
- (void)customizeNotificationContent:(id)a3 withCompletionBlock:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STPasscodeActivityUserNotificationContext

- (STPasscodeActivityUserNotificationContext)initWithDeviceName:(id)a3 lastPasscodeUseDate:(id)a4 childDSID:(id)a5
{
  v18.receiver = self;
  v18.super_class = STPasscodeActivityUserNotificationContext;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(STUserNotificationContext *)&v18 initWithIdentifier:@"passcode_activity"];
  v11 = [v9 copy];

  deviceName = v10->_deviceName;
  v10->_deviceName = v11;

  v13 = [v8 copy];
  lastPasscodeUseDate = v10->_lastPasscodeUseDate;
  v10->_lastPasscodeUseDate = v13;

  v15 = [v7 copy];
  childDSID = v10->_childDSID;
  v10->_childDSID = v15;

  return v10;
}

- (void)customizeNotificationContent:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __94__STPasscodeActivityUserNotificationContext_customizeNotificationContent_withCompletionBlock___block_invoke;
  v11[3] = &unk_1E7CE6B80;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v10.receiver = self;
  v10.super_class = STPasscodeActivityUserNotificationContext;
  v8 = v7;
  v9 = v6;
  [(STUserNotificationContext *)&v10 customizeNotificationContent:v9 withCompletionBlock:v11];
}

void __94__STPasscodeActivityUserNotificationContext_customizeNotificationContent_withCompletionBlock___block_invoke(uint64_t a1)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] localizedUserNotificationStringForKey:@"PasscodeActivityNotificationTitle" arguments:0];
  [*(a1 + 32) setTitle:v2];

  v3 = objc_opt_new();
  [v3 setTimeStyle:1];
  [v3 setDateStyle:0];
  [v3 setDoesRelativeDateFormatting:1];
  [v3 setFormattingContext:5];
  v4 = [*(a1 + 40) locale];
  if (v4)
  {
    [v3 setLocale:v4];
  }

  v5 = [*(a1 + 40) lastPasscodeUseDate];
  v6 = [v3 stringFromDate:v5];

  v7 = MEMORY[0x1E696AEC0];
  v8 = [*(a1 + 40) deviceName];
  v9 = v8;
  if (v6)
  {
    v20[0] = v8;
    v20[1] = v6;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v11 = @"PasscodeActivityNotificationBody";
  }

  else
  {
    v21[0] = v8;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    v11 = @"PasscodeActivityNotificationBodyNoDate";
  }

  v12 = [v7 localizedUserNotificationStringForKey:v11 arguments:v10];
  [*(a1 + 32) setBody:v12];

  v13 = [*(a1 + 40) childDSID];
  v14 = objc_opt_new();
  [v14 setScheme:@"prefs"];
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  v16 = [v13 stringValue];
  v17 = [v15 initWithFormat:@"%@&path=CHILD_%@/SCREEN_TIME_MANAGEMENT", @"root=SCREEN_TIME", v16];
  [v14 setPath:v17];

  v18 = [v14 URL];

  [*(a1 + 32) setDefaultActionURL:v18];
  (*(*(a1 + 48) + 16))();

  v19 = *MEMORY[0x1E69E9840];
}

- (STPasscodeActivityUserNotificationContext)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = STPasscodeActivityUserNotificationContext;
  v5 = [(STUserNotificationContext *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceName"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastPasscodeUseDate"];
    lastPasscodeUseDate = v5->_lastPasscodeUseDate;
    v5->_lastPasscodeUseDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"childDSID"];
    childDSID = v5->_childDSID;
    v5->_childDSID = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = STPasscodeActivityUserNotificationContext;
  v4 = a3;
  [(STUserNotificationContext *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_deviceName forKey:{@"deviceName", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_lastPasscodeUseDate forKey:@"lastPasscodeUseDate"];
  [v4 encodeObject:self->_childDSID forKey:@"childDSID"];
}

@end