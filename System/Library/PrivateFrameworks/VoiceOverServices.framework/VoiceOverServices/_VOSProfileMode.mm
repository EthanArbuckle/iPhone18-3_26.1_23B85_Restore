@interface _VOSProfileMode
+ (_VOSProfileMode)profileModeWithStringValue:(id)value;
+ (id)profileModeWitMode:(id)mode;
- (_VOSProfileMode)initWithCoder:(id)coder;
- (id)_initWithMode:(id)mode commands:(id)commands;
- (id)description;
- (void)addCommand:(id)command;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _VOSProfileMode

+ (id)profileModeWitMode:(id)mode
{
  modeCopy = mode;
  v4 = [[_VOSProfileMode alloc] _initWithMode:modeCopy commands:0];

  return v4;
}

+ (_VOSProfileMode)profileModeWithStringValue:(id)value
{
  v4 = [VOSScreenreaderMode modeWithStringValue:value];
  if (v4)
  {
    v5 = [self profileModeWitMode:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_initWithMode:(id)mode commands:(id)commands
{
  v26 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  commandsCopy = commands;
  v24.receiver = self;
  v24.super_class = _VOSProfileMode;
  v9 = [(_VOSProfileMode *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mode, mode);
    if (commandsCopy)
    {
      v11 = commandsCopy;
    }

    else
    {
      v11 = [MEMORY[0x277CBEB58] set];
    }

    commands = v10->_commands;
    v10->_commands = v11;

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = commandsCopy;
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v20 + 1) + 8 * v17++) setMode:{v10, v20}];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v15);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  mode = [(_VOSProfileMode *)self mode];
  rawValue = [mode rawValue];
  v8 = [v3 stringWithFormat:@"%@<%p>: rawValue '%@'", v5, self, rawValue];

  return v8;
}

- (_VOSProfileMode)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mode"];
  v6 = [VOSScreenreaderMode modeWithStringValue:v5];
  if (!v6)
  {
    v6 = +[VOSScreenreaderMode Invalid];
  }

  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"commands"];

  v11 = [(_VOSProfileMode *)self _initWithMode:v6 commands:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  mode = self->_mode;
  coderCopy = coder;
  rawValue = [(VOSScreenreaderMode *)mode rawValue];
  [coderCopy encodeObject:rawValue forKey:@"mode"];

  [coderCopy encodeObject:self->_commands forKey:@"commands"];
}

- (void)addCommand:(id)command
{
  commands = self->_commands;
  commandCopy = command;
  [(NSMutableSet *)commands addObject:commandCopy];
  [commandCopy setMode:self];
}

@end