@interface NPHVMSyncSessionManager
- (BOOL)syncSession:(id)a3 resetDataStoreWithError:(id *)a4;
- (NPHVMSyncSessionManager)init;
- (id)changeFromData:(id)a3 ofType:(int64_t)a4;
- (id)dataFromChange:(id)a3;
- (id)decodeChangeData:(id)a3 fromProtocolVersion:(int64_t)a4 ofType:(int64_t)a5;
- (id)encodeSYChangeForBackwardCompatibility:(id)a3 protocolVersion:(int64_t)a4;
- (unsigned)syncSession:(id)a3 enqueueChanges:(id)a4 error:(id *)a5;
- (void)enqueueVoicemailChanges:(id)a3 changeType:(int64_t)a4;
- (void)syncSession:(id)a3 applyChanges:(id)a4 completion:(id)a5;
- (void)syncSession:(id)a3 didEndWithError:(id)a4;
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

- (void)enqueueVoicemailChanges:(id)a3 changeType:(int64_t)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = nph_general_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[NPHVMSyncSessionManager enqueueVoicemailChanges:changeType:]";
    _os_log_impl(&dword_26D269000, v7, OS_LOG_TYPE_DEFAULT, "%s", &v13, 0xCu);
  }

  v8 = nph_general_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&dword_26D269000, v8, OS_LOG_TYPE_DEFAULT, "voicemails: %@", &v13, 0xCu);
  }

  v9 = nph_general_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134217984;
    v14 = a4;
    _os_log_impl(&dword_26D269000, v9, OS_LOG_TYPE_DEFAULT, "changeType: %ld", &v13, 0xCu);
  }

  if ([v6 count])
  {
    [(NSMutableArray *)self->_deltaSyncChanges addObject:v6];
    deltaSyncChangeTypes = self->_deltaSyncChangeTypes;
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    [(NSMutableArray *)deltaSyncChangeTypes addObject:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (unsigned)syncSession:(id)a3 enqueueChanges:(id)a4 error:(id *)a5
{
  v39 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
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
    v12 = [v8 isResetSync];
    *buf = 67109120;
    LODWORD(v36) = v12;
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
      v17 = [(NPHVMSyncSessionManager *)self delegate];
      [v17 syncSessionManagerDidCompleteSending:self];
      v14 = 2;
      goto LABEL_15;
    }

    v13 = [(NSMutableArray *)self->_deltaSyncChanges objectAtIndexedSubscript:0];
    v15 = [(NSMutableArray *)self->_deltaSyncChangeTypes objectAtIndexedSubscript:0];
    v16 = [v15 integerValue];

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

  v17 = v20;
  if ((v16 - 1) <= 1)
  {
    [v20 loadVoicemailBodyIfNeeded];
  }

  v34 = [v17 dataPath];
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"/var/mobile/Library/Voicemail/%lld.amr", objc_msgSend(v17, "voicemailNumber")];
  [v17 setDataPath:v21];

  v22 = [v17 data];
  v23 = [v8 serializer];
  v24 = [v23 changeFromData:v22 ofType:v16];

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
    v36 = v16;
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

  [v17 clearVoicemailBody];
  [v17 setDataPath:v34];
  if (v9[2](v9, v24))
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

    v33 = [(NPHVMSyncSessionManager *)self delegate];
    [v33 syncSessionManager:self reportProgress:v31];

    ++self->_deltaSyncCurrentIdx;
    v14 = 1;
  }

  else
  {
    if (a5)
    {
      *a5 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.nanophone" code:301 userInfo:0];
    }

    v14 = 5;
  }

