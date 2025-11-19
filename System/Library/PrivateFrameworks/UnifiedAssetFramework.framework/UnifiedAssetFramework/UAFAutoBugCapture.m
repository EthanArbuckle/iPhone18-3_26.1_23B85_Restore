@interface UAFAutoBugCapture
+ (void)captureWithType:(id)a3 subType:(id)a4 context:(id)a5 logCategory:(id)a6;
+ (void)captureWithType:(id)a3 subType:(id)a4 context:(id)a5 logCategory:(id)a6 withSDRDiagnosticReporter:(id)a7;
@end

@implementation UAFAutoBugCapture

+ (void)captureWithType:(id)a3 subType:(id)a4 context:(id)a5 logCategory:(id)a6
{
  v9 = MEMORY[0x1E69D4F78];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[v9 alloc] initWithQueue:0];
  [UAFAutoBugCapture captureWithType:v13 subType:v12 context:v11 logCategory:v10 withSDRDiagnosticReporter:v14];
}

+ (void)captureWithType:(id)a3 subType:(id)a4 context:(id)a5 logCategory:(id)a6 withSDRDiagnosticReporter:(id)a7
{
  v28 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (+[UAFCommonUtilities isInternalInstall](UAFCommonUtilities, "isInternalInstall") && [objc_opt_class() isSymptomDiagnosticReporterAvailable])
  {
    v16 = [MEMORY[0x1E696AE30] processInfo];
    v17 = [v16 processName];
    v18 = [v15 signatureWithDomain:@"UnifiedAssetFramework" type:v11 subType:v12 subtypeContext:v13 detectedProcess:v17 triggerThresholdValues:0];

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315906;
      v21 = "+[UAFAutoBugCapture captureWithType:subType:context:logCategory:withSDRDiagnosticReporter:]";
      v22 = 2112;
      v23 = v11;
      v24 = 2112;
      v25 = v12;
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_DEFAULT, "%s Reporting failure to ABC.  Failure type: %@, subType: %@, context: %@", &v20, 0x2Au);
    }

    [v15 snapshotWithSignature:v18 delay:0 events:0 payload:0 actions:0 reply:0.0];
  }

  v19 = *MEMORY[0x1E69E9840];
}

@end