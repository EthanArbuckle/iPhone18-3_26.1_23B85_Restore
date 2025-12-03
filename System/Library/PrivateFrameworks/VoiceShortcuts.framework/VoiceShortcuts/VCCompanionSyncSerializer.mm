@interface VCCompanionSyncSerializer
- (id)changeFromData:(id)data ofType:(int64_t)type;
- (id)dataFromChange:(id)change;
@end

@implementation VCCompanionSyncSerializer

- (id)changeFromData:(id)data ofType:(int64_t)type
{
  v35 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = objc_autoreleasePoolPush();
  v6 = [[VCPBChange alloc] initWithData:dataCopy];
  v7 = VCSYChangeClassFromMessageType([(VCPBChange *)v6 messageType]);
  if (v7)
  {
    v8 = v7;
    v9 = [v7 alloc];
    uniqueID = [(VCPBChange *)v6 uniqueID];
    changeType = [(VCPBChange *)v6 changeType];
    v12 = 1;
    if (changeType == 2)
    {
      v12 = 2;
    }

    if (changeType == 3)
    {
      v13 = 3;
    }

    else
    {
      v13 = v12;
    }

    v14 = [v9 initWithObjectIdentifier:uniqueID changeType:v13];

    message = [(VCPBChange *)v6 message];
    v16 = [message length];

    if (!v16)
    {
      goto LABEL_10;
    }

    v17 = objc_alloc(MEMORY[0x277D43170]);
    message2 = [(VCPBChange *)v6 message];
    v19 = [v17 initWithData:message2];

    v28 = 0;
    v20 = [v14 readFrom:v19 error:&v28];
    v21 = v28;
    v22 = v21;
    if (v20)
    {

LABEL_10:
      objc_autoreleasePoolPop(v5);
      v14 = v14;
      degenerateChange = v14;
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

    degenerateChange = [MEMORY[0x277CFBA88] degenerateChange];
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

    degenerateChange = [MEMORY[0x277CFBA88] degenerateChange];
    v14 = 0;
  }

  objc_autoreleasePoolPop(v5);
LABEL_18:

  v26 = *MEMORY[0x277D85DE8];

  return degenerateChange;
}

- (id)dataFromChange:(id)change
{
  v27 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v4 = changeCopy;
  if (changeCopy && ([changeCopy conformsToProtocol:&unk_2845FED18]& 1) != 0)
  {
    v5 = objc_alloc_init(VCPBChange);
    v6 = objc_autoreleasePoolPush();
    objectIdentifier = [v4 objectIdentifier];
    [(VCPBChange *)v5 setUniqueID:objectIdentifier];

    changeType = [v4 changeType];
    if (changeType == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    if (changeType == 3)
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
      immutableData = [v11 immutableData];
      [(VCPBChange *)v5 setMessage:immutableData];

      objc_autoreleasePoolPop(v6);
      data = [(VCPBChange *)v5 data];
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
      data = 0;
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

    data = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return data;
}

@end