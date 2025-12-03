@interface WKUIRemoteViewServiceAdaptor
- (WKUIRemoteViewServiceAdaptor)init;
- (void)dismissRemoteViewControllerOnHostController:(id)controller;
- (void)presentRemoteViewControllerOnHostController:(id)controller workoutPlanData:(id)data dismissHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation WKUIRemoteViewServiceAdaptor

- (WKUIRemoteViewServiceAdaptor)init
{
  v7 = a2;
  v8 = 0;
  v6.receiver = self;
  v6.super_class = WKUIRemoteViewServiceAdaptor;
  v8 = [(WKUIRemoteViewServiceAdaptor *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    v2 = objc_alloc_init(_TtC12WorkoutKitUI31WorkoutRemoteViewServiceAdaptor);
    viewServiceAdaptor = v8->_viewServiceAdaptor;
    v8->_viewServiceAdaptor = v2;
    MEMORY[0x277D82BD8](viewServiceAdaptor);
  }

  v5 = MEMORY[0x277D82BE0](v8);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (void)presentRemoteViewControllerOnHostController:(id)controller workoutPlanData:(id)data dismissHandler:(id)handler completionHandler:(id)completionHandler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v11 = 0;
  objc_storeStrong(&v11, data);
  v10 = 0;
  objc_storeStrong(&v10, handler);
  v9 = 0;
  objc_storeStrong(&v9, completionHandler);
  [(WorkoutRemoteViewServiceAdaptor *)selfCopy->_viewServiceAdaptor presentRemoteViewControllerOn:location[0] with:v11 dismissCompletion:v10 completion:v9];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissRemoteViewControllerOnHostController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  [(WorkoutRemoteViewServiceAdaptor *)selfCopy->_viewServiceAdaptor dismissRemoteViewControllerOn:location[0]];
  objc_storeStrong(location, 0);
}

@end