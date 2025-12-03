@interface WFUnconfiguredJoinOperation
- (WFUnconfiguredJoinOperation)initWithParameters:(id)parameters rootViewController:(id)controller;
- (void)airPortAssistantComplete:(id)complete result:(int)result context:(id)context animated:(BOOL)animated;
- (void)finish;
- (void)start;
@end

@implementation WFUnconfiguredJoinOperation

- (WFUnconfiguredJoinOperation)initWithParameters:(id)parameters rootViewController:(id)controller
{
  parametersCopy = parameters;
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = WFUnconfiguredJoinOperation;
  v9 = [(WFUnconfiguredJoinOperation *)&v15 init];
  v10 = v9;
  if (!controllerCopy || !parametersCopy || !v9)
  {
    goto LABEL_8;
  }

  objc_storeStrong(&v9->_parameters, parameters);
  objc_storeStrong(&v10->_rootViewController, controller);
  v11 = [MEMORY[0x277CEA3A8] assistantUIViewControllerWithParameters:parametersCopy];
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
  airportController = [(WFUnconfiguredJoinOperation *)self airportController];
  viewController = [airportController viewController];
  v6 = [v3 initWithRootViewController:viewController];
  [(WFUnconfiguredJoinOperation *)self setNavigationController:v6];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v8 = 2 * ([currentDevice userInterfaceIdiom] == 1);
  navigationController = [(WFUnconfiguredJoinOperation *)self navigationController];
  [navigationController setModalPresentationStyle:v8];

  rootViewController = [(WFUnconfiguredJoinOperation *)self rootViewController];
  navigationController2 = [(WFUnconfiguredJoinOperation *)self navigationController];
  [rootViewController presentViewController:navigationController2 animated:1 completion:0];
}

- (void)finish
{
  v4.receiver = self;
  v4.super_class = WFUnconfiguredJoinOperation;
  [(WFOperation *)&v4 finish];
  navigationController = [(WFUnconfiguredJoinOperation *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)airPortAssistantComplete:(id)complete result:(int)result context:(id)context animated:(BOOL)animated
{
  v20 = *MEMORY[0x277D85DE8];
  completeCopy = complete;
  contextCopy = context;
  if (result == -6723)
  {
    v13 = [MEMORY[0x277CCA9B8] associationErrorWithReason:6];
    [(WFOperation *)self setError:v13];
LABEL_10:

    goto LABEL_11;
  }

  if (!result)
  {
    configuredSSID = [completeCopy configuredSSID];
    v12 = [configuredSSID length];

    if (v12)
    {
      v13 = WFLogForCategory(0);
      v14 = OSLogForWFLogLevel(3uLL);
      if (WFCurrentLogLevel() >= 3 && v13)
      {
        v15 = v13;
        if (os_log_type_enabled(v15, v14))
        {
          configuredSSID2 = [completeCopy configuredSSID];
          v18 = 138412290;
          v19 = configuredSSID2;
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