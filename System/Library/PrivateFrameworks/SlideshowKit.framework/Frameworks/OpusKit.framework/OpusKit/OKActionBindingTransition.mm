@interface OKActionBindingTransition
+ (id)supportedSettings;
- (OKActionBindingTransition)init;
- (OKActionBindingTransition)initWithSettings:(id)a3;
- (id)_compatibleNavigatorViewController:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)loadForResponder:(id)a3 scope:(unint64_t)a4;
- (void)unload;
@end

@implementation OKActionBindingTransition

- (OKActionBindingTransition)init
{
  v3.receiver = self;
  v3.super_class = OKActionBindingTransition;
  return [(OKActionBinding *)&v3 init];
}

- (OKActionBindingTransition)initWithSettings:(id)a3
{
  v4.receiver = self;
  v4.super_class = OKActionBindingTransition;
  return [(OKActionBinding *)&v4 initWithSettings:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = OKActionBindingTransition;
  return [(OKActionBindingProxy *)&v4 copyWithZone:a3];
}

+ (id)supportedSettings
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___OKActionBindingTransition;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v4, sel_supportedSettings)}];
  [v2 addEntriesFromDictionary:MEMORY[0x277CBEC10]];
  return v2;
}

- (id)_compatibleNavigatorViewController:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    a3 = [a3 pageViewController];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  v4 = [a3 navigatorViewController];
  if ([v4 conformsToProtocol:&unk_287B1AAB0])
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (void)loadForResponder:(id)a3 scope:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = OKActionBindingTransition;
  [(OKActionBindingProxy *)&v7 loadForResponder:a3 scope:a4];
  v6 = [(OKActionBindingTransition *)self _compatibleNavigatorViewController:a3];
  if (v6)
  {
    [v6 registerActionBindingTransition:a3];
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