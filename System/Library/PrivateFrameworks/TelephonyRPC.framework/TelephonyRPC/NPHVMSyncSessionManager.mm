@interface NPHVMSyncSessionManager
- (BOOL)syncSession:(id)session resetDataStoreWithError:(id *)error;
- (NPHVMSyncSessionManager)init;
- (id)changeFromData:(id)data ofType:(int64_t)type;
- (id)dataFromChange:(id)change;
- (id)decodeChangeData:(id)data fromProtocolVersion:(int64_t)version ofType:(int64_t)type;
- (id)encodeSYChangeForBackwardCompatibility:(id)compatibility protocolVersion:(int64_t)version;
- (unsigned)syncSession:(id)session enqueueChanges:(id)changes error:(id *)error;
- (void)enqueueVoicemailChanges:(id)changes changeType:(int64_t)type;
- (void)syncSession:(id)session applyChanges:(id)changes completion:(id)completion;
- (void)syncSession:(id)session didEndWithError:(id)error;
@end

@implementation NPHVMSyncSessionManager

- (NPHVMSyncSessionManager)init
{
  v8.receiver = self;
  v8.super_class = NPHVMSyncSessionManager;
  v2 = [(NPHVMSyncSessionManager *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    deltaSyncChanges = v2->_deltaSyncChanges;
    v2->_deltaSyncChanges = v3;

    v5 = objc_opt_new();
    deltaSyncChangeTypes = v2->_deltaSyncChangeTypes;
    v2->_deltaSyncChangeTypes = v5;
  }

  return v2;
}

- (void)enqueueVoicemailChanges:(id)changes changeType:(int64_t)type
{
  v15 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  v7 = nph_general_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    typeCopy = "[NPHVMSyncSessionManager enqueueVoicemailChanges:changeType:]";
    _os_log_impl(&dword_26D269000, v7, OS_LOG_TYPE_DEFAULT, "%s", &v13, 0xCu);
  }

  v8 = nph_general_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    typeCopy = changesCopy;
    _os_log_impl(&dword_26D269000, v8, OS_LOG_TYPE_DEFAULT, "voicemails: %@", &v13, 0xCu);
  }

  v9 = nph_general_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    typeCopy = type;
    _os_log_impl(&dword_26D269000, v9, OS_LOG_TYPE_DEFAULT, "changeType: %ld", &v13, 0xCu);
  }

  if ([changesCopy count])
  {
    [(NSMutableArray *)self->_deltaSyncChanges addObject:changesCopy];
    deltaSyncChangeTypes = self->_deltaSyncChangeTypes;
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    [(NSMutableArray *)deltaSyncChangeTypes addObject:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (unsigned)syncSession:(id)session enqueueChanges:(id)changes error:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  changesCopy = changes;
  v10 = nph_general_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v36 = "[NPHVMSyncSessionManager syncSession:enqueueChanges:error:]";
    _os_log_impl(&dword_26D269000, v10, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v11 = nph_general_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    isResetSync = [sessionCopy isResetSync];
    *buf = 67109120;
    LODWORD(v36) = isResetSync;
    _os_log_impl(&dword_26D269000, v11, OS_LOG_TYPE_DEFAULT, "isResetSync = %d", buf, 8u);
  }

  if (self->_cancel)
  {
    v13 = nph_general_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v36 = "[NPHVMSyncSessionManager syncSession:enqueueChanges:error:]";
      _os_log_impl(&dword_26D269000, v13, OS_LOG_TYPE_DEFAULT, "%s Cancelled!", buf, 0xCu);
    }

    v14 = 3;
    goto LABEL_16;
  }

  while (1)
  {
    if (![(NSMutableArray *)self->_deltaSyncChanges count])
    {
      v13 = 0;
LABEL_14:
      delegate = [(NPHVMSyncSessionManager *)self delegate];
      [delegate syncSessionManagerDidCompleteSending:self];
      v14 = 2;
      goto LABEL_15;
    }

    v13 = [(NSMutableArray *)self->_deltaSyncChanges objectAtIndexedSubscript:0];
    v15 = [(NSMutableArray *)self->_deltaSyncChangeTypes objectAtIndexedSubscript:0];
    integerValue = [v15 integerValue];

    if (!v13)
    {
      goto LABEL_14;
    }

    if ([v13 count]> self->_deltaSyncCurrentIdx)
    {
      break;
    }

    [(NSMutableArray *)self->_deltaSyncChanges removeObjectAtIndex:0];
    [(NSMutableArray *)self->_deltaSyncChangeTypes removeObjectAtIndex:0];
    self->_deltaSyncCurrentIdx = 0;
  }

  v20 = [v13 objectAtIndexedSubscript:?];
  if (!v20)
  {
    goto LABEL_14;
  }

  delegate = v20;
  if ((integerValue - 1) <= 1)
  {
    [v20 loadVoicemailBodyIfNeeded];
  }

  dataPath = [delegate dataPath];
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"/var/mobile/Library/Voicemail/%lld.amr", objc_msgSend(delegate, "voicemailNumber")];
  [delegate setDataPath:v21];

  data = [delegate data];
  serializer = [sessionCopy serializer];
  v24 = [serializer changeFromData:data ofType:integerValue];

  v25 = nph_general_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = v24;
    _os_log_impl(&dword_26D269000, v25, OS_LOG_TYPE_DEFAULT, "change: %@", buf, 0xCu);
  }

  v26 = nph_general_log();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v36 = integerValue;
    _os_log_impl(&dword_26D269000, v26, OS_LOG_TYPE_DEFAULT, "change type: %ld", buf, 0xCu);
  }

  v27 = nph_general_log();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = objc_opt_class();
    *buf = 138412290;
    v36 = v28;
    v29 = v28;
    _os_log_impl(&dword_26D269000, v27, OS_LOG_TYPE_DEFAULT, "change class: %@", buf, 0xCu);
  }

  [delegate clearVoicemailBody];
  [delegate setDataPath:dataPath];
  if (changesCopy[2](changesCopy, v24))
  {
    deltaSyncCurrentIdx = self->_deltaSyncCurrentIdx;
    v31 = deltaSyncCurrentIdx / [v13 count];
    v32 = nph_general_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v36 = "[NPHVMSyncSessionManager syncSession:enqueueChanges:error:]";
      v37 = 2048;
      v38 = v31;
      _os_log_impl(&dword_26D269000, v32, OS_LOG_TYPE_DEFAULT, "%s: reporting progress: %f", buf, 0x16u);
    }

    delegate2 = [(NPHVMSyncSessionManager *)self delegate];
    [delegate2 syncSessionManager:self reportProgress:v31];

    ++self->_deltaSyncCurrentIdx;
    v14 = 1;
  }

  else
  {
    if (error)
    {
      *error = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.nanophone" code:301 userInfo:0];
    }

    v14 = 5;
  }

