@interface WBSChromeHistoryImporterDelegateProxy
- (WBSChromeHistoryImporterDelegateProxy)initWithDelegate:(id)a3;
- (void)finishWithCompletionHandler:(id)a3;
@end

@implementation WBSChromeHistoryImporterDelegateProxy

- (WBSChromeHistoryImporterDelegateProxy)initWithDelegate:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = WBSChromeHistoryImporterDelegateProxy;
  v6 = [(WBSChromeHistoryImporterDelegateProxy *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegate, a3);
    v8 = [MEMORY[0x1E695DFA8] set];
    uniqueHighLevelDomains = v7->_uniqueHighLevelDomains;
    v7->_uniqueHighLevelDomains = v8;

    v10 = v7;
  }

  return v7;
}

void __219__WBSChromeHistoryImporterDelegateProxy_addVisitWithURLString_visitTime_title_loadSuccessful_httpGet_redirectSourceURLString_redirectSourceVisitTime_redirectDestinationURLString_redirectDestinationVisitTime_visitCount___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = WBS_LOG_CHANNEL_PREFIXImport();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __219__WBSChromeHistoryImporterDelegateProxy_addVisitWithURLString_visitTime_title_loadSuccessful_httpGet_redirectSourceURLString_redirectSourceVisitTime_redirectDestinationURLString_redirectDestinationVisitTime_visitCount___block_invoke_cold_1(v3, v2);
  }
}

- (void)finishWithCompletionHandler:(id)a3
{
  uniqueHighLevelDomains = self->_uniqueHighLevelDomains;
  v5 = a3;
  self->_numberOfVisitImported = [(NSMutableSet *)uniqueHighLevelDomains count];
  v6 = [(WBSHistoryImporterDelegate *)self->_delegate remoteObjectProxyWithErrorHandler:v5];
  [v6 finishWithCompletionHandler:v5];
}

void __219__WBSChromeHistoryImporterDelegateProxy_addVisitWithURLString_visitTime_title_loadSuccessful_httpGet_redirectSourceURLString_redirectSourceVisitTime_redirectDestinationURLString_redirectDestinationVisitTime_visitCount___block_invoke_cold_1(void *a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_1B8447000, v3, OS_LOG_TYPE_ERROR, "Failed to deliver visit to delegate: %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end