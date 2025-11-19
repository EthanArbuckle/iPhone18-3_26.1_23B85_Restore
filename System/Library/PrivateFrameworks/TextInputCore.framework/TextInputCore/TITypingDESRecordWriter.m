@interface TITypingDESRecordWriter
- (BOOL)shouldRecordToDES;
- (TITypingDESRecordWriter)init;
- (void)clearStoredRecordsWithCompletionHandler:(id)a3;
- (void)fetchRecords:(id)a3;
- (void)storeAlignedSession:(id)a3 completion:(id)a4;
@end

@implementation TITypingDESRecordWriter

- (void)clearStoredRecordsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(TITypingDESRecordWriter *)self typingDataStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__TITypingDESRecordWriter_clearStoredRecordsWithCompletionHandler___block_invoke;
  v7[3] = &unk_27872F758;
  v8 = v4;
  v6 = v4;
  [v5 deleteAllSavedRecordsWithCompletion:v7];
}

- (void)fetchRecords:(id)a3
{
  v4 = a3;
  v5 = [(TITypingDESRecordWriter *)self typingDataStore];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__TITypingDESRecordWriter_fetchRecords___block_invoke;
  v7[3] = &unk_27872F730;
  v8 = v4;
  v6 = v4;
  [v5 fetchSavedRecordInfoWithCompletion:v7];
}

uint64_t __40__TITypingDESRecordWriter_fetchRecords___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)storeAlignedSession:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [a3 restrictedAlignedSessionWithWordLimit:20];
  v13 = 0;
  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v13];
  v9 = v13;
  if (v9)
  {
    (*(v6 + 2))(v6, 0, 0);
  }

  else
  {
    v10 = [v7 containsCPEntries];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __58__TITypingDESRecordWriter_storeAlignedSession_completion___block_invoke;
    v11[3] = &unk_27872F708;
    v12 = v6;
    [(TITypingDESRecordWriter *)self storeTypingSession:v8 containsCP:v10 completion:v11];
  }
}

- (BOOL)shouldRecordToDES
{
  if (TI_IS_INTERNAL_INSTALL::once_token != -1)
  {
    dispatch_once(&TI_IS_INTERNAL_INSTALL::once_token, &__block_literal_global_3815);
  }

  if (TI_IS_INTERNAL_INSTALL::is_internal_install)
  {
    return 1;
  }

  v4 = [(TITypingDESRecordWriter *)self typingDataStore];
  v5 = [v4 shouldMakeRecord];

  return v5;
}

void __68__TITypingDESRecordWriter_storeTypingSession_containsCP_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v6 localizedDescription];
    v10 = 136315394;
    v11 = "[TITypingDESRecordWriter storeTypingSession:containsCP:completion:]_block_invoke";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_22CA55000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s  Error: %@", &v10, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6 == 0);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (TITypingDESRecordWriter)init
{
  v6.receiver = self;
  v6.super_class = TITypingDESRecordWriter;
  v2 = [(TITypingDESRecordWriter *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D05630]) initWithBundleIdentifier:@"com.apple.TextInput.TypingDESPlugin"];
    typingDataStore = v2->_typingDataStore;
    v2->_typingDataStore = v3;
  }

  return v2;
}

@end