LABEL_15:
LABEL_16:

  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)syncSession:(id)session didEndWithError:(id)error
{
  v12 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  sessionCopy = session;
  v8 = nph_general_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[NPHVMSyncSessionManager syncSession:didEndWithError:]";
    _os_log_impl(&dword_26D269000, v8, OS_LOG_TYPE_DEFAULT, "%s", &v10, 0xCu);
  }

  self->_deltaSyncCurrentIdx = 0;
  [(NSMutableArray *)self->_deltaSyncChanges removeAllObjects];
  [(NSMutableArray *)self->_deltaSyncChangeTypes removeAllObjects];
  [(NPHVMSyncSessionManagerDelegate *)self->_delegate syncSession:sessionCopy didEndWithError:errorCopy];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)syncSession:(id)session applyChanges:(id)changes completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  changesCopy = changes;
  sessionCopy = session;
  v11 = nph_general_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[NPHVMSyncSessionManager syncSession:applyChanges:completion:]";
    _os_log_impl(&dword_26D269000, v11, OS_LOG_TYPE_DEFAULT, "%s", &v13, 0xCu);
  }

  [(NPHVMSyncSessionManagerDelegate *)self->_delegate syncSession:sessionCopy applyChanges:changesCopy completion:completionCopy];
  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)syncSession:(id)session resetDataStoreWithError:(id *)error
{
  v13 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v7 = nph_general_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[NPHVMSyncSessionManager syncSession:resetDataStoreWithError:]";
    _os_log_impl(&dword_26D269000, v7, OS_LOG_TYPE_DEFAULT, "%s", &v11, 0xCu);
  }

  v8 = [(NPHVMSyncSessionManagerDelegate *)self->_delegate syncSession:sessionCopy resetDataStoreWithError:error];
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)dataFromChange:(id)change
{
  v15 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v4 = nph_general_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[NPHVMSyncSessionManager dataFromChange:]";
    v13 = 2112;
    v14 = objc_opt_class();
    v5 = v14;
    _os_log_impl(&dword_26D269000, v4, OS_LOG_TYPE_DEFAULT, "%s change:%@", &v11, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    wrappedObject = [changeCopy wrappedObject];
    data = [wrappedObject data];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      data = [changeCopy data];
    }

    else
    {
      v8 = nph_general_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315394;
        v12 = "[NPHVMSyncSessionManager dataFromChange:]";
        v13 = 2112;
        v14 = changeCopy;
        _os_log_impl(&dword_26D269000, v8, OS_LOG_TYPE_DEFAULT, "%s unexpected change type:%@", &v11, 0x16u);
      }

      data = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return data;
}

