@interface WFErrorAlertController
+ (id)errorAlertControllerWithContext:(id)context;
@end

@implementation WFErrorAlertController

+ (id)errorAlertControllerWithContext:(id)context
{
  v37 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4)
  {
    v6 = v4;
    if (os_log_type_enabled(v6, v5))
    {
      error = [contextCopy error];
      *buf = 136315394;
      v34 = "+[WFErrorAlertController errorAlertControllerWithContext:]";
      v35 = 2112;
      v36 = error;
      _os_log_impl(&dword_273FB9000, v6, v5, "%s: error %@", buf, 0x16u);
    }
  }

  error2 = [contextCopy error];
  if ([error2 code] == 19)
  {
    goto LABEL_11;
  }

  error3 = [contextCopy error];
  if ([error3 code] == 17)
  {
LABEL_10:

LABEL_11:
    v11 = 1;
    localizedDescription = &stru_288308678;
LABEL_12:

    goto LABEL_13;
  }

  error4 = [contextCopy error];
  if ([error4 code] == 4)
  {

    goto LABEL_10;
  }

  error5 = [contextCopy error];
  v26 = [error5 code] == 16;

  if (!v26)
  {
    error2 = [contextCopy error];
    localizedDescription = [error2 localizedDescription];
    v11 = 0;
    goto LABEL_12;
  }

  v11 = 1;
  localizedDescription = &stru_288308678;
LABEL_13:
  if (![(__CFString *)localizedDescription length])
  {

    localizedDescription = 0;
  }

  error6 = [contextCopy error];
  v14 = error6;
  if (v11)
  {
    [error6 localizedDescription];
  }

  else
  {
    [error6 localizedRecoverySuggestion];
  }
  v15 = ;

  v16 = [WFErrorAlertController alertControllerWithTitle:localizedDescription message:v15 preferredStyle:1];
  error7 = [contextCopy error];
  localizedRecoveryOptions = [error7 localizedRecoveryOptions];
  v19 = [localizedRecoveryOptions objectAtIndexedSubscript:0];

  [v16 setContext:contextCopy];
  objc_initWeak(buf, contextCopy);
  v20 = MEMORY[0x277D750F8];
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __58__WFErrorAlertController_errorAlertControllerWithContext___block_invoke;
  v30 = &unk_279EC5510;
  v21 = localizedDescription;
  v31 = v21;
  objc_copyWeak(&v32, buf);
  v22 = [v20 actionWithTitle:v19 style:0 handler:&v27];
  [v16 addAction:{v22, v27, v28, v29, v30}];
  [v16 setPreferredAction:v22];

  objc_destroyWeak(&v32);
  objc_destroyWeak(buf);

  v23 = *MEMORY[0x277D85DE8];

  return v16;
}

void __58__WFErrorAlertController_errorAlertControllerWithContext___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(3uLL);
  if (WFCurrentLogLevel() >= 3 && v2 && os_log_type_enabled(v2, v3))
  {
    v4 = *(a1 + 32);
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_273FB9000, v2, v3, "user dismissed alert %@", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained cancel];

  v6 = *MEMORY[0x277D85DE8];
}

@end