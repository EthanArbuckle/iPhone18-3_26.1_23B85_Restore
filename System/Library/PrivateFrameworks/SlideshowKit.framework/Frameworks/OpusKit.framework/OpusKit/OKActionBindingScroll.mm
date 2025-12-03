@interface OKActionBindingScroll
+ (id)supportedSettings;
- (BOOL)respondsToAction:(id)action isTouchCountAgnostic:(BOOL)agnostic;
- (CGPoint)offset;
- (OKActionBindingScroll)init;
- (OKActionBindingScroll)initWithSettings:(id)settings;
- (id)copyWithZone:(_NSZone *)zone;
- (void)loadForResponder:(id)responder scope:(unint64_t)scope;
- (void)unload;
@end

@implementation OKActionBindingScroll

- (OKActionBindingScroll)init
{
  v5.receiver = self;
  v5.super_class = OKActionBindingScroll;
  v2 = [(OKActionBinding *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(OKActionBindingScroll *)v2 setOffset:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
    v3->_continuous = 1;
    v3->_triggerLimit = -1;
    v3->_probability = 100;
  }

  return v3;
}

- (OKActionBindingScroll)initWithSettings:(id)settings
{
  v9.receiver = self;
  v9.super_class = OKActionBindingScroll;
  v4 = [(OKActionBinding *)&v9 initWithSettings:?];
  if (v4)
  {
    v5 = [settings objectForKey:@"offset"];
    if (v5)
    {
      [v5 CGPointValue];
      [(OKActionBindingScroll *)v4 setOffset:?];
      v4->_continuous = 0;
    }

    v6 = [settings objectForKey:@"triggerLimit"];
    if (v6)
    {
      v4->_triggerLimit = [v6 intValue];
    }

    v7 = [settings objectForKey:@"probability"];
    if (v7)
    {
      v4->_probability = [v7 intValue];
    }
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = OKActionBindingScroll;
  v4 = [(OKActionBindingProxy *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setOffset:{self->_offset.x, self->_offset.y}];
  }

  return v5;
}

- (void)unload
{
  [(OKActionBindingProxy *)self actionResponder];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  actionResponder = [(OKActionBindingProxy *)self actionResponder];
  if (isKindOfClass)
  {
    pageViewController = [(OKActionResponder *)actionResponder pageViewController];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    pageViewController = [(OKActionBindingProxy *)self actionResponder];
  }

  navigatorViewController = [(OKActionResponder *)pageViewController navigatorViewController];
  if (navigatorViewController)
  {
    [navigatorViewController removeRegisteredObject:-[OKActionBindingProxy actionResponder](self forActionAtOffset:"actionResponder") continuous:{self->_continuous, self->_offset.x, self->_offset.y}];
  }

LABEL_7:
  v7.receiver = self;
  v7.super_class = OKActionBindingScroll;
  [(OKActionBindingProxy *)&v7 unload];
}

+ (id)supportedSettings
{
  v12[3] = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___OKActionBindingScroll;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v4, sel_supportedSettings)}];
  v11[0] = @"offset";
  v9 = @"type";
  v10 = &unk_287AF08C0;
  v12[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v11[1] = @"triggerLimit";
  v7 = @"type";
  v8 = &unk_287AF08D8;
  v12[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v11[2] = @"probability";
  v5 = @"type";
  v6 = &unk_287AF08D8;
  v12[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v12, v11, 3)}];
  return v2;
}

- (void)loadForResponder:(id)responder scope:(unint64_t)scope
{
  v9.receiver = self;
  v9.super_class = OKActionBindingScroll;
  [(OKActionBindingProxy *)&v9 loadForResponder:responder scope:scope];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    responderCopy = [responder pageViewController];
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    responderCopy = responder;
    if ((isKindOfClass & 1) == 0)
    {
      return;
    }
  }

  navigatorViewController = [responderCopy navigatorViewController];
  if (navigatorViewController)
  {
    if (self->_continuous)
    {
      [navigatorViewController registerObjectOnScrollingEvent:responder];
    }

    else
    {
      [navigatorViewController registerObject:responder forActionAtOffset:self->_probability probability:self->_triggerLimit andLimit:{self->_offset.x, self->_offset.y}];
    }
  }
}

- (BOOL)respondsToAction:(id)action isTouchCountAgnostic:(BOOL)agnostic
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if (!self->_continuous)
  {
    [action location];
    v8 = v7;
    v10 = v9;
    [(OKActionBindingScroll *)self offset];
    return v8 == v12 && v10 == v11;
  }

  v6 = 1;
  [action setShouldPropagate:1];
  return v6;
}

- (CGPoint)offset
{
  x = self->_offset.x;
  y = self->_offset.y;
  result.y = y;
  result.x = x;
  return result;
}

@end