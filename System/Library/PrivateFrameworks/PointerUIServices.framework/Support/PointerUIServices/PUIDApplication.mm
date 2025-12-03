@interface PUIDApplication
- (void)sendEvent:(id)event;
- (void)workspace:(id)workspace didCreateScene:(id)scene withTransitionContext:(id)context completion:(id)completion;
@end

@implementation PUIDApplication

- (void)sendEvent:(id)event
{
  eventCopy = event;
  delegate = [(PUIDApplication *)self delegate];
  [delegate handleEvent:eventCopy];
}

- (void)workspace:(id)workspace didCreateScene:(id)scene withTransitionContext:(id)context completion:(id)completion
{
  v12.receiver = self;
  v12.super_class = PUIDApplication;
  sceneCopy = scene;
  [(PUIDApplication *)&v12 workspace:workspace didCreateScene:sceneCopy withTransitionContext:context completion:completion];
  v11 = [(PUIDApplication *)self delegate:v12.receiver];
  [sceneCopy setDelegate:v11];
  [v11 applicationDidCreateFBSScene:sceneCopy];
}

@end