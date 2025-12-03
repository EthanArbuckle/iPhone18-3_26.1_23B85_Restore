@interface VSHMHomeManager
- (void)transferPreinstallErrorMessagesOfLanguage:(id)language voiceName:(id)name forAccessoryID:(id)d;
@end

@implementation VSHMHomeManager

- (void)transferPreinstallErrorMessagesOfLanguage:(id)language voiceName:(id)name forAccessoryID:(id)d
{
  languageCopy = language;
  nameCopy = name;
  dCopy = d;
  objc_exception_throw(0);
}

@end