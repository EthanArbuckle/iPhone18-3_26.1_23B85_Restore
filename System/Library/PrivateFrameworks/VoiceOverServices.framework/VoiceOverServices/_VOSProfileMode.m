@interface _VOSProfileMode
+ (_VOSProfileMode)profileModeWithStringValue:(id)a3;
+ (id)profileModeWitMode:(id)a3;
- (_VOSProfileMode)initWithCoder:(id)a3;
- (id)_initWithMode:(id)a3 commands:(id)a4;
- (id)description;
- (void)addCommand:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _VOSProfileMode

+ (id)profileModeWitMode:(id)a3
{
  v3 = a3;
  v4 = [[_VOSProfileMode alloc] _initWithMode:v3 commands:0];

  return v4;
}

+ (_VOSProfileMode)profileModeWithStringValue:(id)a3
{
  v4 = [VOSScreenreaderMode modeWithStringValue:a3];
  if (v4)
  {
    v5 = [a1 profileModeWitMode:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_initWithMode:(id)a3 commands:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v24.receiver = self;
  v24.super_class = _VOSProfileMode;
  v9 = [(_VOSProfileMode *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mode, a3);
    if (v8)
    {
      v11 = v8;
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
    v13 = v8;
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
  v6 = [(_VOSProfileMode *)self mode];
  v7 = [v6 rawValue];
  v8 = [v3 stringWithFormat:@"%@<%p>: rawValue '%@'", v5, self, v7];

  return v8;
}

- (_VOSProfileMode)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mode"];
  v6 = [VOSScreenreaderMode modeWithStringValue:v5];
  if (!v6)
  {
    v6 = +[VOSScreenreaderMode Invalid];
  }

  v7 = MEMORY[0x277CBEB98];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"commands"];

  v11 = [(_VOSProfileMode *)self _initWithMode:v6 commands:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  mode = self->_mode;
  v6 = a3;
  v5 = [(VOSScreenreaderMode *)mode rawValue];
  [v6 encodeObject:v5 forKey:@"mode"];

  [v6 encodeObject:self->_commands forKey:@"commands"];
}

- (void)addCommand:(id)a3
{
  commands = self->_commands;
  v5 = a3;
  [(NSMutableSet *)commands addObject:v5];
  [v5 setMode:self];
}

@end