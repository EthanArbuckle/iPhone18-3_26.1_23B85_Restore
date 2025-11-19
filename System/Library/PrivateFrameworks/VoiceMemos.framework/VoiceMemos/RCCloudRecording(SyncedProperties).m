@interface RCCloudRecording(SyncedProperties)
@end

@implementation RCCloudRecording(SyncedProperties)

- (void)setSyncedAudioFuture:()SyncedProperties sourceFileURL:containsSpatialAudio:.cold.1(void *a1, NSObject *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = [a1 audioFuture];
  if (v4)
  {
    v5 = @"non-nil";
  }

  else
  {
    v5 = @"nil";
  }

  v6 = v5;
  v7 = [a1 mtAudioFuture];
  if (v7)
  {
    v8 = @"non-nil";
  }

  else
  {
    v8 = @"nil";
  }

  v9 = v8;
  v10 = [a1 versionedAudioFuture];
  v15 = "[RCCloudRecording(SyncedProperties) setSyncedAudioFuture:sourceFileURL:containsSpatialAudio:]";
  v14 = 136315906;
  if (v10)
  {
    v11 = @"non-nil";
  }

  else
  {
    v11 = @"nil";
  }

  v16 = 2114;
  v17 = v5;
  v18 = 2114;
  v19 = v8;
  v20 = 2114;
  v21 = v11;
  v12 = v11;
  _os_log_fault_impl(&dword_272442000, a2, OS_LOG_TYPE_FAULT, "%s -- Inconsistency detected - audioFuture: %{public}@, mtAudioFuture: %{public}@, versionedAudioFuture: %{public}@", &v14, 0x2Au);

  v13 = *MEMORY[0x277D85DE8];
}

@end