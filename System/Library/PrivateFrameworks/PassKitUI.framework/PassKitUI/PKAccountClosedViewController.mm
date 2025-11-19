@interface PKAccountClosedViewController
- (PKAccountClosedViewController)initWithAccount:(id)a3 accountUserCollection:(id)a4 familyMemberCollection:(id)a5 context:(int64_t)a6;
- (void)explanationViewDidSelectBodyButton:(id)a3;
- (void)viewDidLoad;
@end

@implementation PKAccountClosedViewController

- (PKAccountClosedViewController)initWithAccount:(id)a3 accountUserCollection:(id)a4 familyMemberCollection:(id)a5 context:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = PKAccountClosedViewController;
  v14 = [(PKExplanationViewController *)&v17 initWithContext:a6];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_account, a3);
    objc_storeStrong(&v15->_accountUserCollection, a4);
    objc_storeStrong(&v15->_familyMemberCollection, a5);
  }

  return v15;
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = PKAccountClosedViewController;
  [(PKExplanationViewController *)&v18 viewDidLoad];
  v3 = [(PKExplanationViewController *)self explanationView];
  [v3 setShowPrivacyView:0];
  v4 = PKLocalizedFeatureString();
  [v3 setTitleText:v4];

  v5 = [(PKAccountUserCollection *)self->_accountUserCollection coOwnerAccountUser];
  familyMemberCollection = self->_familyMemberCollection;
  v7 = [v5 altDSID];
  v8 = [(PKFamilyMemberCollection *)familyMemberCollection familyMemberForAltDSID:v7];

  v9 = MEMORY[0x1E69B8740];
  v10 = [v5 nameComponents];
  v11 = [v9 contactForFamilyMember:v8 nameComponents:v10 imageData:0];

  v17 = [v11 givenName];
  v12 = PKLocalizedFeatureString();

  [v3 setBodyText:{v12, v17}];
  v13 = PKLocalizedFeatureString();
  [v3 setBodyButtonText:v13];

  v14 = [v3 dockView];
  v15 = [v14 primaryButton];
  v16 = PKLocalizedFeatureString();
  [v15 setTitle:v16 forState:0];
}

- (void)explanationViewDidSelectBodyButton:(id)a3
{
  v7 = [[PKPaymentMoreInformationViewController alloc] initWithContext:[(PKExplanationViewController *)self context]];
  v4 = PKLocalizedFeatureString();
  [(PKPaymentMoreInformationViewController *)v7 setDetailTitle:v4];

  v5 = PKLocalizedFeatureString();
  [(PKPaymentMoreInformationViewController *)v7 setDetailBody:v5];

  v6 = [[PKNavigationController alloc] initWithRootViewController:v7];
  [(PKAccountClosedViewController *)self presentViewController:v6 animated:1 completion:0];
}

@end