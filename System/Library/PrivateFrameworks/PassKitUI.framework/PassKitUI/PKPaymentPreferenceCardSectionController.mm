@interface PKPaymentPreferenceCardSectionController
- (id)newOptionItemForSubPreference:(id)preference hasErrorHandler:(id)handler;
@end

@implementation PKPaymentPreferenceCardSectionController

- (id)newOptionItemForSubPreference:(id)preference hasErrorHandler:(id)handler
{
  handlerCopy = handler;
  preferenceCopy = preference;
  v8 = [PKPaymentPreferenceCardOptionListItem alloc];
  preference = [(PKPaymentPreferenceSectionController *)self preference];
  v10 = [(PKPaymentPreferenceOptionListItem *)v8 initWithPreference:preferenceCopy inSectionPreference:preference hasErrorHandler:handlerCopy];

  return v10;
}

@end