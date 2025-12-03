@interface SXHostApplication
- (BOOL)active;
- (BOOL)canOpenURL:(id)l;
- (SXHostApplication)initWithApplication:(id)application;
- (UIApplication)application;
- (void)openURL:(id)l completion:(id)completion;
@end

@implementation SXHostApplication

- (SXHostApplication)initWithApplication:(id)application
{
  applicationCopy = application;
  v8.receiver = self;
  v8.super_class = SXHostApplication;
  v5 = [(SXHostApplication *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_application, applicationCopy);
  }

  return v6;
}

- (BOOL)active
{
  application = [(SXHostApplication *)self application];
  v3 = [application applicationState] == 0;

  return v3;
}

- (void)openURL:(id)l completion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  application = [(SXHostApplication *)self application];
  [application openURL:lCopy options:MEMORY[0x1E695E0F8] completionHandler:completionCopy];
}

- (BOOL)canOpenURL:(id)l
{
  lCopy = l;
  application = [(SXHostApplication *)self application];
  v6 = [application canOpenURL:lCopy];

  return v6;
}

- (UIApplication)application
{
  WeakRetained = objc_loadWeakRetained(&self->_application);

  return WeakRetained;
}

@end