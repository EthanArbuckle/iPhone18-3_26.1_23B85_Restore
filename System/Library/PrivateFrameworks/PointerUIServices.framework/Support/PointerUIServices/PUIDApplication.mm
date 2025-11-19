@interface PUIDApplication
- (void)sendEvent:(id)a3;
- (void)workspace:(id)a3 didCreateScene:(id)a4 withTransitionContext:(id)a5 completion:(id)a6;
@end

@implementation PUIDApplication

- (void)sendEvent:(id)a3
{
  v4 = a3;
  v5 = [(PUIDApplication *)self delegate];
  [v5 handleEvent:v4];
}

- (void)workspace:(id)a3 didCreateScene:(id)a4 withTransitionContext:(id)a5 completion:(id)a6
{
  v12.receiver = self;
  v12.super_class = PUIDApplication;
  v10 = a4;
  [(PUIDApplication *)&v12 workspace:a3 didCreateScene:v10 withTransitionContext:a5 completion:a6];
  v11 = [(PUIDApplication *)self delegate:v12.receiver];
  [v10 setDelegate:v11];
  [v11 applicationDidCreateFBSScene:v10];
}

@end