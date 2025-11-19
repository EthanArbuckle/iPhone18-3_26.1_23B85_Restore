@interface PKPaymentPreferenceCardSectionController
- (id)newOptionItemForSubPreference:(id)a3 hasErrorHandler:(id)a4;
@end

@implementation PKPaymentPreferenceCardSectionController

- (id)newOptionItemForSubPreference:(id)a3 hasErrorHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [PKPaymentPreferenceCardOptionListItem alloc];
  v9 = [(PKPaymentPreferenceSectionController *)self preference];
  v10 = [(PKPaymentPreferenceOptionListItem *)v8 initWithPreference:v7 inSectionPreference:v9 hasErrorHandler:v6];

  return v10;
}

@end