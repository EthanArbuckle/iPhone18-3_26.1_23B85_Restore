@interface SFWatchAuthenticationEvent
- (NSDictionary)eventPayload;
- (void)submitEvent;
@end

@implementation SFWatchAuthenticationEvent

- (NSDictionary)eventPayload
{
  v48[20] = *MEMORY[0x1E69E9840];
  v47[0] = @"authenticationType";
  v46 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SFWatchAuthenticationEvent authenticationType](self, "authenticationType")}];
  v48[0] = v46;
  v47[1] = @"succeeded";
  v45 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFWatchAuthenticationEvent succeeded](self, "succeeded")}];
  v48[1] = v45;
  v47[2] = @"failureReason";
  v44 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SFWatchAuthenticationEvent failureReason](self, "failureReason")}];
  v48[2] = v44;
  v47[3] = @"screenOn";
  v43 = [MEMORY[0x1E696AD98] numberWithBool:{-[SFWatchAuthenticationEvent screenOn](self, "screenOn")}];
  v48[3] = v43;
  v47[4] = @"rangingDistance";
  v3 = MEMORY[0x1E696AD98];
  [(SFWatchAuthenticationEvent *)self rangingDistance];
  v42 = [v3 numberWithFloat:?];
  v48[4] = v42;
  v47[5] = @"arTrackingDistance";
  v4 = MEMORY[0x1E696AD98];
  [(SFWatchAuthenticationEvent *)self arTrackingDistance];
  v41 = [v4 numberWithDouble:?];
  v48[5] = v41;
  v47[6] = @"approveClientBundleID";
  approveClientBundleID = [(SFWatchAuthenticationEvent *)self approveClientBundleID];
  v40 = approveClientBundleID;
  v6 = &stru_1F1D30528;
  if (approveClientBundleID)
  {
    v6 = approveClientBundleID;
  }

  v48[6] = v6;
  v47[7] = @"discoveryDuration";
  v7 = MEMORY[0x1E696AD98];
  [(SFWatchAuthenticationEvent *)self discoveryDuration];
  v39 = [v7 numberWithDouble:?];
  v48[7] = v39;
  v47[8] = @"keyExchangeDuration";
  v8 = MEMORY[0x1E696AD98];
  [(SFWatchAuthenticationEvent *)self keyExchangeDuration];
  v38 = [v8 numberWithDouble:?];
  v48[8] = v38;
  v47[9] = @"tokenExchangeDuration";
  v9 = MEMORY[0x1E696AD98];
  [(SFWatchAuthenticationEvent *)self tokenExchangeDuration];
  v37 = [v9 numberWithDouble:?];
  v48[9] = v37;
  v47[10] = @"awdlBringUpDuration";
  v10 = MEMORY[0x1E696AD98];
  [(SFWatchAuthenticationEvent *)self awdlBringUpDuration];
  v36 = [v10 numberWithDouble:?];
  v48[10] = v36;
  v47[11] = @"rangingDuration";
  v11 = MEMORY[0x1E696AD98];
  [(SFWatchAuthenticationEvent *)self rangingDuration];
  v35 = [v11 numberWithDouble:?];
  v48[11] = v35;
  v47[12] = @"peerFoundDuration";
  v12 = MEMORY[0x1E696AD98];
  [(SFWatchAuthenticationEvent *)self peerFoundDuration];
  v13 = [v12 numberWithDouble:?];
  v48[12] = v13;
  v47[13] = @"totalDuration";
  v14 = MEMORY[0x1E696AD98];
  [(SFWatchAuthenticationEvent *)self totalDuration];
  v15 = [v14 numberWithDouble:?];
  v48[13] = v15;
  v47[14] = @"timeSinceBoot";
  v16 = MEMORY[0x1E696AD98];
  [(SFWatchAuthenticationEvent *)self timeSinceBoot];
  v17 = [v16 numberWithDouble:?];
  v48[14] = v17;
  v47[15] = @"timeSinceRemoteUnlocked";
  v18 = MEMORY[0x1E696AD98];
  [(SFWatchAuthenticationEvent *)self timeSinceRemoteUnlocked];
  v19 = [v18 numberWithDouble:?];
  v48[15] = v19;
  v47[16] = @"watchHardwareModel";
  watchHardwareModel = [(SFWatchAuthenticationEvent *)self watchHardwareModel];
  v21 = watchHardwareModel;
  if (watchHardwareModel)
  {
    v22 = watchHardwareModel;
  }

  else
  {
    v22 = &stru_1F1D30528;
  }

  v48[16] = v22;
  v47[17] = @"watchSoftwareVersion";
  watchSoftwareVersion = [(SFWatchAuthenticationEvent *)self watchSoftwareVersion];
  v24 = watchSoftwareVersion;
  if (watchSoftwareVersion)
  {
    v25 = watchSoftwareVersion;
  }

  else
  {
    v25 = &stru_1F1D30528;
  }

  v48[17] = v25;
  v47[18] = @"remoteHardwareModel";
  remoteHardwareModel = [(SFWatchAuthenticationEvent *)self remoteHardwareModel];
  v27 = remoteHardwareModel;
  if (remoteHardwareModel)
  {
    v28 = remoteHardwareModel;
  }

  else
  {
    v28 = &stru_1F1D30528;
  }

  v48[18] = v28;
  v47[19] = @"remoteSoftwareVersion";
  remoteSoftwareVersion = [(SFWatchAuthenticationEvent *)self remoteSoftwareVersion];
  v30 = remoteSoftwareVersion;
  if (remoteSoftwareVersion)
  {
    v31 = remoteSoftwareVersion;
  }

  else
  {
    v31 = &stru_1F1D30528;
  }

  v48[19] = v31;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:20];

  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

- (void)submitEvent
{
  v4 = +[SFWatchAuthenticationEvent eventName];
  eventPayload = [(SFWatchAuthenticationEvent *)self eventPayload];
  SFMetricsLog(v4, eventPayload);
}

@end