@interface WFPromptAlertController
+ (id)promptAlertControllerWithTitle:(id)a3 message:(id)a4 cancelTitle:(id)a5 successTitle:(id)a6 completionHandler:(id)a7;
@end

@implementation WFPromptAlertController

+ (id)promptAlertControllerWithTitle:(id)a3 message:(id)a4 cancelTitle:(id)a5 successTitle:(id)a6 completionHandler:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = v15;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35 = 0;
  if (!v11)
  {
    v24 = WFLogForCategory(0);
    v25 = OSLogForWFLogLevel(1uLL);
    if (!WFCurrentLogLevel() || !v24 || !os_log_type_enabled(v24, v25))
    {
      goto LABEL_31;
    }

    *buf = 0;
    v26 = "Missing alert title";
    goto LABEL_30;
  }

  if (!v12)
  {
    v24 = WFLogForCategory(0);
    v25 = OSLogForWFLogLevel(1uLL);
    if (!WFCurrentLogLevel() || !v24 || !os_log_type_enabled(v24, v25))
    {
      goto LABEL_31;
    }

    *buf = 0;
    v26 = "Missing alert message";
    goto LABEL_30;
  }

  if (!v15)
  {
    v24 = WFLogForCategory(0);
    v25 = OSLogForWFLogLevel(1uLL);
    if (!WFCurrentLogLevel() || !v24 || !os_log_type_enabled(v24, v25))
    {
      goto LABEL_31;
    }

    *buf = 0;
    v26 = "Missing completion handler";
    goto LABEL_30;
  }

  if (!v13)
  {
    v24 = WFLogForCategory(0);
    v25 = OSLogForWFLogLevel(1uLL);
    if (!WFCurrentLogLevel() || !v24 || !os_log_type_enabled(v24, v25))
    {
      goto LABEL_31;
    }

    *buf = 0;
    v26 = "Missing alert cancelTitle";
    goto LABEL_30;
  }

  if (v14)
  {
    v17 = [WFPromptAlertController alertControllerWithTitle:v11 message:v12 preferredStyle:1];
    v18 = v31[5];
    v31[5] = v17;

    [v31[5] setCompletionHandler:v16];
    v19 = v31[5];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __109__WFPromptAlertController_promptAlertControllerWithTitle_message_cancelTitle_successTitle_completionHandler___block_invoke;
    v28[3] = &unk_279EC5468;
    v28[4] = &v30;
    v20 = [MEMORY[0x277D750F8] actionWithTitle:v13 style:1 handler:v28];
    [v19 addAction:v20];

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __109__WFPromptAlertController_promptAlertControllerWithTitle_message_cancelTitle_successTitle_completionHandler___block_invoke_2;
    v27[3] = &unk_279EC5468;
    v27[4] = &v30;
    v21 = [MEMORY[0x277D750F8] actionWithTitle:v14 style:0 handler:v27];
    [v31[5] addAction:v21];
    [v31[5] setPreferredAction:v21];
    goto LABEL_7;
  }

  v24 = WFLogForCategory(0);
  v25 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v24 && os_log_type_enabled(v24, v25))
  {
    *buf = 0;
    v26 = "Missing alert cancelTitle";
LABEL_30:
    _os_log_impl(&dword_273FB9000, v24, v25, v26, buf, 2u);
  }

LABEL_31:

  v21 = 0;
LABEL_7:
  v22 = v31[5];

  _Block_object_dispose(&v30, 8);

  return v22;
}

void __109__WFPromptAlertController_promptAlertControllerWithTitle_message_cancelTitle_successTitle_completionHandler___block_invoke(uint64_t a1)
{
  v1 = [*(*(*(a1 + 32) + 8) + 40) completionHandler];
  v1[2](v1, 0);
}

void __109__WFPromptAlertController_promptAlertControllerWithTitle_message_cancelTitle_successTitle_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = [*(*(*(a1 + 32) + 8) + 40) completionHandler];
  v1[2](v1, 1);
}

@end