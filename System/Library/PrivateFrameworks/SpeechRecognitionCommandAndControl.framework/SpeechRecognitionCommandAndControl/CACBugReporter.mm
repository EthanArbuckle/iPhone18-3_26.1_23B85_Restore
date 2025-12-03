@interface CACBugReporter
+ (id)sharedReporter;
- (CACBugReporter)init;
- (void)reportIssue:(id)issue subtype:(id)subtype description:(id)description completionBlock:(id)block;
@end

@implementation CACBugReporter

+ (id)sharedReporter
{
  if (sharedReporter_onceToken != -1)
  {
    +[CACBugReporter sharedReporter];
  }

  v3 = sharedReporter_sDiagnosticReporter;

  return v3;
}

uint64_t __32__CACBugReporter_sharedReporter__block_invoke()
{
  sharedReporter_sDiagnosticReporter = objc_alloc_init(CACBugReporter);

  return MEMORY[0x2821F96F8]();
}

- (CACBugReporter)init
{
  v6.receiver = self;
  v6.super_class = CACBugReporter;
  v2 = [(CACBugReporter *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D6AFC0]);
    diagnosticReporter = v2->_diagnosticReporter;
    v2->_diagnosticReporter = v3;
  }

  return v2;
}

- (void)reportIssue:(id)issue subtype:(id)subtype description:(id)description completionBlock:(id)block
{
  blockCopy = block;
  descriptionCopy = description;
  subtypeCopy = subtype;
  issueCopy = issue;
  diagnosticReporter = [(CACBugReporter *)self diagnosticReporter];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v17 = [diagnosticReporter signatureWithDomain:@"Command and Control" type:issueCopy subType:subtypeCopy subtypeContext:descriptionCopy detectedProcess:bundleIdentifier triggerThresholdValues:0];

  diagnosticReporter2 = [(CACBugReporter *)self diagnosticReporter];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __66__CACBugReporter_reportIssue_subtype_description_completionBlock___block_invoke;
  v22[3] = &unk_279CECBB8;
  v23 = v17;
  v24 = blockCopy;
  v19 = blockCopy;
  v20 = v17;
  LOBYTE(v17) = [diagnosticReporter2 snapshotWithSignature:v20 duration:0 events:0 payload:0 actions:v22 reply:10.0];

  if ((v17 & 1) == 0)
  {
    v21 = CACLogGeneral();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [CACBugReporter reportIssue:v21 subtype:? description:? completionBlock:?];
    }
  }
}

void __66__CACBugReporter_reportIssue_subtype_description_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CACLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __66__CACBugReporter_reportIssue_subtype_description_completionBlock___block_invoke_cold_1(v3, a1, v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

void __66__CACBugReporter_reportIssue_subtype_description_completionBlock___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 32);
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_debug_impl(&dword_26B354000, log, OS_LOG_TYPE_DEBUG, "SDRDiagnosticReporter response = %@, issue = %@", &v4, 0x16u);
}

@end