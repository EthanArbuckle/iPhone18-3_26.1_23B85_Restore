@interface _VOSProfileSecondaryCommand
+ (id)profileSecondaryCommandWithCommand:(id)command context:(unint64_t)context pressCount:(unint64_t)count;
+ (id)profileSecondaryCommandWithStringValue:(id)value context:(unint64_t)context pressCount:(unint64_t)count;
- (_VOSProfileCommand)primaryProfileCommand;
- (_VOSProfileSecondaryCommand)initWithCoder:(id)coder;
- (id)_initWithCommand:(id)command context:(unint64_t)context pressCount:(unint64_t)count;
- (id)description;
- (unint64_t)pressCount;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _VOSProfileSecondaryCommand

+ (id)profileSecondaryCommandWithCommand:(id)command context:(unint64_t)context pressCount:(unint64_t)count
{
  commandCopy = command;
  v8 = [[_VOSProfileSecondaryCommand alloc] _initWithCommand:commandCopy context:context pressCount:count];

  return v8;
}

+ (id)profileSecondaryCommandWithStringValue:(id)value context:(unint64_t)context pressCount:(unint64_t)count
{
  v8 = [VOSCommand builtInCommandWithStringValue:value];
  if (v8)
  {
    v9 = [self profileSecondaryCommandWithCommand:v8 context:context pressCount:count];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_initWithCommand:(id)command context:(unint64_t)context pressCount:(unint64_t)count
{
  commandCopy = command;
  v13.receiver = self;
  v13.super_class = _VOSProfileSecondaryCommand;
  v10 = [(_VOSProfileSecondaryCommand *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_command, command);
    v11->_context = context;
    v11->_pressCount = count;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  command = [(_VOSProfileSecondaryCommand *)self command];
  v7 = [v3 stringWithFormat:@"%@<%p>: cmd '%@' context: '%d' pressCount: '%d'", v5, self, command, -[_VOSProfileSecondaryCommand context](self, "context"), -[_VOSProfileSecondaryCommand pressCount](self, "pressCount")];

  return v7;
}

- (_VOSProfileSecondaryCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"commandType"];
  if (v5 == 1)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"siriShortcut"];
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

    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"command"];
    v7 = [VOSCommand builtInCommandWithStringValue:v6];
  }

  v8 = v7;

  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_7:
  v9 = -[_VOSProfileSecondaryCommand _initWithCommand:context:pressCount:](self, "_initWithCommand:context:pressCount:", v8, [coderCopy decodeIntegerForKey:@"context"], objc_msgSend(coderCopy, "decodeIntegerForKey:", @"pressCount"));

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[VOSCommand commandType](self->_command forKey:{"commandType"), @"commandType"}];
  commandType = [(VOSCommand *)self->_command commandType];
  if (commandType == 1)
  {
    siriShortcut = [(VOSCommand *)self->_command siriShortcut];
    v6 = @"siriShortcut";
  }

  else
  {
    if (commandType)
    {
      goto LABEL_6;
    }

    siriShortcut = [(VOSCommand *)self->_command rawValue];
    v6 = @"command";
  }

  [coderCopy encodeObject:siriShortcut forKey:v6];

LABEL_6:
  [coderCopy encodeInteger:-[_VOSProfileSecondaryCommand context](self forKey:{"context"), @"context"}];
  [coderCopy encodeInteger:-[_VOSProfileSecondaryCommand pressCount](self forKey:{"pressCount"), @"pressCount"}];
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