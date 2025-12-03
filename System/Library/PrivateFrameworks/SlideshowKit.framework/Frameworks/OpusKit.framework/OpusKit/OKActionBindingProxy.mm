@interface OKActionBindingProxy
+ (id)actionBinding;
+ (id)actionBindingWithGestureRecognizer:(id)recognizer fromActionResponder:(id)responder;
+ (id)supportedSettings;
- (BOOL)performAction:(id)action;
- (BOOL)respondsToAction:(id)action isTouchCountAgnostic:(BOOL)agnostic;
- (CGPoint)locationForActionFromGesture:(id)gesture;
- (OKActionBindingProxy)init;
- (OKActionBindingProxy)initWithSettings:(id)settings;
- (SEL)selector;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)setSelector:(SEL)selector;
@end

@implementation OKActionBindingProxy

+ (id)actionBinding
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (OKActionBindingProxy)init
{
  v5.receiver = self;
  v5.super_class = OKActionBindingProxy;
  v2 = [(OKActionBindingProxy *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_name = 0;
    v2->_actionScript = 0;
    v2->_shouldRecognizeSimultaneously = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3->_alwaysRecognizeSimultaneously = 0;
    v3->_requireToFail = objc_alloc_init(MEMORY[0x277CBEB18]);
    v3->_canBeTriggeredWithoutInteractivity = 0;
    objc_storeWeak(&v3->_target, 0);
    v3->_selector = 0;
    objc_storeWeak(&v3->_actionResponder, 0);
    v3->_tag = 0;
    [objc_msgSend(+[OKProducerManager defaultManager](OKProducerManager "defaultManager")];
  }

  return v3;
}

- (OKActionBindingProxy)initWithSettings:(id)settings
{
  v4 = [(OKActionBindingProxy *)self init];
  if (v4)
  {
    v5 = [settings objectForKey:@"actionScript"];
    if (v5)
    {
      v4->_actionScript = [v5 copy];
    }

    v6 = [settings objectForKey:@"shouldRecognizeSimultaneously"];
    if (v6)
    {
      -[NSMutableArray addObjectsFromArray:](v4->_shouldRecognizeSimultaneously, "addObjectsFromArray:", [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v6 copyItems:1]);
    }

    v7 = [settings objectForKey:@"alwaysRecognizeSimultaneously"];
    if (v7)
    {
      v4->_alwaysRecognizeSimultaneously = [v7 BOOLValue];
    }

    v8 = [settings objectForKey:@"requireToFail"];
    if (v8)
    {
      -[NSMutableArray addObjectsFromArray:](v4->_requireToFail, "addObjectsFromArray:", [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v8 copyItems:1]);
    }

    v9 = [settings objectForKey:@"canBeTriggeredWithoutInteractivity"];
    if (v9)
    {
      v4->_canBeTriggeredWithoutInteractivity = [v9 BOOLValue];
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

  actionScript = self->_actionScript;
  if (actionScript)
  {

    self->_actionScript = 0;
  }

  shouldRecognizeSimultaneously = self->_shouldRecognizeSimultaneously;
  if (shouldRecognizeSimultaneously)
  {

    self->_shouldRecognizeSimultaneously = 0;
  }

  requireToFail = self->_requireToFail;
  if (requireToFail)
  {

    self->_requireToFail = 0;
  }

  objc_storeWeak(&self->_target, 0);
  if (self->_selector)
  {
    self->_selector = 0;
  }

  objc_storeWeak(&self->_actionResponder, 0);
  [objc_msgSend(+[OKProducerManager defaultManager](OKProducerManager "defaultManager")];
  v7.receiver = self;
  v7.super_class = OKActionBindingProxy;
  [(OKActionBindingProxy *)&v7 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4;
  if (v4)
  {
    [v4 setName:self->_name];
    [v5 setShouldRecognizeSimultaneously:self->_shouldRecognizeSimultaneously];
    [v5 setRequireToFail:self->_requireToFail];
  }

  return v5;
}

- (BOOL)respondsToAction:(id)action isTouchCountAgnostic:(BOOL)agnostic
{
  if (*MEMORY[0x277D62808] >= 4)
  {
    v5 = MEMORY[0x277D627B8];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    [v5 logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Gestures/OKActionBinding.m" line:221 andFormat:@"%@ %@ MUST be subclassed and cannot be called directly from abstract class", v7, NSStringFromSelector(a2)];
  }

  return 0;
}

- (BOOL)performAction:(id)action
{
  v5 = [(OKActionResponder *)self->_actionResponder canPerformAction:?];
  if (v5)
  {
    if (self->_actionScript)
    {
      [(OKActionBindingProxy *)self prepareAction:action];
      actionResponder = self->_actionResponder;
      actionScript = self->_actionScript;

      LOBYTE(v5) = [(OKActionResponder *)actionResponder performActionScript:actionScript withAction:action];
    }

    else if (self->_target && self->_selector)
    {
      [(OKActionBindingProxy *)self prepareAction:action];
      if (self->_selector)
      {
        selector = self->_selector;
      }

      else
      {
        selector = 0;
      }

      [self->_target performSelector:selector withObject:action];
      LOBYTE(v5) = 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

+ (id)supportedSettings
{
  v13[4] = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v12[0] = @"actionScript";
  v10[0] = @"type";
  v10[1] = @"default";
  v11[0] = &unk_287AF1988;
  v11[1] = [MEMORY[0x277CBEB68] null];
  v13[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v12[1] = @"shouldRecognizeSimultaneously";
  v8[1] = @"default";
  v9[0] = &unk_287AF19A0;
  v8[0] = @"type";
  v9[1] = [MEMORY[0x277CBEB68] null];
  v13[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v12[2] = @"requireToFail";
  v6[1] = @"default";
  v7[0] = &unk_287AF19A0;
  v6[0] = @"type";
  v7[1] = [MEMORY[0x277CBEB68] null];
  v13[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v12[3] = @"canBeTriggeredWithoutInteractivity";
  v4[0] = @"type";
  v4[1] = @"default";
  v5[0] = &unk_287AF19B8;
  v5[1] = MEMORY[0x277CBEC28];
  v13[3] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  [dictionary addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v13, v12, 4)}];
  return dictionary;
}

+ (id)actionBindingWithGestureRecognizer:(id)recognizer fromActionResponder:(id)responder
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allActionBindings = [responder allActionBindings];
  v6 = [allActionBindings countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v13;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v13 != v8)
    {
      objc_enumerationMutation(allActionBindings);
    }

    v10 = *(*(&v12 + 1) + 8 * v9);
    if ([v10 ownsGestureRecognizer:recognizer])
    {
      return v10;
    }

    if (v7 == ++v9)
    {
      v7 = [allActionBindings countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (CGPoint)locationForActionFromGesture:(id)gesture
{
  v4 = [objc_msgSend(objc_msgSend(objc_msgSend(gesture "view")];

  [gesture locationInView:v4];
  result.y = v6;
  result.x = v5;
  return result;
}

- (SEL)selector
{
  if (self->_selector)
  {
    return self->_selector;
  }

  else
  {
    return 0;
  }
}

- (void)setSelector:(SEL)selector
{
  if (selector)
  {
    selectorCopy = selector;
  }

  else
  {
    selectorCopy = 0;
  }

  self->_selector = selectorCopy;
}

@end