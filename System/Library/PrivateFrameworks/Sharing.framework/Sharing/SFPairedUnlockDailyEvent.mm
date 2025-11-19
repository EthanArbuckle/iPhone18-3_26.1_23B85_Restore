@interface SFPairedUnlockDailyEvent
- (NSDictionary)eventPayload;
- (void)submitEvent;
@end

@implementation SFPairedUnlockDailyEvent

- (NSDictionary)eventPayload
{
  v19[8] = *MEMORY[0x1E69E9840];
  v18[0] = @"successfulAttempts";
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SFPairedUnlockDailyEvent successfulAttempts](self, "successfulAttempts")}];
  v19[0] = v3;
  v18[1] = @"failedAttempts";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SFPairedUnlockDailyEvent failedAttempts](self, "failedAttempts")}];
  v19[1] = v4;
  v18[2] = @"totalAttempts";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SFPairedUnlockDailyEvent totalAttempts](self, "totalAttempts")}];
  v19[2] = v5;
  v18[3] = @"passcodeUnlocks";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SFPairedUnlockDailyEvent passcodeUnlocks](self, "passcodeUnlocks")}];
  v19[3] = v6;
  v18[4] = @"totalUnlocks";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SFPairedUnlockDailyEvent totalUnlocks](self, "totalUnlocks")}];
  v19[4] = v7;
  v18[5] = @"phoneSoftwareVersion";
  v8 = [(SFPairedUnlockDailyEvent *)self phoneSoftwareVersion];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_1F1D30528;
  }

  v19[5] = v10;
  v18[6] = @"phoneHardwareModel";
  v11 = [(SFPairedUnlockDailyEvent *)self phoneHardwareModel];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_1F1D30528;
  }

  v19[6] = v13;
  v18[7] = @"phoneAutoUnlockEnabled";
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFPairedUnlockDailyEvent phoneAutoUnlockEnabled](self, "phoneAutoUnlockEnabled")}];
  v19[7] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:8];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)submitEvent
{
  v4 = +[SFPairedUnlockDailyEvent eventName];
  v3 = [(SFPairedUnlockDailyEvent *)self eventPayload];
  SFMetricsLog(v4, v3);
}

@end