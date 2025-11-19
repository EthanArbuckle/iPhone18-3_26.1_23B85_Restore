@interface SXHostApplication
- (BOOL)active;
- (BOOL)canOpenURL:(id)a3;
- (SXHostApplication)initWithApplication:(id)a3;
- (UIApplication)application;
- (void)openURL:(id)a3 completion:(id)a4;
@end

@implementation SXHostApplication

- (SXHostApplication)initWithApplication:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SXHostApplication;
  v5 = [(SXHostApplication *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_application, v4);
  }

  return v6;
}

- (BOOL)active
{
  v2 = [(SXHostApplication *)self application];
  v3 = [v2 applicationState] == 0;

  return v3;
}

- (void)openURL:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SXHostApplication *)self application];
  [v8 openURL:v7 options:MEMORY[0x1E695E0F8] completionHandler:v6];
}

- (BOOL)canOpenURL:(id)a3
{
  v4 = a3;
  v5 = [(SXHostApplication *)self application];
  v6 = [v5 canOpenURL:v4];

  return v6;
}

- (UIApplication)application
{
  WeakRetained = objc_loadWeakRetained(&self->_application);

  return WeakRetained;
}

@end