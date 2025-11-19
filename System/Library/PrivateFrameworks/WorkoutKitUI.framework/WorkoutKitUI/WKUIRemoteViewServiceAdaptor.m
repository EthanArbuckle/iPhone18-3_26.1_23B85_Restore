@interface WKUIRemoteViewServiceAdaptor
- (WKUIRemoteViewServiceAdaptor)init;
- (void)dismissRemoteViewControllerOnHostController:(id)a3;
- (void)presentRemoteViewControllerOnHostController:(id)a3 workoutPlanData:(id)a4 dismissHandler:(id)a5 completionHandler:(id)a6;
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

- (void)presentRemoteViewControllerOnHostController:(id)a3 workoutPlanData:(id)a4 dismissHandler:(id)a5 completionHandler:(id)a6
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = 0;
  objc_storeStrong(&v10, a5);
  v9 = 0;
  objc_storeStrong(&v9, a6);
  [(WorkoutRemoteViewServiceAdaptor *)v13->_viewServiceAdaptor presentRemoteViewControllerOn:location[0] with:v11 dismissCompletion:v10 completion:v9];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)dismissRemoteViewControllerOnHostController:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(WorkoutRemoteViewServiceAdaptor *)v4->_viewServiceAdaptor dismissRemoteViewControllerOn:location[0]];
  objc_storeStrong(location, 0);
}

@end