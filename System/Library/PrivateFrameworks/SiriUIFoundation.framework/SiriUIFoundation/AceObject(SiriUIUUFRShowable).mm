@interface AceObject(SiriUIUUFRShowable)
- (id)_uufrShownRequestedByInstrumentationManager:()SiriUIUUFRShowable;
@end

@implementation AceObject(SiriUIUUFRShowable)

- (id)_uufrShownRequestedByInstrumentationManager:()SiriUIUUFRShowable
{
  v2 = objc_alloc_init(MEMORY[0x277D5AC58]);
  aceId = [self aceId];
  [v2 setAceViewID:aceId];

  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v2 setSnippetClass:v5];

  return v2;
}

@end