@interface SFPairedUnlockEvent
- (NSDictionary)eventPayload;
- (void)submitEvent;
@end

@implementation SFPairedUnlockEvent

- (NSDictionary)eventPayload
{
  v27[16] = *MEMORY[0x1E69E9840];
  v26[0] = @"succeeded";
  v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFPairedUnlockEvent succeeded](self, "succeeded")}];
  v27[0] = v25;
  v26[1] = @"failureReason";
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[SFPairedUnlockEvent failureReason](self, "failureReason")}];
  v27[1] = v24;
  v26[2] = @"attemptHourLocal";
  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{-[SFPairedUnlockEvent attemptHourLocal](self, "attemptHourLocal")}];
  v27[2] = v23;
  v26[3] = @"phoneAutoUnlockEnabled";
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFPairedUnlockEvent phoneAutoUnlockEnabled](self, "phoneAutoUnlockEnabled")}];
  v27[3] = v22;
  v26[4] = @"canRelock";
  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFPairedUnlockEvent canRelock](self, "canRelock")}];
  v27[4] = v21;
  v26[5] = @"relockedWatch";
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFPairedUnlockEvent relockedWatch](self, "relockedWatch")}];
  v27[5] = v20;
  v26[6] = @"phoneState";
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SFPairedUnlockEvent phoneState](self, "phoneState")}];
  v27[6] = v19;
  v26[7] = @"usingEscrowRecord";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFPairedUnlockEvent usingEscrowRecord](self, "usingEscrowRecord")}];
  v27[7] = v3;
  v26[8] = @"retriedWithEscrowRecord";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFPairedUnlockEvent retriedWithEscrowRecord](self, "retriedWithEscrowRecord")}];
  v27[8] = v4;
  v26[9] = @"watchSoftwareVersion";
  watchSoftwareVersion = [(SFPairedUnlockEvent *)self watchSoftwareVersion];
  v6 = watchSoftwareVersion;
  if (watchSoftwareVersion)
  {
    v7 = watchSoftwareVersion;
  }

  else
  {
    v7 = &stru_1F1D30528;
  }

  v27[9] = v7;
  v26[10] = @"watchHardwareModel";
  watchHardwareModel = [(SFPairedUnlockEvent *)self watchHardwareModel];
  v9 = watchHardwareModel;
  if (watchHardwareModel)
  {
    v10 = watchHardwareModel;
  }

  else
  {
    v10 = &stru_1F1D30528;
  }

  v27[10] = v10;
  v26[11] = @"keyExchangeDurationMs";
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SFPairedUnlockEvent keyExchangeDuration](self, "keyExchangeDuration")}];
  v27[11] = v11;
  v26[12] = @"pillDelayMs";
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SFPairedUnlockEvent pillDelay](self, "pillDelay")}];
  v27[12] = v12;
  v26[13] = @"confirmationDurationMs";
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SFPairedUnlockEvent confirmationDuration](self, "confirmationDuration")}];
  v27[13] = v13;
  v26[14] = @"totalUnlockProcessDurationMs";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SFPairedUnlockEvent totalUnlockProcessDuration](self, "totalUnlockProcessDuration")}];
  v27[14] = v14;
  v26[15] = @"totalUnlockDurationMs";
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SFPairedUnlockEvent totalUnlockDuration](self, "totalUnlockDuration")}];
  v27[15] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:16];

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)submitEvent
{
  v4 = +[SFPairedUnlockEvent eventName];
  eventPayload = [(SFPairedUnlockEvent *)self eventPayload];
  SFMetricsLog(v4, eventPayload);
}

@end