@interface UIKeyEvent
+ (id)stringFromKeyEventType:(int64_t)a3;
+ (int64_t)modifierFlagsFromWebFlags:(unsigned int)a3;
+ (int64_t)typeFromWebEventType:(int)a3;
- (UIKeyEvent)initWithWebEvent:(id)a3;
- (id)copyWithUpdatedKeyEventType:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation UIKeyEvent

- (UIKeyEvent)initWithWebEvent:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = UIKeyEvent;
  v6 = [(UIKeyEvent *)&v15 init];
  if (v6)
  {
    v6->_type = [objc_opt_class() typeFromWebEventType:{objc_msgSend(v5, "type")}];
    v7 = [v5 characters];
    characters = v6->_characters;
    v6->_characters = v7;

    v9 = [v5 charactersIgnoringModifiers];
    charactersIgnoringModifiers = v6->_charactersIgnoringModifiers;
    v6->_charactersIgnoringModifiers = v9;

    v6->_keyRepeating = [v5 isKeyRepeating];
    v6->_keyCode = [v5 keyCode];
    [v5 timestamp];
    v6->_timestamp = v11;
    v6->_modifierFlags = [objc_opt_class() modifierFlagsFromWebFlags:{objc_msgSend(v5, "modifierFlags")}];
    objc_storeStrong(&v6->_webEvent, a3);
    v12 = [v5 inputManagerHint];
    inputManagerHint = v6->_inputManagerHint;
    v6->_inputManagerHint = v12;

    v6->_inputFlags = [v5 keyboardFlags];
  }

  return v6;
}

- (id)copyWithUpdatedKeyEventType:(int64_t)a3
{
  if ((a3 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"UIKeyEvent.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"type == UIKeyEventKeyDown || type == UIKeyEventKeyUp"}];
  }

  v5 = [(UIKeyEvent *)self copy];
  [v5 setType:a3];
  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(UIKeyEvent);
  v5 = [(UIKeyEvent *)self characters];
  v6 = [v5 copy];
  [(UIKeyEvent *)v4 setCharacters:v6];

  v7 = [(UIKeyEvent *)self charactersIgnoringModifiers];
  v8 = [v7 copy];
  [(UIKeyEvent *)v4 setCharactersIgnoringModifiers:v8];

  [(UIKeyEvent *)v4 setType:[(UIKeyEvent *)self type]];
  [(UIKeyEvent *)v4 setKeyRepeating:[(UIKeyEvent *)self isKeyRepeating]];
  [(UIKeyEvent *)v4 setKeyCode:[(UIKeyEvent *)self keyCode]];
  [(UIKeyEvent *)self timestamp];
  [(UIKeyEvent *)v4 setTimestamp:?];
  [(UIKeyEvent *)v4 setModifierFlags:[(UIKeyEvent *)self modifierFlags]];
  v9 = [(UIKeyEvent *)self webEvent];
  [(UIKeyEvent *)v4 setWebEvent:v9];

  [(UIKeyEvent *)v4 setInputFlags:[(UIKeyEvent *)self inputFlags]];
  v10 = [(UIKeyEvent *)self inputManagerHint];
  v11 = [v10 copy];
  [(UIKeyEvent *)v4 setInputManagerHint:v11];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(UIKeyEvent *)self characters];
  v7 = [(UIKeyEvent *)self charactersIgnoringModifiers];
  v8 = [objc_opt_class() stringFromKeyEventType:{-[UIKeyEvent type](self, "type")}];
  v9 = [(UIKeyEvent *)self isKeyRepeating];
  v10 = [(UIKeyEvent *)self keyCode];
  [(UIKeyEvent *)self timestamp];
  v12 = [v3 stringWithFormat:@"<%@: %p chars: %@, charsIgnoringModifiers: %@, type: %@, repeating: %d, keyCode: 0x%.4lX, timestamp: %lf, modifierFlags: %lX>", v5, self, v6, v7, v8, v9, v10, v11, -[UIKeyEvent modifierFlags](self, "modifierFlags")];

  return v12;
}

+ (id)stringFromKeyEventType:(int64_t)a3
{
  if (a3 == 1)
  {
    return @"KeyDown";
  }

  else
  {
    return @"KeyUp";
  }
}

+ (int64_t)typeFromWebEventType:(int)a3
{
  if (a3 == 5)
  {
    return 2;
  }

  else
  {
    return a3 == 4;
  }
}

+ (int64_t)modifierFlagsFromWebFlags:(unsigned int)a3
{
  if ((a3 & 0x220000) != 0)
  {
    v3 = (((a3 & 0x1010000) != 0) << 20) | 0x20000;
  }

  else
  {
    v3 = ((a3 & 0x1010000) != 0) << 20;
  }

  if ((a3 & 0x480000) != 0)
  {
    v3 |= 0x80000uLL;
  }

  if ((a3 & 0x900000) != 0)
  {
    v3 |= 0x40000uLL;
  }

  return v3 | (a3 >> 2) & 0x10000;
}

@end