@interface PPNotificationManagerGuardedData
- (id)description;
@end

@implementation PPNotificationManagerGuardedData

- (id)description
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12[0] = @"ct";
  v12[1] = @"cn";
  v4 = *&self->_contactsToken;
  v12[2] = @"mt";
  v12[3] = @"md";
  v5 = *&self->_meCardToken;
  v13[0] = v4;
  v13[1] = v5;
  v12[4] = @"pct";
  v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_portraitChangeToken];
  v14 = v6;
  v12[5] = @"pit";
  v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_portraitInvalidationToken];
  v15 = v7;
  v16 = *&self->_eventKitToken;
  v12[6] = @"et";
  v12[7] = @"es";
  v12[8] = @"cvm";
  calendarVisibilityManager = self->_calendarVisibilityManager;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:9];
  v9 = [v3 initWithFormat:@"<PPNotificationManagerGuardedData %@>", v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

@end