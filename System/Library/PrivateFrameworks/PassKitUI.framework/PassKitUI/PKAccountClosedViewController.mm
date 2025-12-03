@interface PKAccountClosedViewController
- (PKAccountClosedViewController)initWithAccount:(id)account accountUserCollection:(id)collection familyMemberCollection:(id)memberCollection context:(int64_t)context;
- (void)explanationViewDidSelectBodyButton:(id)button;
- (void)viewDidLoad;
@end

@implementation PKAccountClosedViewController

- (PKAccountClosedViewController)initWithAccount:(id)account accountUserCollection:(id)collection familyMemberCollection:(id)memberCollection context:(int64_t)context
{
  accountCopy = account;
  collectionCopy = collection;
  memberCollectionCopy = memberCollection;
  v17.receiver = self;
  v17.super_class = PKAccountClosedViewController;
  v14 = [(PKExplanationViewController *)&v17 initWithContext:context];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_account, account);
    objc_storeStrong(&v15->_accountUserCollection, collection);
    objc_storeStrong(&v15->_familyMemberCollection, memberCollection);
  }

  return v15;
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = PKAccountClosedViewController;
  [(PKExplanationViewController *)&v18 viewDidLoad];
  explanationView = [(PKExplanationViewController *)self explanationView];
  [explanationView setShowPrivacyView:0];
  v4 = PKLocalizedFeatureString();
  [explanationView setTitleText:v4];

  coOwnerAccountUser = [(PKAccountUserCollection *)self->_accountUserCollection coOwnerAccountUser];
  familyMemberCollection = self->_familyMemberCollection;
  altDSID = [coOwnerAccountUser altDSID];
  v8 = [(PKFamilyMemberCollection *)familyMemberCollection familyMemberForAltDSID:altDSID];

  v9 = MEMORY[0x1E69B8740];
  nameComponents = [coOwnerAccountUser nameComponents];
  v11 = [v9 contactForFamilyMember:v8 nameComponents:nameComponents imageData:0];

  givenName = [v11 givenName];
  v12 = PKLocalizedFeatureString();

  [explanationView setBodyText:{v12, givenName}];
  v13 = PKLocalizedFeatureString();
  [explanationView setBodyButtonText:v13];

  dockView = [explanationView dockView];
  primaryButton = [dockView primaryButton];
  v16 = PKLocalizedFeatureString();
  [primaryButton setTitle:v16 forState:0];
}

- (void)explanationViewDidSelectBodyButton:(id)button
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