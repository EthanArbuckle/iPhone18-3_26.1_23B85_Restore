@interface WFErrorAlertController
+ (id)errorAlertControllerWithContext:(id)a3;
@end

@implementation WFErrorAlertController

+ (id)errorAlertControllerWithContext:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4)
  {
    v6 = v4;
    if (os_log_type_enabled(v6, v5))
    {
      v7 = [v3 error];
      *buf = 136315394;
      v34 = "+[WFErrorAlertController errorAlertControllerWithContext:]";
      v35 = 2112;
      v36 = v7;
      _os_log_impl(&dword_273FB9000, v6, v5, "%s: error %@", buf, 0x16u);
    }
  }

  v8 = [v3 error];
  if ([v8 code] == 19)
  {
    goto LABEL_11;
  }

  v9 = [v3 error];
  if ([v9 code] == 17)
  {
LABEL_10:

LABEL_11:
    v11 = 1;
    v12 = &stru_288308678;
LABEL_12:

    goto LABEL_13;
  }

  v10 = [v3 error];
  if ([v10 code] == 4)
  {

    goto LABEL_10;
  }

  v25 = [v3 error];
  v26 = [v25 code] == 16;

  if (!v26)
  {
    v8 = [v3 error];
    v12 = [v8 localizedDescription];
    v11 = 0;
    goto LABEL_12;
  }

  v11 = 1;
  v12 = &stru_288308678;
LABEL_13:
  if (![(__CFString *)v12 length])
  {

    v12 = 0;
  }

  v13 = [v3 error];
  v14 = v13;
  if (v11)
  {
    [v13 localizedDescription];
  }

  else
  {
    [v13 localizedRecoverySuggestion];
  }
  v15 = ;

  v16 = [WFErrorAlertController alertControllerWithTitle:v12 message:v15 preferredStyle:1];
  v17 = [v3 error];
  v18 = [v17 localizedRecoveryOptions];
  v19 = [v18 objectAtIndexedSubscript:0];

  [v16 setContext:v3];
  objc_initWeak(buf, v3);
  v20 = MEMORY[0x277D750F8];
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __58__WFErrorAlertController_errorAlertControllerWithContext___block_invoke;
  v30 = &unk_279EC5510;
  v21 = v12;
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