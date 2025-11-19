@interface _VOSProfileSecondaryCommand
+ (id)profileSecondaryCommandWithCommand:(id)a3 context:(unint64_t)a4 pressCount:(unint64_t)a5;
+ (id)profileSecondaryCommandWithStringValue:(id)a3 context:(unint64_t)a4 pressCount:(unint64_t)a5;
- (_VOSProfileCommand)primaryProfileCommand;
- (_VOSProfileSecondaryCommand)initWithCoder:(id)a3;
- (id)_initWithCommand:(id)a3 context:(unint64_t)a4 pressCount:(unint64_t)a5;
- (id)description;
- (unint64_t)pressCount;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _VOSProfileSecondaryCommand

+ (id)profileSecondaryCommandWithCommand:(id)a3 context:(unint64_t)a4 pressCount:(unint64_t)a5
{
  v7 = a3;
  v8 = [[_VOSProfileSecondaryCommand alloc] _initWithCommand:v7 context:a4 pressCount:a5];

  return v8;
}

+ (id)profileSecondaryCommandWithStringValue:(id)a3 context:(unint64_t)a4 pressCount:(unint64_t)a5
{
  v8 = [VOSCommand builtInCommandWithStringValue:a3];
  if (v8)
  {
    v9 = [a1 profileSecondaryCommandWithCommand:v8 context:a4 pressCount:a5];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_initWithCommand:(id)a3 context:(unint64_t)a4 pressCount:(unint64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = _VOSProfileSecondaryCommand;
  v10 = [(_VOSProfileSecondaryCommand *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_command, a3);
    v11->_context = a4;
    v11->_pressCount = a5;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_VOSProfileSecondaryCommand *)self command];
  v7 = [v3 stringWithFormat:@"%@<%p>: cmd '%@' context: '%d' pressCount: '%d'", v5, self, v6, -[_VOSProfileSecondaryCommand context](self, "context"), -[_VOSProfileSecondaryCommand pressCount](self, "pressCount")];

  return v7;
}

- (_VOSProfileSecondaryCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"commandType"];
  if (v5 == 1)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"siriShortcut"];
    v7 = [VOSCommand commandWithSiriShortcut:v6];
  }

  else
  {
    if (v5)
    {
LABEL_6:
      v8 = +[VOSCommand Invalid];
      goto LABEL_7;
    }

    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"command"];
    v7 = [VOSCommand builtInCommandWithStringValue:v6];
  }

  v8 = v7;

  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_7:
  v9 = -[_VOSProfileSecondaryCommand _initWithCommand:context:pressCount:](self, "_initWithCommand:context:pressCount:", v8, [v4 decodeIntegerForKey:@"context"], objc_msgSend(v4, "decodeIntegerForKey:", @"pressCount"));

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [v7 encodeInteger:-[VOSCommand commandType](self->_command forKey:{"commandType"), @"commandType"}];
  v4 = [(VOSCommand *)self->_command commandType];
  if (v4 == 1)
  {
    v5 = [(VOSCommand *)self->_command siriShortcut];
    v6 = @"siriShortcut";
  }

  else
  {
    if (v4)
    {
      goto LABEL_6;
    }

    v5 = [(VOSCommand *)self->_command rawValue];
    v6 = @"command";
  }

  [v7 encodeObject:v5 forKey:v6];

LABEL_6:
  [v7 encodeInteger:-[_VOSProfileSecondaryCommand context](self forKey:{"context"), @"context"}];
  [v7 encodeInteger:-[_VOSProfileSecondaryCommand pressCount](self forKey:{"pressCount"), @"pressCount"}];
}

- (unint64_t)pressCount
{
  if (self->_pressCount <= 1)
  {
    return 1;
  }

  else
  {
    return self->_pressCount;
  }
}

- (_VOSProfileCommand)primaryProfileCommand
{
  WeakRetained = objc_loadWeakRetained(&self->_primaryProfileCommand);

  return WeakRetained;
}

@end