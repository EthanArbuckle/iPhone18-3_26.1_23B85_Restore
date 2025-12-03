@interface _VOSProfileCommand
+ (_VOSProfileCommand)profileCommandWithCommand:(id)command;
+ (_VOSProfileCommand)profileCommandWithStringValue:(id)value;
- (_VOSProfileCommand)initWithCoder:(id)coder;
- (_VOSProfileMode)mode;
- (id)_initWithCommand:(id)command gestures:(id)gestures keyboardShortcuts:(id)shortcuts quickNavShortcuts:(id)navShortcuts secondaryCommands:(id)commands;
- (id)description;
- (id)profileGestureForGesture:(id)gesture;
- (id)profileKeyboardShortcutForKeyChord:(id)chord;
- (id)profileQuickNavShortcutForKeyChord:(id)chord;
- (id)secondaryCommandsForPressCount:(int64_t)count;
- (void)addGesture:(id)gesture;
- (void)addKeyboardShortcut:(id)shortcut;
- (void)addQuickNavShortcut:(id)shortcut;
- (void)addSecondaryCommand:(id)command;
- (void)encodeWithCoder:(id)coder;
- (void)removeGesture:(id)gesture;
- (void)removeKeyboardShortcut:(id)shortcut;
- (void)removeQuickNavShortcut:(id)shortcut;
- (void)removeSecondaryCommand:(id)command;
@end

@implementation _VOSProfileCommand

+ (_VOSProfileCommand)profileCommandWithCommand:(id)command
{
  commandCopy = command;
  v4 = [[_VOSProfileCommand alloc] _initWithCommand:commandCopy gestures:0 keyboardShortcuts:0 quickNavShortcuts:0 secondaryCommands:0];

  return v4;
}

+ (_VOSProfileCommand)profileCommandWithStringValue:(id)value
{
  v4 = [VOSCommand builtInCommandWithStringValue:value];
  if (v4)
  {
    v5 = [self profileCommandWithCommand:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_initWithCommand:(id)command gestures:(id)gestures keyboardShortcuts:(id)shortcuts quickNavShortcuts:(id)navShortcuts secondaryCommands:(id)commands
{
  v74 = *MEMORY[0x277D85DE8];
  commandCopy = command;
  gesturesCopy = gestures;
  shortcutsCopy = shortcuts;
  navShortcutsCopy = navShortcuts;
  commandsCopy = commands;
  v69.receiver = self;
  v69.super_class = _VOSProfileCommand;
  v18 = [(_VOSProfileCommand *)&v69 init];
  p_isa = &v18->super.isa;
  if (v18)
  {
    objc_storeStrong(&v18->_command, command);
    if (gesturesCopy)
    {
      v20 = gesturesCopy;
    }

    else
    {
      v20 = [MEMORY[0x277CBEB58] set];
    }

    v21 = p_isa[2];
    p_isa[2] = v20;
    v52 = commandCopy;

    if (shortcutsCopy)
    {
      v22 = shortcutsCopy;
    }

    else
    {
      v22 = [MEMORY[0x277CBEB58] set];
    }

    v23 = p_isa[3];
    p_isa[3] = v22;

    if (navShortcutsCopy)
    {
      v24 = navShortcutsCopy;
    }

    else
    {
      v24 = [MEMORY[0x277CBEB58] set];
    }

    v25 = p_isa[4];
    p_isa[4] = v24;

    v51 = gesturesCopy;
    v26 = shortcutsCopy;
    if (commandsCopy)
    {
      v27 = commandsCopy;
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
    shortcutsCopy = v26;
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

    gesturesCopy = v51;
    commandCopy = v52;
  }

  v49 = *MEMORY[0x277D85DE8];
  return p_isa;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  command = [(_VOSProfileCommand *)self command];
  v7 = [v3 stringWithFormat:@"%@<%p>: cmd '%@'", v5, self, command];

  return v7;
}

- (_VOSProfileCommand)initWithCoder:(id)coder
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
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"gestures"];

  v13 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"keyboardShortcuts"];

  v17 = MEMORY[0x277CBEB98];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"quickNavShortcuts"];

  v21 = MEMORY[0x277CBEB98];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"secondaryCommands"];

  v25 = [(_VOSProfileCommand *)self _initWithCommand:v8 gestures:v12 keyboardShortcuts:v16 quickNavShortcuts:v20 secondaryCommands:v24];
  return v25;
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
  [coderCopy encodeObject:self->_gestures forKey:@"gestures"];
  [coderCopy encodeObject:self->_keyboardShortcuts forKey:@"keyboardShortcuts"];
  [coderCopy encodeObject:self->_quickNavShortcuts forKey:@"quickNavShortcuts"];
  [coderCopy encodeObject:self->_secondaryCommands forKey:@"secondaryCommands"];
}

