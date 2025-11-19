@interface _VOSProfileKeyChord
+ (id)profileKeyChordWithKeyChord:(id)a3;
+ (id)profileKeyChordWithStringValue:(id)a3;
- (_VOSProfileCommand)command;
- (_VOSProfileKeyChord)initWithCoder:(id)a3;
- (id)_initWithKeyChord:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _VOSProfileKeyChord

+ (id)profileKeyChordWithKeyChord:(id)a3
{
  v3 = a3;
  v4 = [[_VOSProfileKeyChord alloc] _initWithKeyChord:v3];

  return v4;
}

+ (id)profileKeyChordWithStringValue:(id)a3
{
  v4 = [MEMORY[0x277CE7638] keyChordWithString:a3];
  if (v4)
  {
    v5 = [a1 profileKeyChordWithKeyChord:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_initWithKeyChord:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _VOSProfileKeyChord;
  v6 = [(_VOSProfileKeyChord *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keyChord, a3);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_VOSProfileKeyChord *)self keyChord];
  v7 = [v6 displayValue];
  v8 = [v3 stringWithFormat:@"%@<%p>: keys '%@'", v5, self, v7];

  return v8;
}

- (_VOSProfileKeyChord)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"keyChord"];

  v9 = [MEMORY[0x277CE7638] keyChordWithKeys:v8];
  v10 = [(_VOSProfileKeyChord *)self _initWithKeyChord:v9];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  keyChord = self->_keyChord;
  v4 = a3;
  v5 = [(AXSSKeyChord *)keyChord keys];
  [v4 encodeObject:v5 forKey:@"keyChord"];
}

- (_VOSProfileCommand)command
{
  WeakRetained = objc_loadWeakRetained(&self->_command);

  return WeakRetained;
}

@end