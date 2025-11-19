@interface WFUnconfiguredJoinOperation
- (WFUnconfiguredJoinOperation)initWithParameters:(id)a3 rootViewController:(id)a4;
- (void)airPortAssistantComplete:(id)a3 result:(int)a4 context:(id)a5 animated:(BOOL)a6;
- (void)finish;
- (void)start;
@end

@implementation WFUnconfiguredJoinOperation

- (WFUnconfiguredJoinOperation)initWithParameters:(id)a3 rootViewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = WFUnconfiguredJoinOperation;
  v9 = [(WFUnconfiguredJoinOperation *)&v15 init];
  v10 = v9;
  if (!v8 || !v7 || !v9)
  {
    goto LABEL_8;
  }

  objc_storeStrong(&v9->_parameters, a3);
  objc_storeStrong(&v10->_rootViewController, a4);
  v11 = [MEMORY[0x277CEA3A8] assistantUIViewControllerWithParameters:v7];
  airportController = v10->_airportController;
  v10->_airportController = v11;

  v13 = v10->_airportController;
  if (!v13)
  {
    [WFUnconfiguredJoinOperation initWithParameters:rootViewController:];
LABEL_8:

    v10 = 0;
    goto LABEL_6;
  }

  [(AirPortAssistantController *)v13 setDelegate:v10];
LABEL_6:

  return v10;
}

- (void)start
{
  v12.receiver = self;
  v12.super_class = WFUnconfiguredJoinOperation;
  [(WFOperation *)&v12 start];
  v3 = objc_alloc(MEMORY[0x277D757A0]);
  v4 = [(WFUnconfiguredJoinOperation *)self airportController];
  v5 = [v4 viewController];
  v6 = [v3 initWithRootViewController:v5];
  [(WFUnconfiguredJoinOperation *)self setNavigationController:v6];

  v7 = [MEMORY[0x277D75418] currentDevice];
  v8 = 2 * ([v7 userInterfaceIdiom] == 1);
  v9 = [(WFUnconfiguredJoinOperation *)self navigationController];
  [v9 setModalPresentationStyle:v8];

  v10 = [(WFUnconfiguredJoinOperation *)self rootViewController];
  v11 = [(WFUnconfiguredJoinOperation *)self navigationController];
  [v10 presentViewController:v11 animated:1 completion:0];
}

- (void)finish
{
  v4.receiver = self;
  v4.super_class = WFUnconfiguredJoinOperation;
  [(WFOperation *)&v4 finish];
  v3 = [(WFUnconfiguredJoinOperation *)self navigationController];
  [v3 dismissViewControllerAnimated:1 completion:0];
}

- (void)airPortAssistantComplete:(id)a3 result:(int)a4 context:(id)a5 animated:(BOOL)a6
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  if (a4 == -6723)
  {
    v13 = [MEMORY[0x277CCA9B8] associationErrorWithReason:6];
    [(WFOperation *)self setError:v13];
LABEL_10:

    goto LABEL_11;
  }

  if (!a4)
  {
    v11 = [v9 configuredSSID];
    v12 = [v11 length];

    if (v12)
    {
      v13 = WFLogForCategory(0);
      v14 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v13)
      {
        v15 = v13;
        if (os_log_type_enabled(v15, v14))
        {
          v16 = [v9 configuredSSID];
          v18 = 138412290;
          v19 = v16;
          _os_log_impl(&dword_273ECD000, v15, v14, "Successfully configured SSID %@", &v18, 0xCu);
        }
      }

      goto LABEL_10;
    }
  }

LABEL_11:
  [(WFUnconfiguredJoinOperation *)self finish];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)initWithParameters:rootViewController:.cold.1()
{
  v0 = WFLogForCategory(0);
  v1 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v0 && os_log_type_enabled(v0, v1))
  {
    *v2 = 0;
    _os_log_impl(&dword_273ECD000, v0, v1, "Unable to create AirPortAssistantController", v2, 2u);
  }
}

@end