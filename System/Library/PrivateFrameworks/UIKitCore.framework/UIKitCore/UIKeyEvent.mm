@interface UIKeyEvent
+ (id)stringFromKeyEventType:(int64_t)type;
+ (int64_t)modifierFlagsFromWebFlags:(unsigned int)flags;
+ (int64_t)typeFromWebEventType:(int)type;
- (UIKeyEvent)initWithWebEvent:(id)event;
- (id)copyWithUpdatedKeyEventType:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation UIKeyEvent

- (UIKeyEvent)initWithWebEvent:(id)event
{
  eventCopy = event;
  v15.receiver = self;
  v15.super_class = UIKeyEvent;
  v6 = [(UIKeyEvent *)&v15 init];
  if (v6)
  {
    v6->_type = [objc_opt_class() typeFromWebEventType:{objc_msgSend(eventCopy, "type")}];
    characters = [eventCopy characters];
    characters = v6->_characters;
    v6->_characters = characters;

    charactersIgnoringModifiers = [eventCopy charactersIgnoringModifiers];
    charactersIgnoringModifiers = v6->_charactersIgnoringModifiers;
    v6->_charactersIgnoringModifiers = charactersIgnoringModifiers;

    v6->_keyRepeating = [eventCopy isKeyRepeating];
    v6->_keyCode = [eventCopy keyCode];
    [eventCopy timestamp];
    v6->_timestamp = v11;
    v6->_modifierFlags = [objc_opt_class() modifierFlagsFromWebFlags:{objc_msgSend(eventCopy, "modifierFlags")}];
    objc_storeStrong(&v6->_webEvent, event);
    inputManagerHint = [eventCopy inputManagerHint];
    inputManagerHint = v6->_inputManagerHint;
    v6->_inputManagerHint = inputManagerHint;

    v6->_inputFlags = [eventCopy keyboardFlags];
  }

  return v6;
}

- (id)copyWithUpdatedKeyEventType:(int64_t)type
{
  if ((type - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIKeyEvent.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"type == UIKeyEventKeyDown || type == UIKeyEventKeyUp"}];
  }

  v5 = [(UIKeyEvent *)self copy];
  [v5 setType:type];
  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(UIKeyEvent);
  characters = [(UIKeyEvent *)self characters];
  v6 = [characters copy];
  [(UIKeyEvent *)v4 setCharacters:v6];

  charactersIgnoringModifiers = [(UIKeyEvent *)self charactersIgnoringModifiers];
  v8 = [charactersIgnoringModifiers copy];
  [(UIKeyEvent *)v4 setCharactersIgnoringModifiers:v8];

  [(UIKeyEvent *)v4 setType:[(UIKeyEvent *)self type]];
  [(UIKeyEvent *)v4 setKeyRepeating:[(UIKeyEvent *)self isKeyRepeating]];
  [(UIKeyEvent *)v4 setKeyCode:[(UIKeyEvent *)self keyCode]];
  [(UIKeyEvent *)self timestamp];
  [(UIKeyEvent *)v4 setTimestamp:?];
  [(UIKeyEvent *)v4 setModifierFlags:[(UIKeyEvent *)self modifierFlags]];
  webEvent = [(UIKeyEvent *)self webEvent];
  [(UIKeyEvent *)v4 setWebEvent:webEvent];

  [(UIKeyEvent *)v4 setInputFlags:[(UIKeyEvent *)self inputFlags]];
  inputManagerHint = [(UIKeyEvent *)self inputManagerHint];
  v11 = [inputManagerHint copy];
  [(UIKeyEvent *)v4 setInputManagerHint:v11];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  characters = [(UIKeyEvent *)self characters];
  charactersIgnoringModifiers = [(UIKeyEvent *)self charactersIgnoringModifiers];
  v8 = [objc_opt_class() stringFromKeyEventType:{-[UIKeyEvent type](self, "type")}];
  isKeyRepeating = [(UIKeyEvent *)self isKeyRepeating];
  keyCode = [(UIKeyEvent *)self keyCode];
  [(UIKeyEvent *)self timestamp];
  v12 = [v3 stringWithFormat:@"<%@: %p chars: %@, charsIgnoringModifiers: %@, type: %@, repeating: %d, keyCode: 0x%.4lX, timestamp: %lf, modifierFlags: %lX>", v5, self, characters, charactersIgnoringModifiers, v8, isKeyRepeating, keyCode, v11, -[UIKeyEvent modifierFlags](self, "modifierFlags")];

  return v12;
}

+ (id)stringFromKeyEventType:(int64_t)type
{
  if (type == 1)
  {
    return @"KeyDown";
  }

  else
  {
    return @"KeyUp";
  }
}

+ (int64_t)typeFromWebEventType:(int)type
{
  if (type == 5)
  {
    return 2;
  }

  else
  {
    return type == 4;
  }
}

+ (int64_t)modifierFlagsFromWebFlags:(unsigned int)flags
{
  if ((flags & 0x220000) != 0)
  {
    v3 = (((flags & 0x1010000) != 0) << 20) | 0x20000;
  }

  else
  {
    v3 = ((flags & 0x1010000) != 0) << 20;
  }

  if ((flags & 0x480000) != 0)
  {
    v3 |= 0x80000uLL;
  }

  if ((flags & 0x900000) != 0)
  {
    v3 |= 0x40000uLL;
  }

  return v3 | (flags >> 2) & 0x10000;
}

@end