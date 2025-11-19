@interface SFPairedUnlockWatchEvent
- (NSDictionary)eventPayload;
- (void)submitEvent;
@end

@implementation SFPairedUnlockWatchEvent

- (NSDictionary)eventPayload
{
  v15[5] = *MEMORY[0x1E69E9840];
  v14[0] = @"motionCheckDurationMs";
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SFPairedUnlockWatchEvent motionCheckDurationMs](self, "motionCheckDurationMs")}];
  v15[0] = v3;
  v14[1] = @"onWristConfidence";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{-[SFPairedUnlockWatchEvent onWristConfidence](self, "onWristConfidence")}];
  v15[1] = v4;
  v14[2] = @"timeSinceLastWristRaiseSec";
  v5 = MEMORY[0x1E696AD98];
  [(SFPairedUnlockWatchEvent *)self timeSinceLastWristRaiseSec];
  v6 = [v5 numberWithFloat:?];
  v15[2] = v6;
  v14[3] = @"timeSinceLastOnWristSec";
  v7 = MEMORY[0x1E696AD98];
  [(SFPairedUnlockWatchEvent *)self timeSinceLastOnWristSec];
  v8 = [v7 numberWithFloat:?];
  v15[3] = v8;
  v14[4] = @"timeSinceBootMin";
  v9 = MEMORY[0x1E696AD98];
  [(SFPairedUnlockWatchEvent *)self timeSinceBootMin];
  v10 = [v9 numberWithFloat:?];
  v15[4] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:5];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)submitEvent
{
  v4 = +[SFPairedUnlockWatchEvent eventName];
  v3 = [(SFPairedUnlockWatchEvent *)self eventPayload];
  SFMetricsLog(v4, v3);
}

@end