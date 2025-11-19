@interface VCCompanionSyncSerializer
- (id)changeFromData:(id)a3 ofType:(int64_t)a4;
- (id)dataFromChange:(id)a3;
@end

@implementation VCCompanionSyncSerializer

- (id)changeFromData:(id)a3 ofType:(int64_t)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [[VCPBChange alloc] initWithData:v4];
  v7 = VCSYChangeClassFromMessageType([(VCPBChange *)v6 messageType]);
  if (v7)
  {
    v8 = v7;
    v9 = [v7 alloc];
    v10 = [(VCPBChange *)v6 uniqueID];
    v11 = [(VCPBChange *)v6 changeType];
    v12 = 1;
    if (v11 == 2)
    {
      v12 = 2;
    }

    if (v11 == 3)
    {
      v13 = 3;
    }

    else
    {
      v13 = v12;
    }

    v14 = [v9 initWithObjectIdentifier:v10 changeType:v13];

    v15 = [(VCPBChange *)v6 message];
    v16 = [v15 length];

    if (!v16)
    {
      goto LABEL_10;
    }

    v17 = objc_alloc(MEMORY[0x277D43170]);
    v18 = [(VCPBChange *)v6 message];
    v19 = [v17 initWithData:v18];

    v28 = 0;
    v20 = [v14 readFrom:v19 error:&v28];
    v21 = v28;
    v22 = v21;
    if (v20)
    {

LABEL_10:
      objc_autoreleasePoolPop(v5);
      v14 = v14;
      v23 = v14;
      goto LABEL_18;
    }

    v25 = getWFWatchSyncLogObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v30 = "[VCCompanionSyncSerializer changeFromData:ofType:]";
      v31 = 2114;
      v32 = v8;
      v33 = 2114;
      v34 = v22;
      _os_log_impl(&dword_23103C000, v25, OS_LOG_TYPE_FAULT, "%s Failed to deserialize %{public}@: %{public}@", buf, 0x20u);
    }

    v23 = [MEMORY[0x277CFBA88] degenerateChange];
  }

  else
  {
    v24 = getWFWatchSyncLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v30 = "[VCCompanionSyncSerializer changeFromData:ofType:]";
      v31 = 1024;
      LODWORD(v32) = [(VCPBChange *)v6 messageType];
      _os_log_impl(&dword_23103C000, v24, OS_LOG_TYPE_FAULT, "%s Unknown message type (%i) when deserializing, dropping change", buf, 0x12u);
    }

    v23 = [MEMORY[0x277CFBA88] degenerateChange];
    v14 = 0;
  }

  objc_autoreleasePoolPop(v5);
LABEL_18:

  v26 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)dataFromChange:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 conformsToProtocol:&unk_2845FED18]& 1) != 0)
  {
    v5 = objc_alloc_init(VCPBChange);
    v6 = objc_autoreleasePoolPush();
    v7 = [v4 objectIdentifier];
    [(VCPBChange *)v5 setUniqueID:v7];

    v8 = [v4 changeType];
    if (v8 == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    if (v8 == 3)
    {
      v10 = 3;
    }

    else
    {
      v10 = v9;
    }

    [(VCPBChange *)v5 setChangeType:v10];
    -[VCPBChange setMessageType:](v5, "setMessageType:", [objc_opt_class() messageType]);
    v11 = objc_opt_new();
    v20 = 0;
    v12 = [v4 writeTo:v11 error:&v20];
    v13 = v20;
    if (v12)
    {
      v14 = [v11 immutableData];
      [(VCPBChange *)v5 setMessage:v14];

      objc_autoreleasePoolPop(v6);
      v15 = [(VCPBChange *)v5 data];
    }

    else
    {
      v17 = getWFWatchSyncLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315650;
        v22 = "[VCCompanionSyncSerializer dataFromChange:]";
        v23 = 2114;
        v24 = v4;
        v25 = 2114;
        v26 = v13;
        _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_FAULT, "%s Failed to serialize %{public}@: %{public}@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v6);
      v15 = 0;
    }

    v16 = v4;
  }

  else
  {

    v16 = getWFWatchSyncLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v22 = "[VCCompanionSyncSerializer dataFromChange:]";
      v23 = 2114;
      v24 = v4;
      _os_log_impl(&dword_23103C000, v16, OS_LOG_TYPE_FAULT, "%s Cannot serialize %{public}@, it does not conform to VCSYChange", buf, 0x16u);
    }

    v15 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v15;
}

@end