@interface SCROEvent
+ (id)brailleEvent;
- (id)initForHandlerType:(int)a3;
- (id)mainDictionary;
- (void)setMainDictionary:(id)a3;
@end

@implementation SCROEvent

+ (id)brailleEvent
{
  v2 = [objc_alloc(objc_opt_class()) initForHandlerType:1];

  return v2;
}

- (id)initForHandlerType:(int)a3
{
  result = [(SCROEvent *)self init];
  if (result)
  {
    *(result + 2) = a3;
  }

  return result;
}

- (void)setMainDictionary:(id)a3
{
  v4 = a3;
  self->_readOnly = 1;
  v9 = v4;
  v5 = [v4 objectForKey:&unk_287651C98];
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
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  callbacks = self->_callbacks;
  if (callbacks)
  {
    [v3 setObject:callbacks forKey:&unk_287651C98];
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