- (void)addGesture:(id)gesture
{
  gestures = self->_gestures;
  gestureCopy = gesture;
  [(NSMutableSet *)gestures addObject:gestureCopy];
  [gestureCopy setCommand:self];
}

- (void)removeGesture:(id)gesture
{
  gestureCopy = gesture;
  [gestureCopy setCommand:0];
  [(NSMutableSet *)self->_gestures removeObject:gestureCopy];
}

- (id)profileGestureForGesture:(id)gesture
{
  v19 = *MEMORY[0x277D85DE8];
  gestureCopy = gesture;
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
        gesture = [v9 gesture];
        v11 = [gesture isEqual:gestureCopy];

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

- (void)addKeyboardShortcut:(id)shortcut
{
  keyboardShortcuts = self->_keyboardShortcuts;
  shortcutCopy = shortcut;
  [(NSMutableSet *)keyboardShortcuts addObject:shortcutCopy];
  [shortcutCopy setCommand:self];
}

- (void)removeKeyboardShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  [shortcutCopy setCommand:0];
  [(NSMutableSet *)self->_keyboardShortcuts removeObject:shortcutCopy];
}

- (id)profileKeyboardShortcutForKeyChord:(id)chord
{
  v19 = *MEMORY[0x277D85DE8];
  chordCopy = chord;
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
        keyChord = [v9 keyChord];
        v11 = [keyChord isEqual:chordCopy];

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

- (void)addQuickNavShortcut:(id)shortcut
{
  quickNavShortcuts = self->_quickNavShortcuts;
  shortcutCopy = shortcut;
  [(NSMutableSet *)quickNavShortcuts addObject:shortcutCopy];
  [shortcutCopy setCommand:self];
}

- (void)removeQuickNavShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  [shortcutCopy setCommand:0];
  [(NSMutableSet *)self->_quickNavShortcuts removeObject:shortcutCopy];
}

- (id)profileQuickNavShortcutForKeyChord:(id)chord
{
  v19 = *MEMORY[0x277D85DE8];
  chordCopy = chord;
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
        keyChord = [v9 keyChord];
        v11 = [keyChord isEqual:chordCopy];

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

- (void)addSecondaryCommand:(id)command
{
  secondaryCommands = self->_secondaryCommands;
  commandCopy = command;
  [(NSMutableSet *)secondaryCommands addObject:commandCopy];
  [commandCopy setPrimaryProfileCommand:self];
}

- (void)removeSecondaryCommand:(id)command
{
  commandCopy = command;
  [commandCopy setPrimaryProfileCommand:0];
  [(NSMutableSet *)self->_secondaryCommands removeObject:commandCopy];
}

- (id)secondaryCommandsForPressCount:(int64_t)count
{
  secondaryCommands = self->_secondaryCommands;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53___VOSProfileCommand_secondaryCommandsForPressCount___block_invoke;
  v6[3] = &__block_descriptor_40_e41_B24__0___VOSProfileSecondaryCommand_8_B16l;
  v6[4] = count;
  v4 = [(NSMutableSet *)secondaryCommands ax_filteredSetUsingBlock:v6];

  return v4;
}

- (_VOSProfileMode)mode
{
  WeakRetained = objc_loadWeakRetained(&self->_mode);

  return WeakRetained;
}

@end