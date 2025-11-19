@interface _VOSProfileCommand
+ (_VOSProfileCommand)profileCommandWithCommand:(id)a3;
+ (_VOSProfileCommand)profileCommandWithStringValue:(id)a3;
- (_VOSProfileCommand)initWithCoder:(id)a3;
- (_VOSProfileMode)mode;
- (id)_initWithCommand:(id)a3 gestures:(id)a4 keyboardShortcuts:(id)a5 quickNavShortcuts:(id)a6 secondaryCommands:(id)a7;
- (id)description;
- (id)profileGestureForGesture:(id)a3;
- (id)profileKeyboardShortcutForKeyChord:(id)a3;
- (id)profileQuickNavShortcutForKeyChord:(id)a3;
- (id)secondaryCommandsForPressCount:(int64_t)a3;
- (void)addGesture:(id)a3;
- (void)addKeyboardShortcut:(id)a3;
- (void)addQuickNavShortcut:(id)a3;
- (void)addSecondaryCommand:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)removeGesture:(id)a3;
- (void)removeKeyboardShortcut:(id)a3;
- (void)removeQuickNavShortcut:(id)a3;
- (void)removeSecondaryCommand:(id)a3;
@end

@implementation _VOSProfileCommand

+ (_VOSProfileCommand)profileCommandWithCommand:(id)a3
{
  v3 = a3;
  v4 = [[_VOSProfileCommand alloc] _initWithCommand:v3 gestures:0 keyboardShortcuts:0 quickNavShortcuts:0 secondaryCommands:0];

  return v4;
}

+ (_VOSProfileCommand)profileCommandWithStringValue:(id)a3
{
  v4 = [VOSCommand builtInCommandWithStringValue:a3];
  if (v4)
  {
    v5 = [a1 profileCommandWithCommand:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_initWithCommand:(id)a3 gestures:(id)a4 keyboardShortcuts:(id)a5 quickNavShortcuts:(id)a6 secondaryCommands:(id)a7
{
  v74 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v69.receiver = self;
  v69.super_class = _VOSProfileCommand;
  v18 = [(_VOSProfileCommand *)&v69 init];
  p_isa = &v18->super.isa;
  if (v18)
  {
    objc_storeStrong(&v18->_command, a3);
    if (v14)
    {
      v20 = v14;
    }

    else
    {
      v20 = [MEMORY[0x277CBEB58] set];
    }

    v21 = p_isa[2];
    p_isa[2] = v20;
    v52 = v13;

    if (v15)
    {
      v22 = v15;
    }

    else
    {
      v22 = [MEMORY[0x277CBEB58] set];
    }

    v23 = p_isa[3];
    p_isa[3] = v22;

    if (v16)
    {
      v24 = v16;
    }

    else
    {
      v24 = [MEMORY[0x277CBEB58] set];
    }

    v25 = p_isa[4];
    p_isa[4] = v24;

    v51 = v14;
    v26 = v15;
    if (v17)
    {
      v27 = v17;
    }

    else
    {
      v27 = [MEMORY[0x277CBEB58] set];
    }

    v28 = p_isa[5];
    p_isa[5] = v27;

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v29 = p_isa[2];
    v30 = [v29 countByEnumeratingWithState:&v65 objects:v73 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v66;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v66 != v32)
          {
            objc_enumerationMutation(v29);
          }

          [*(*(&v65 + 1) + 8 * i) setCommand:p_isa];
        }

        v31 = [v29 countByEnumeratingWithState:&v65 objects:v73 count:16];
      }

      while (v31);
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v34 = p_isa[3];
    v35 = [v34 countByEnumeratingWithState:&v61 objects:v72 count:16];
    v15 = v26;
    if (v35)
    {
      v36 = v35;
      v37 = *v62;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v62 != v37)
          {
            objc_enumerationMutation(v34);
          }

          [*(*(&v61 + 1) + 8 * j) setCommand:p_isa];
        }

        v36 = [v34 countByEnumeratingWithState:&v61 objects:v72 count:16];
      }

      while (v36);
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v39 = p_isa[4];
    v40 = [v39 countByEnumeratingWithState:&v57 objects:v71 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v58;
      do
      {
        for (k = 0; k != v41; ++k)
        {
          if (*v58 != v42)
          {
            objc_enumerationMutation(v39);
          }

          [*(*(&v57 + 1) + 8 * k) setCommand:p_isa];
        }

        v41 = [v39 countByEnumeratingWithState:&v57 objects:v71 count:16];
      }

      while (v41);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v44 = p_isa[5];
    v45 = [v44 countByEnumeratingWithState:&v53 objects:v70 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v54;
      do
      {
        for (m = 0; m != v46; ++m)
        {
          if (*v54 != v47)
          {
            objc_enumerationMutation(v44);
          }

          [*(*(&v53 + 1) + 8 * m) setPrimaryProfileCommand:p_isa];
        }

        v46 = [v44 countByEnumeratingWithState:&v53 objects:v70 count:16];
      }

      while (v46);
    }

    v14 = v51;
    v13 = v52;
  }

  v49 = *MEMORY[0x277D85DE8];
  return p_isa;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_VOSProfileCommand *)self command];
  v7 = [v3 stringWithFormat:@"%@<%p>: cmd '%@'", v5, self, v6];

  return v7;
}

