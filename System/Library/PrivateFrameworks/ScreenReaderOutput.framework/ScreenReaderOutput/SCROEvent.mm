@interface SCROEvent
+ (id)brailleEvent;
- (id)initForHandlerType:(int)type;
- (id)mainDictionary;
- (void)setMainDictionary:(id)dictionary;
@end

@implementation SCROEvent

+ (id)brailleEvent
{
  v2 = [objc_alloc(objc_opt_class()) initForHandlerType:1];

  return v2;
}

- (id)initForHandlerType:(int)type
{
  result = [(SCROEvent *)self init];
  if (result)
  {
    *(result + 2) = type;
  }

  return result;
}

- (void)setMainDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  self->_readOnly = 1;
  v9 = dictionaryCopy;
  v5 = [dictionaryCopy objectForKey:&unk_287651C98];
  if (v5)
  {
    objc_storeStrong(&self->_callbacks, v5);
  }

  v6 = [v9 objectForKey:&unk_287651CB0];

  if (v6)
  {
    objc_storeStrong(&self->_setDictionary, v6);
  }

  v7 = [v9 objectForKey:&unk_287651CC8];

  if (v7)
  {
    objc_storeStrong(&self->_getDictionary, v7);
  }

  v8 = [v9 objectForKey:&unk_287651CE0];

  if (v8)
  {
    objc_storeStrong(&self->_actions, v8);
  }
}

- (id)mainDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  callbacks = self->_callbacks;
  if (callbacks)
  {
    [dictionary setObject:callbacks forKey:&unk_287651C98];
  }

  setDictionary = self->_setDictionary;
  if (setDictionary)
  {
    [v4 setObject:setDictionary forKey:&unk_287651CB0];
  }

  getDictionary = self->_getDictionary;
  if (getDictionary)
  {
    [v4 setObject:getDictionary forKey:&unk_287651CC8];
  }

  actions = self->_actions;
  if (actions)
  {
    [v4 setObject:actions forKey:&unk_287651CE0];
  }

  return v4;
}

@end