@interface VUIGDPRViewController
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation VUIGDPRViewController

- (void)viewDidAppear:(BOOL)a3
{
  v7[2] = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = VUIGDPRViewController;
  [(AMSUIOnboardingViewController *)&v5 viewDidAppear:a3];
  v3 = +[VUIMetricsController sharedInstance];
  v6[0] = @"dialogId";
  v6[1] = @"dialogType";
  v7[0] = @"GDPR";
  v7[1] = @"GDPR";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [v3 recordDialog:v4];
}

@end