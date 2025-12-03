@interface _VOSProfileKeyChord
+ (id)profileKeyChordWithKeyChord:(id)chord;
+ (id)profileKeyChordWithStringValue:(id)value;
- (_VOSProfileCommand)command;
- (_VOSProfileKeyChord)initWithCoder:(id)coder;
- (id)_initWithKeyChord:(id)chord;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _VOSProfileKeyChord

+ (id)profileKeyChordWithKeyChord:(id)chord
{
  chordCopy = chord;
  v4 = [[_VOSProfileKeyChord alloc] _initWithKeyChord:chordCopy];

  return v4;
}

+ (id)profileKeyChordWithStringValue:(id)value
{
  v4 = [MEMORY[0x277CE7638] keyChordWithString:value];
  if (v4)
  {
    v5 = [self profileKeyChordWithKeyChord:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_initWithKeyChord:(id)chord
{
  chordCopy = chord;
  v9.receiver = self;
  v9.super_class = _VOSProfileKeyChord;
  v6 = [(_VOSProfileKeyChord *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keyChord, chord);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  keyChord = [(_VOSProfileKeyChord *)self keyChord];
  displayValue = [keyChord displayValue];
  v8 = [v3 stringWithFormat:@"%@<%p>: keys '%@'", v5, self, displayValue];

  return v8;
}

- (_VOSProfileKeyChord)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"keyChord"];

  v9 = [MEMORY[0x277CE7638] keyChordWithKeys:v8];
  v10 = [(_VOSProfileKeyChord *)self _initWithKeyChord:v9];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  keyChord = self->_keyChord;
  coderCopy = coder;
  keys = [(AXSSKeyChord *)keyChord keys];
  [coderCopy encodeObject:keys forKey:@"keyChord"];
}

- (_VOSProfileCommand)command
{
  WeakRetained = objc_loadWeakRetained(&self->_command);

  return WeakRetained;
}

@end