LABEL_15:
LABEL_16:

  v18 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)syncSession:(id)a3 didEndWithError:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
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
  [(NPHVMSyncSessionManagerDelegate *)self->_delegate syncSession:v7 didEndWithError:v6];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)syncSession:(id)a3 applyChanges:(id)a4 completion:(id)a5
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = nph_general_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[NPHVMSyncSessionManager syncSession:applyChanges:completion:]";
    _os_log_impl(&dword_26D269000, v11, OS_LOG_TYPE_DEFAULT, "%s", &v13, 0xCu);
  }

  [(NPHVMSyncSessionManagerDelegate *)self->_delegate syncSession:v10 applyChanges:v9 completion:v8];
  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)syncSession:(id)a3 resetDataStoreWithError:(id *)a4
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = nph_general_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[NPHVMSyncSessionManager syncSession:resetDataStoreWithError:]";
    _os_log_impl(&dword_26D269000, v7, OS_LOG_TYPE_DEFAULT, "%s", &v11, 0xCu);
  }

  v8 = [(NPHVMSyncSessionManagerDelegate *)self->_delegate syncSession:v6 resetDataStoreWithError:a4];
  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)dataFromChange:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
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
    v6 = [v3 wrappedObject];
    v7 = [v6 data];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v3 data];
    }

    else
    {
      v8 = nph_general_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315394;
        v12 = "[NPHVMSyncSessionManager dataFromChange:]";
        v13 = 2112;
        v14 = v3;
        _os_log_impl(&dword_26D269000, v8, OS_LOG_TYPE_DEFAULT, "%s unexpected change type:%@", &v11, 0x16u);
      }

      v7 = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)changeFromData:(id)a3 ofType:(int64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = nph_general_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "[NPHVMSyncSessionManager changeFromData:ofType:]";
    v17 = 2048;
    v18 = a4;
    _os_log_impl(&dword_26D269000, v6, OS_LOG_TYPE_DEFAULT, "%s type:%ld", &v15, 0x16u);
  }

  v7 = [[NanoPhoneVoicemailMeta alloc] initWithData:v5];
  v8 = nph_general_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = "[NPHVMSyncSessionManager changeFromData:ofType:]";
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_26D269000, v8, OS_LOG_TYPE_DEFAULT, "%s vmMeta:%@", &v15, 0x16u);
  }

  v9 = [[NPHSYObjectWrapper alloc] initWithSYObject:v7 type:a4];
  v10 = nph_general_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v15 = 136315394;
    v16 = "[NPHVMSyncSessionManager changeFromData:ofType:]";
    v17 = 2112;
    v18 = v11;
    v12 = v11;
    _os_log_impl(&dword_26D269000, v10, OS_LOG_TYPE_DEFAULT, "%s returning:%@", &v15, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)encodeSYChangeForBackwardCompatibility:(id)a3 protocolVersion:(int64_t)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
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
    v8 = [v5 wrappedObject];
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;
  if (a4 > 1)
  {
    v10 = [v8 data];
  }

  else
  {
    v15 = 0;
    v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v15];
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

  return v10;
}

- (id)decodeChangeData:(id)a3 fromProtocolVersion:(int64_t)a4 ofType:(int64_t)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = nph_general_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v24 = "[NPHVMSyncSessionManager decodeChangeData:fromProtocolVersion:ofType:]";
    v25 = 2048;
    v26 = a4;
    v27 = 2048;
    v28 = a5;
    _os_log_impl(&dword_26D269000, v9, OS_LOG_TYPE_DEFAULT, "%s ProtocolVersion:%ld type:%ld", buf, 0x20u);
  }

  if (a4 > 1)
  {
    v16 = [(NPHVMSyncSessionManager *)self changeFromData:v8 ofType:a5];
  }

  else
  {
    v10 = MEMORY[0x277CCAAC8];
    v11 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v22 = 0;
    v12 = [v10 unarchivedObjectOfClasses:v11 fromData:v8 error:&v22];
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
      v26 = v12;
      _os_log_impl(&dword_26D269000, v15, OS_LOG_TYPE_DEFAULT, "%s vmMeta:%@", buf, 0x16u);
    }

    v16 = [[NPHSYObjectWrapper alloc] initWithSYObject:v12 type:a5];
  }

  v17 = nph_general_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    *buf = 136315394;
    v24 = "[NPHVMSyncSessionManager decodeChangeData:fromProtocolVersion:ofType:]";
    v25 = 2112;
    v26 = v18;
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