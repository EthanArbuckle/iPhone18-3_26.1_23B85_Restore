@interface AceObject(SiriUIUUFRShowable)
- (id)_uufrShownRequestedByInstrumentationManager:()SiriUIUUFRShowable;
@end

@implementation AceObject(SiriUIUUFRShowable)

- (id)_uufrShownRequestedByInstrumentationManager:()SiriUIUUFRShowable
{
  v2 = objc_alloc_init(MEMORY[0x277D5AC58]);
  v3 = [a1 aceId];
  [v2 setAceViewID:v3];

  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v2 setSnippetClass:v5];

  return v2;
}

@end