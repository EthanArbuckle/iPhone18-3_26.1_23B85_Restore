@interface PHASharingSuggestionGenerationTask
- (BOOL)runWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error;
- (BOOL)shouldRunWithGraphManager:(id)manager;
- (id)generateSuggestionsWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error;
- (id)taskClassDependencies;
- (void)timeoutFatal:(BOOL)fatal;
@end

@implementation PHASharingSuggestionGenerationTask

- (id)generateSuggestionsWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  v27[1] = *MEMORY[0x277D85DE8];
  reporterCopy = reporter;
  managerCopy = manager;
  v9 = [[PHASuggestionController alloc] initWithGraphManager:managerCopy];

  if (self->_suggestionOptionsDictionary)
  {
    v10 = [objc_alloc(MEMORY[0x277D3BBF0]) initWithOptionsDictionary:self->_suggestionOptionsDictionary];
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277D3BBF0]);
  }

  v11 = v10;
  [v10 setDefaultStartAndEndDatesIfNeeded];
  [(PHASuggestionController *)v9 ingestExistingSuggestionsWithOptions:v11];
  if (!self->_suggestionOptionsDictionary)
  {
    [v11 setAllowNotification:1];
  }

  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __97__PHASharingSuggestionGenerationTask_generateSuggestionsWithGraphManager_progressReporter_error___block_invoke;
  v22 = &unk_2788B2258;
  v12 = reporterCopy;
  v23 = v12;
  v13 = [(PHASuggestionController *)v9 generateSharingSuggestionsWithOptions:v11 progress:&v19];
  if ([v11 discardGeneratedSuggestions])
  {
    v24 = *MEMORY[0x277D3B0D0];
    v25 = v13;
    v14 = MEMORY[0x277CBEAC0];
    v15 = &v25;
    v16 = &v24;
  }

  else
  {
    v26 = *MEMORY[0x277D3B0D8];
    v27[0] = v13;
    v14 = MEMORY[0x277CBEAC0];
    v15 = v27;
    v16 = &v26;
  }

  v17 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];

  return v17;
}

uint64_t __97__PHASharingSuggestionGenerationTask_generateSuggestionsWithGraphManager_progressReporter_error___block_invoke(uint64_t a1, _BYTE *a2)
{
  result = [*(a1 + 32) isCancelledWithProgress:?];
  *a2 = result;
  return result;
}

- (void)timeoutFatal:(BOOL)fatal
{
  if (fatal)
  {
    __assert_rtn("[PHASharingSuggestionGenerationTask timeoutFatal:]", "PHASharingSuggestionGenerationTask.m", 85, "NO");
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_22FA28000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "PHASharingSuggestionGenerationTask is stuck", v3, 2u);
  }
}

- (BOOL)runWithGraphManager:(id)manager progressReporter:(id)reporter error:(id *)error
{
  v5 = [(PHASharingSuggestionGenerationTask *)self generateSuggestionsWithGraphManager:manager progressReporter:reporter error:error];
  v6 = v5 != 0;

  return v6;
}

- (BOOL)shouldRunWithGraphManager:(id)manager
{
  managerCopy = manager;
  workingContext = [managerCopy workingContext];
  photoLibrary = [workingContext photoLibrary];
  isCloudPhotoLibraryEnabled = [photoLibrary isCloudPhotoLibraryEnabled];

  if (isCloudPhotoLibraryEnabled)
  {
    isReady = [managerCopy isReady];
  }

  else
  {
    loggingConnection = [workingContext loggingConnection];
    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_22FA28000, loggingConnection, OS_LOG_TYPE_INFO, "[PHASharingSuggestionGenerationTask] Not running sharing suggestion task because cloud photo library is not enabled", v10, 2u);
    }

    isReady = 0;
  }

  return isReady;
}

- (id)taskClassDependencies
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end