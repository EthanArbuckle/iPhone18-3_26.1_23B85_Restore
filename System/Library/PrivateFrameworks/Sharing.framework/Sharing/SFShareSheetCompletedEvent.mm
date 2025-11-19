@interface SFShareSheetCompletedEvent
- (NSDictionary)eventPayload;
- (void)submitEvent;
@end

@implementation SFShareSheetCompletedEvent

- (NSDictionary)eventPayload
{
  v17[6] = *MEMORY[0x1E69E9840];
  v16[0] = @"sessionID";
  v3 = [(SFShareSheetCompletedEvent *)self sessionID];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_1F1D30528;
  }

  v17[0] = v5;
  v16[1] = @"presentationMs";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SFShareSheetCompletedEvent presentationMs](self, "presentationMs")}];
  v17[1] = v6;
  v16[2] = @"totalShareTimeMs";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SFShareSheetCompletedEvent totalShareTimeMs](self, "totalShareTimeMs")}];
  v17[2] = v7;
  v16[3] = @"success";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFShareSheetCompletedEvent success](self, "success")}];
  v17[3] = v8;
  v16[4] = @"activityType";
  v9 = [(SFShareSheetCompletedEvent *)self activityType];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_1F1D30528;
  }

  v17[4] = v11;
  v16[5] = @"isCollaborative";
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFShareSheetCompletedEvent isCollaborative](self, "isCollaborative")}];
  v17[5] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:6];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)submitEvent
{
  v4 = +[SFShareSheetCompletedEvent eventName];
  v3 = [(SFShareSheetCompletedEvent *)self eventPayload];
  SFMetricsLog(v4, v3);
}

@end