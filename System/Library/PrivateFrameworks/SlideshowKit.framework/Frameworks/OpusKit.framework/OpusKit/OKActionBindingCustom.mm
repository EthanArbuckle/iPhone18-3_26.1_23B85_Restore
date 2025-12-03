@interface OKActionBindingCustom
+ (id)supportedSettings;
- (BOOL)respondsToAction:(id)action isTouchCountAgnostic:(BOOL)agnostic;
- (OKActionBindingCustom)init;
- (OKActionBindingCustom)initWithSettings:(id)settings;
- (void)dealloc;
- (void)loadForResponder:(id)responder scope:(unint64_t)scope;
- (void)unload;
@end

@implementation OKActionBindingCustom

- (OKActionBindingCustom)init
{
  v3.receiver = self;
  v3.super_class = OKActionBindingCustom;
  result = [(OKActionBinding *)&v3 init];
  if (result)
  {
    result->_name = 0;
  }

  return result;
}

- (OKActionBindingCustom)initWithSettings:(id)settings
{
  v7.receiver = self;
  v7.super_class = OKActionBindingCustom;
  v4 = [(OKActionBinding *)&v7 initWithSettings:?];
  if (v4)
  {
    v5 = [settings objectForKey:@"name"];
    if (v5)
    {
      v4->_name = [v5 copy];
    }
  }

  return v4;
}

- (void)dealloc
{
  name = self->_name;
  if (name)
  {

    self->_name = 0;
  }

  v4.receiver = self;
  v4.super_class = OKActionBindingCustom;
  [(OKActionBinding *)&v4 dealloc];
}

+ (id)supportedSettings
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___OKActionBindingCustom;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v4, sel_supportedSettings)}];
  v7 = @"name";
  v5[0] = @"type";
  v5[1] = @"default";
  v6[0] = &unk_287AF0110;
  v6[1] = [MEMORY[0x277CBEB68] null];
  v8[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v8, &v7, 1)}];
  return v2;
}

- (void)loadForResponder:(id)responder scope:(unint64_t)scope
{
  v4.receiver = self;
  v4.super_class = OKActionBindingCustom;
  [(OKActionBindingProxy *)&v4 loadForResponder:responder scope:scope];
}

- (void)unload
{
  v2.receiver = self;
  v2.super_class = OKActionBindingCustom;
  [(OKActionBindingProxy *)&v2 unload];
}

- (BOOL)respondsToAction:(id)action isTouchCountAgnostic:(BOOL)agnostic
{
  v6 = [(OKActionBindingProxy *)self scope:action];
  if (([action scope] & v6) == 0)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  name = [action name];
  name = self->_name;

  return [name isEqualToString:name];
}

@end