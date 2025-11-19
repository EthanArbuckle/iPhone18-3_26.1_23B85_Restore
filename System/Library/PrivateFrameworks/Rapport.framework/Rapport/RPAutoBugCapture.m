@interface RPAutoBugCapture
+ (id)sharedReporter;
- (RPAutoBugCapture)init;
- (void)reportIssueOfType:(unint64_t)a3 issueContext:(id)a4 processName:(id)a5 triggerThresholdValues:(id)a6;
@end

@implementation RPAutoBugCapture

+ (id)sharedReporter
{
  if (sharedReporter_sOnce != -1)
  {
    +[RPAutoBugCapture sharedReporter];
  }

  v3 = gReporter;

  return v3;
}

void __34__RPAutoBugCapture_sharedReporter__block_invoke()
{
  v0 = objc_alloc_init(RPAutoBugCapture);
  v1 = gReporter;
  gReporter = v0;
}

- (RPAutoBugCapture)init
{
  v10.receiver = self;
  v10.super_class = RPAutoBugCapture;
  v2 = [(RPAutoBugCapture *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);

    v5 = dispatch_queue_create("RPAutoBugCapture", v4);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v5;

    v7 = [objc_alloc(getSDRDiagnosticReporterClass[0]()) initWithQueue:v2->_dispatchQueue];
    reporter = v2->_reporter;
    v2->_reporter = v7;
  }

  return v2;
}

- (void)reportIssueOfType:(unint64_t)a3 issueContext:(id)a4 processName:(id)a5 triggerThresholdValues:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__RPAutoBugCapture_reportIssueOfType_issueContext_processName_triggerThresholdValues___block_invoke;
  block[3] = &unk_1E7C94898;
  v20 = v12;
  v21 = a3;
  block[4] = self;
  v18 = v10;
  v19 = v11;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  dispatch_async(dispatchQueue, block);
}

void __86__RPAutoBugCapture_reportIssueOfType_issueContext_processName_triggerThresholdValues___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = *(a1 + 64);
  if (v3 > 5)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1E7C948B8[v3];
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
  v6 = [v2 signatureWithDomain:@"Rapport" type:v5 subType:*(a1 + 40) detectedProcess:*(a1 + 48) triggerThresholdValues:*(a1 + 56)];

  v7 = *(*(a1 + 32) + 16);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__RPAutoBugCapture_reportIssueOfType_issueContext_processName_triggerThresholdValues___block_invoke_2;
  v11[3] = &unk_1E7C94870;
  v14 = *(a1 + 64);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  if (([v7 snapshotWithSignature:v6 delay:0 events:0 payload:0 actions:v11 reply:0.0] & 1) == 0 && gLogCategory_RPAutoBugCapture <= 90 && (gLogCategory_RPAutoBugCapture != -1 || _LogCategory_Initialize()))
  {
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v8 = *(a1 + 64);
    LogPrintF();
  }
}

void __86__RPAutoBugCapture_reportIssueOfType_issueContext_processName_triggerThresholdValues___block_invoke_2(void *a1, void *a2)
{
  v9 = a2;
  getkSymptomDiagnosticReplySuccess();
  if (CFDictionaryGetInt64())
  {
    if (gLogCategory_RPAutoBugCapture <= 30 && (gLogCategory_RPAutoBugCapture != -1 || _LogCategory_Initialize()))
    {
      __86__RPAutoBugCapture_reportIssueOfType_issueContext_processName_triggerThresholdValues___block_invoke_2_cold_1(a1);
    }
  }

  else
  {
    v3 = getkSymptomDiagnosticReplyReason();
    v4 = NSDictionaryGetNSNumber();

    getkSymptomDiagnosticReplyReasonString();
    CFStringGetTypeID();
    v5 = CFDictionaryGetTypedValue();
    if (gLogCategory_RPAutoBugCapture <= 90 && (gLogCategory_RPAutoBugCapture != -1 || _LogCategory_Initialize()))
    {
      v7 = a1[4];
      v8 = a1[5];
      v6 = a1[6];
      LogPrintF();
    }
  }
}

uint64_t __86__RPAutoBugCapture_reportIssueOfType_issueContext_processName_triggerThresholdValues___block_invoke_2_cold_1(void *a1)
{
  v3 = a1[4];
  v4 = a1[5];
  v2 = a1[6];
  return LogPrintF();
}

@end