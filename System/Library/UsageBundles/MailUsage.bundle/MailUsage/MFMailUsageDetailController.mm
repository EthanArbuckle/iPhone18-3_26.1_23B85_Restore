@interface MFMailUsageDetailController
- (id)specifiers;
- (void)launchMail:(id)mail;
- (void)loadView;
@end

@implementation MFMailUsageDetailController

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = MFMailUsageDetailController;
  [(MFMailUsageDetailController *)&v3 loadView];
  [(MFMailUsageDetailController *)self setEditingButtonHidden:1 animated:0];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSUsageBundleDetailController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v14.receiver = self;
    v14.super_class = MFMailUsageDetailController;
    specifiers = [(MFMailUsageDetailController *)&v14 specifiers];
    v6 = [specifiers mutableCopy];

    v7 = [PSSpecifier preferenceSpecifierNamed:&stru_4218 target:0 set:0 get:0 detail:0 cell:0 edit:0];
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"OPEN_MAIL" value:&stru_4218 table:@"MailUsage"];
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v10 setButtonAction:"launchMail:"];
    v15[0] = v7;
    v15[1] = v10;
    v11 = [NSArray arrayWithObjects:v15 count:2];
    [v6 addObjectsFromArray:v11];

    v12 = *&self->PSUsageBundleDetailController_opaque[v3];
    *&self->PSUsageBundleDetailController_opaque[v3] = v6;

    v4 = *&self->PSUsageBundleDetailController_opaque[v3];
  }

  return v4;
}

- (void)launchMail:(id)mail
{
  v5 = FBSOpenApplicationOptionKeyActivateSuspended;
  v6 = &__kCFBooleanFalse;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v4 = +[FBSSystemService sharedService];
  [v4 openApplication:kMFMobileMailBundleIdentifier options:v3 withResult:&stru_41A8];
}

@end