- (id)changeFromData:(id)data ofType:(int64_t)type
{
  v19 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v6 = nph_general_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "[NPHVMSyncSessionManager changeFromData:ofType:]";
    v17 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_26D269000, v6, OS_LOG_TYPE_DEFAULT, "%s type:%ld", &v15, 0x16u);
  }

  v7 = [[NanoPhoneVoicemailMeta alloc] initWithData:dataCopy];
  v8 = nph_general_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "[NPHVMSyncSessionManager changeFromData:ofType:]";
    v17 = 2112;
    typeCopy = v7;
    _os_log_impl(&dword_26D269000, v8, OS_LOG_TYPE_DEFAULT, "%s vmMeta:%@", &v15, 0x16u);
  }

  v9 = [[NPHSYObjectWrapper alloc] initWithSYObject:v7 type:type];
  v10 = nph_general_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v15 = 136315394;
    v16 = "[NPHVMSyncSessionManager changeFromData:ofType:]";
    v17 = 2112;
    typeCopy = v11;
    v12 = v11;
    _os_log_impl(&dword_26D269000, v10, OS_LOG_TYPE_DEFAULT, "%s returning:%@", &v15, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)encodeSYChangeForBackwardCompatibility:(id)compatibility protocolVersion:(int64_t)version
{
  v20 = *MEMORY[0x277D85DE8];
  compatibilityCopy = compatibility;
  v6 = nph_general_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[NPHVMSyncSessionManager encodeSYChangeForBackwardCompatibility:protocolVersion:]";
    v18 = 2112;
    v19 = objc_opt_class();
    v7 = v19;
    _os_log_impl(&dword_26D269000, v6, OS_LOG_TYPE_DEFAULT, "%s change:%@", buf, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    wrappedObject = [compatibilityCopy wrappedObject];
  }

  else
  {
    wrappedObject = compatibilityCopy;
  }

  v9 = wrappedObject;
  if (version > 1)
  {
    data = [wrappedObject data];
  }

  else
  {
    v15 = 0;
    data = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:wrappedObject requiringSecureCoding:1 error:&v15];
    v11 = v15;
    if (v11)
    {
      v12 = nph_general_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [NPHVMSyncSessionManager encodeSYChangeForBackwardCompatibility:protocolVersion:];
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return data;
}

- (id)decodeChangeData:(id)data fromProtocolVersion:(int64_t)version ofType:(int64_t)type
{
  v29 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v9 = nph_general_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v24 = "[NPHVMSyncSessionManager decodeChangeData:fromProtocolVersion:ofType:]";
    v25 = 2048;
    versionCopy = version;
    v27 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_26D269000, v9, OS_LOG_TYPE_DEFAULT, "%s ProtocolVersion:%ld type:%ld", buf, 0x20u);
  }

  if (version > 1)
  {
    v16 = [(NPHVMSyncSessionManager *)self changeFromData:dataCopy ofType:type];
  }

  else
  {
    v10 = MEMORY[0x277CCAAC8];
    v11 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v22 = 0;
    v12 = [v10 unarchivedObjectOfClasses:v11 fromData:dataCopy error:&v22];
    v13 = v22;

    if (v13)
    {
      v14 = nph_general_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [NPHVMSyncSessionManager decodeChangeData:fromProtocolVersion:ofType:];
      }
    }

    v15 = nph_general_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v24 = "[NPHVMSyncSessionManager decodeChangeData:fromProtocolVersion:ofType:]";
      v25 = 2112;
      versionCopy = v12;
      _os_log_impl(&dword_26D269000, v15, OS_LOG_TYPE_DEFAULT, "%s vmMeta:%@", buf, 0x16u);
    }

    v16 = [[NPHSYObjectWrapper alloc] initWithSYObject:v12 type:type];
  }

  v17 = nph_general_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    *buf = 136315394;
    v24 = "[NPHVMSyncSessionManager decodeChangeData:fromProtocolVersion:ofType:]";
    v25 = 2112;
    versionCopy = v18;
    v19 = v18;
    _os_log_impl(&dword_26D269000, v17, OS_LOG_TYPE_DEFAULT, "%s returning:%@", buf, 0x16u);
  }

  v20 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)encodeSYChangeForBackwardCompatibility:protocolVersion:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_26D269000, v0, OS_LOG_TYPE_ERROR, "%s - Error archiving vmMeta: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)decodeChangeData:fromProtocolVersion:ofType:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_26D269000, v0, OS_LOG_TYPE_ERROR, "%s - Error unarchiving NanoPhoneVoicemailMeta object: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end