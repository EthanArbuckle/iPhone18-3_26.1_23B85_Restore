@interface SAUIAssistantUtteranceView(SiriUIUUFRShowable)
- (id)_uufrShownRequestedByInstrumentationManager:()SiriUIUUFRShowable;
@end

@implementation SAUIAssistantUtteranceView(SiriUIUUFRShowable)

- (id)_uufrShownRequestedByInstrumentationManager:()SiriUIUUFRShowable
{
  v5.receiver = self;
  v5.super_class = &off_287A25A88;
  v2 = objc_msgSendSuper2(&v5, sel__uufrShownRequestedByInstrumentationManager_);
  dialogIdentifier = [self dialogIdentifier];
  [v2 setDialogIdentifier:dialogIdentifier];

  return v2;
}

@end