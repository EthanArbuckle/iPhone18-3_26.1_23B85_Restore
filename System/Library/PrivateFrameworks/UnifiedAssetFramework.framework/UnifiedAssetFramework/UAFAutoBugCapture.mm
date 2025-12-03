@interface UAFAutoBugCapture
+ (void)captureWithType:(id)type subType:(id)subType context:(id)context logCategory:(id)category;
+ (void)captureWithType:(id)type subType:(id)subType context:(id)context logCategory:(id)category withSDRDiagnosticReporter:(id)reporter;
@end

@implementation UAFAutoBugCapture

+ (void)captureWithType:(id)type subType:(id)subType context:(id)context logCategory:(id)category
{
  v9 = MEMORY[0x1E69D4F78];
  categoryCopy = category;
  contextCopy = context;
  subTypeCopy = subType;
  typeCopy = type;
  v14 = [[v9 alloc] initWithQueue:0];
  [UAFAutoBugCapture captureWithType:typeCopy subType:subTypeCopy context:contextCopy logCategory:categoryCopy withSDRDiagnosticReporter:v14];
}

+ (void)captureWithType:(id)type subType:(id)subType context:(id)context logCategory:(id)category withSDRDiagnosticReporter:(id)reporter
{
  v28 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  subTypeCopy = subType;
  contextCopy = context;
  categoryCopy = category;
  reporterCopy = reporter;
  if (+[UAFCommonUtilities isInternalInstall](UAFCommonUtilities, "isInternalInstall") && [objc_opt_class() isSymptomDiagnosticReporterAvailable])
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];
    v18 = [reporterCopy signatureWithDomain:@"UnifiedAssetFramework" type:typeCopy subType:subTypeCopy subtypeContext:contextCopy detectedProcess:processName triggerThresholdValues:0];

    if (os_log_type_enabled(categoryCopy, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 136315906;
      v21 = "+[UAFAutoBugCapture captureWithType:subType:context:logCategory:withSDRDiagnosticReporter:]";
      v22 = 2112;
      v23 = typeCopy;
      v24 = 2112;
      v25 = subTypeCopy;
      v26 = 2112;
      v27 = contextCopy;
      _os_log_impl(&dword_1BCF2C000, categoryCopy, OS_LOG_TYPE_DEFAULT, "%s Reporting failure to ABC.  Failure type: %@, subType: %@, context: %@", &v20, 0x2Au);
    }

    [reporterCopy snapshotWithSignature:v18 delay:0 events:0 payload:0 actions:0 reply:0.0];
  }

  v19 = *MEMORY[0x1E69E9840];
}

@end