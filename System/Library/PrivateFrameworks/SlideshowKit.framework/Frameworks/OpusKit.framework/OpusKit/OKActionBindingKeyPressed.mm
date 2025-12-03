@interface OKActionBindingKeyPressed
+ (id)supportedSettings;
- (BOOL)respondsToAction:(id)action isTouchCountAgnostic:(BOOL)agnostic;
- (OKActionBindingKeyPressed)init;
- (OKActionBindingKeyPressed)initWithSettings:(id)settings;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)setSettingKeyPressed:(id)pressed;
@end

@implementation OKActionBindingKeyPressed

- (BOOL)respondsToAction:(id)action isTouchCountAgnostic:(BOOL)agnostic
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!self->_keyPressed)
    {
      goto LABEL_6;
    }

    if ([objc_msgSend(action "keyPressed")])
    {
      isKeyUp = self->_isKeyUp;
      if (isKeyUp == [action isKeyUp])
      {
        return 1;
      }
    }

    if (!self->_keyPressed)
    {
LABEL_6:
      v7 = self->_isKeyUp;
      if (v7 == [action isKeyUp])
      {
        return 1;
      }
    }
  }

  return 0;
}

- (OKActionBindingKeyPressed)init
{
  v3.receiver = self;
  v3.super_class = OKActionBindingKeyPressed;
  result = [(OKActionBinding *)&v3 init];
  if (result)
  {
    result->_keyPressed = 0;
    result->_isKeyUp = 0;
  }

  return result;
}

- (OKActionBindingKeyPressed)initWithSettings:(id)settings
{
  v11.receiver = self;
  v11.super_class = OKActionBindingKeyPressed;
  v4 = [(OKActionBinding *)&v11 initWithSettings:?];
  if (v4)
  {
    v5 = [settings objectForKey:@"keyPressed"];
    if (v5)
    {
      v6 = v5;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        keyPressed = v4->_keyPressed;
        if (keyPressed)
        {

          v4->_keyPressed = 0;
        }

        v4->_keyPressed = [v6 copy];
      }
    }

    v8 = [settings objectForKey:@"isKeyUp"];
    if (v8)
    {
      v9 = v8;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v4->_isKeyUp = [v9 BOOLValue];
      }
    }
  }

  return v4;
}

- (void)dealloc
{
  keyPressed = self->_keyPressed;
  if (keyPressed)
  {

    self->_keyPressed = 0;
  }

  v4.receiver = self;
  v4.super_class = OKActionBindingKeyPressed;
  [(OKActionBinding *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = OKActionBindingKeyPressed;
  v4 = [(OKActionBindingProxy *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    [v4 setKeyPressed:self->_keyPressed];
    [v5 setIsKeyUp:self->_isKeyUp];
  }

  return v5;
}

+ (id)supportedSettings
{
  v10[2] = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___OKActionBindingKeyPressed;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v4, sel_supportedSettings)}];
  v9[0] = @"keyPressed";
  v7 = @"type";
  v8 = &unk_287AF1928;
  v10[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v9[1] = @"isKeyUp";
  v5 = @"type";
  v6 = &unk_287AF1940;
  v10[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v10, v9, 2)}];
  return v2;
}

- (void)setSettingKeyPressed:(id)pressed
{
  keyPressed = self->_keyPressed;
  if (keyPressed)
  {
  }

  self->_keyPressed = pressed;
}

@end