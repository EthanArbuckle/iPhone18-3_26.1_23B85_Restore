@interface OKActionBindingTransition
+ (id)supportedSettings;
- (OKActionBindingTransition)init;
- (OKActionBindingTransition)initWithSettings:(id)settings;
- (id)_compatibleNavigatorViewController:(id)controller;
- (id)copyWithZone:(_NSZone *)zone;
- (void)loadForResponder:(id)responder scope:(unint64_t)scope;
- (void)unload;
@end

@implementation OKActionBindingTransition

- (OKActionBindingTransition)init
{
  v3.receiver = self;
  v3.super_class = OKActionBindingTransition;
  return [(OKActionBinding *)&v3 init];
}

- (OKActionBindingTransition)initWithSettings:(id)settings
{
  v4.receiver = self;
  v4.super_class = OKActionBindingTransition;
  return [(OKActionBinding *)&v4 initWithSettings:settings];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4.receiver = self;
  v4.super_class = OKActionBindingTransition;
  return [(OKActionBindingProxy *)&v4 copyWithZone:zone];
}

+ (id)supportedSettings
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___OKActionBindingTransition;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v4, sel_supportedSettings)}];
  [v2 addEntriesFromDictionary:MEMORY[0x277CBEC10]];
  return v2;
}

- (id)_compatibleNavigatorViewController:(id)controller
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    controller = [controller pageViewController];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  navigatorViewController = [controller navigatorViewController];
  if ([navigatorViewController conformsToProtocol:&unk_287B1AAB0])
  {
    return navigatorViewController;
  }

  else
  {
    return 0;
  }
}

- (void)loadForResponder:(id)responder scope:(unint64_t)scope
{
  v7.receiver = self;
  v7.super_class = OKActionBindingTransition;
  [(OKActionBindingProxy *)&v7 loadForResponder:responder scope:scope];
  v6 = [(OKActionBindingTransition *)self _compatibleNavigatorViewController:responder];
  if (v6)
  {
    [v6 registerActionBindingTransition:responder];
  }
}

- (void)unload
{
  v3 = [(OKActionBindingTransition *)self _compatibleNavigatorViewController:[(OKActionBindingProxy *)self actionResponder]];
  if (v3)
  {
    [v3 unregisterActionBindingTransition:{-[OKActionBindingProxy actionResponder](self, "actionResponder")}];
  }

  v4.receiver = self;
  v4.super_class = OKActionBindingTransition;
  [(OKActionBindingProxy *)&v4 unload];
}

@end