- (_VOSProfileCommand)initWithCoder:(id)a3
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
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v4 decodeObjectOfClasses:v11 forKey:@"gestures"];

  v13 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [v4 decodeObjectOfClasses:v15 forKey:@"keyboardShortcuts"];

  v17 = MEMORY[0x277CBEB98];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  v20 = [v4 decodeObjectOfClasses:v19 forKey:@"quickNavShortcuts"];

  v21 = MEMORY[0x277CBEB98];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  v24 = [v4 decodeObjectOfClasses:v23 forKey:@"secondaryCommands"];

  v25 = [(_VOSProfileCommand *)self _initWithCommand:v8 gestures:v12 keyboardShortcuts:v16 quickNavShortcuts:v20 secondaryCommands:v24];
  return v25;
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
  [v7 encodeObject:self->_gestures forKey:@"gestures"];
  [v7 encodeObject:self->_keyboardShortcuts forKey:@"keyboardShortcuts"];
  [v7 encodeObject:self->_quickNavShortcuts forKey:@"quickNavShortcuts"];
  [v7 encodeObject:self->_secondaryCommands forKey:@"secondaryCommands"];
}

- (void)addGesture:(id)a3
{
  gestures = self->_gestures;
  v5 = a3;
  [(NSMutableSet *)gestures addObject:v5];
  [v5 setCommand:self];
}

- (void)removeGesture:(id)a3
{
  v4 = a3;
  [v4 setCommand:0];
  [(NSMutableSet *)self->_gestures removeObject:v4];
}

- (id)profileGestureForGesture:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_gestures;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 gesture];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)addKeyboardShortcut:(id)a3
{
  keyboardShortcuts = self->_keyboardShortcuts;
  v5 = a3;
  [(NSMutableSet *)keyboardShortcuts addObject:v5];
  [v5 setCommand:self];
}

- (void)removeKeyboardShortcut:(id)a3
{
  v4 = a3;
  [v4 setCommand:0];
  [(NSMutableSet *)self->_keyboardShortcuts removeObject:v4];
}

- (id)profileKeyboardShortcutForKeyChord:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_keyboardShortcuts;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 keyChord];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)addQuickNavShortcut:(id)a3
{
  quickNavShortcuts = self->_quickNavShortcuts;
  v5 = a3;
  [(NSMutableSet *)quickNavShortcuts addObject:v5];
  [v5 setCommand:self];
}

- (void)removeQuickNavShortcut:(id)a3
{
  v4 = a3;
  [v4 setCommand:0];
  [(NSMutableSet *)self->_quickNavShortcuts removeObject:v4];
}

- (id)profileQuickNavShortcutForKeyChord:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_quickNavShortcuts;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 keyChord];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)addSecondaryCommand:(id)a3
{
  secondaryCommands = self->_secondaryCommands;
  v5 = a3;
  [(NSMutableSet *)secondaryCommands addObject:v5];
  [v5 setPrimaryProfileCommand:self];
}

- (void)removeSecondaryCommand:(id)a3
{
  v4 = a3;
  [v4 setPrimaryProfileCommand:0];
  [(NSMutableSet *)self->_secondaryCommands removeObject:v4];
}

- (id)secondaryCommandsForPressCount:(int64_t)a3
{
  secondaryCommands = self->_secondaryCommands;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53___VOSProfileCommand_secondaryCommandsForPressCount___block_invoke;
  v6[3] = &__block_descriptor_40_e41_B24__0___VOSProfileSecondaryCommand_8_B16l;
  v6[4] = a3;
  v4 = [(NSMutableSet *)secondaryCommands ax_filteredSetUsingBlock:v6];

  return v4;
}

- (_VOSProfileMode)mode
{
  WeakRetained = objc_loadWeakRetained(&self->_mode);

  return WeakRetained;
}

@end