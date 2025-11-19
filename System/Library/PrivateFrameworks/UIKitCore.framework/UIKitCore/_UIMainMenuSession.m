@interface _UIMainMenuSession
- (BOOL)_isKeyboardShortcutVisibleForCommand:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSDictionary)_hostKeyboardShortcuts;
- (_UIMainMenuSession)initWithCoder:(id)a3;
- (id)_initWithIdentifier:(id)a3 localCache:(id)a4;
- (id)_initWithLocalCache:(id)a3;
- (id)description;
- (id)hostSideInvokableKeyboardShortcutsWithPrimaryActionHandler:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIMainMenuSession

- (id)_initWithIdentifier:(id)a3 localCache:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _UIMainMenuSession;
  v9 = [(_UIMainMenuSession *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_localCache, a4);
    performableKeyboardShortcutCommands = v10->_performableKeyboardShortcutCommands;
    v10->_performableKeyboardShortcutCommands = MEMORY[0x1E695E0F8];
  }

  return v10;
}

- (id)_initWithLocalCache:(id)a3
{
  v4 = a3;
  v5 = [_UIMainMenuSessionIdentifier alloc];
  ++_UIMainMenuSessionIdentifierNumberGenerate_lastSessionIdentifier;
  v6 = [(_UIMainMenuSessionIdentifier *)v5 _initWithIdentifierNumber:?];
  v7 = [(_UIMainMenuSession *)self _initWithIdentifier:v6 localCache:v4];

  return v7;
}

- (id)hostSideInvokableKeyboardShortcutsWithPrimaryActionHandler:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v17 = a3;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSDictionary count](self->_performableKeyboardShortcutCommands, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(NSDictionary *)self->_performableKeyboardShortcutCommands keyEnumerator];
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(NSDictionary *)self->_performableKeyboardShortcutCommands objectForKeyedSubscript:*(*(&v21 + 1) + 8 * i)];
        v10 = [v9 command];
        v11 = [v9 state];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __81___UIMainMenuSession_hostSideInvokableKeyboardShortcutsWithPrimaryActionHandler___block_invoke;
        v18[3] = &unk_1E711F100;
        v19 = v9;
        v20 = v17;
        v12 = v9;
        v13 = [v10 _uiActionForSelfOnlyForSession:self commandState:v11 primaryActionHandler:v18];

        [v13 setAttributes:4];
        [v13 setRepeatBehavior:2];
        [v4 addObject:v13];
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  v14 = [v4 copy];

  return v14;
}

- (NSDictionary)_hostKeyboardShortcuts
{
  if (self->_hostKeyboardShortcuts)
  {
    return self->_hostKeyboardShortcuts;
  }

  else
  {
    return MEMORY[0x1E695E0F8];
  }
}

- (BOOL)_isKeyboardShortcutVisibleForCommand:(id)a3
{
  visibleCommandKeyboardShortcuts = self->_visibleCommandKeyboardShortcuts;
  v5 = [a3 identifier];
  v6 = [(NSDictionary *)visibleCommandKeyboardShortcuts objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [(NSDictionary *)self->_hostKeyboardShortcuts objectForKeyedSubscript:v6];
    v8 = v7 == 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"SessionIdentifier"];
  [v5 encodeObject:self->_uncategorizedMenu forKey:@"UncategorizedMenu"];
  [v5 encodeObject:self->_visibleCommandKeyboardShortcuts forKey:@"VisibleCommandKeyboardShortcuts"];
  [v5 encodeObject:self->_performableKeyboardShortcutCommands forKey:@"PerformableKeyboardShortcutCommands"];
}

- (_UIMainMenuSession)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_UIMainMenuSession *)self init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"SessionIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = objc_opt_self();
    v10 = [v4 decodeObjectOfClass:v9 forKey:@"UncategorizedMenu"];
    uncategorizedMenu = v5->_uncategorizedMenu;
    v5->_uncategorizedMenu = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_self();
    v14 = objc_opt_self();
    v15 = objc_opt_self();
    v16 = [v12 setWithObjects:{v13, v14, v15, 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"VisibleCommandKeyboardShortcuts"];
    visibleCommandKeyboardShortcuts = v5->_visibleCommandKeyboardShortcuts;
    v5->_visibleCommandKeyboardShortcuts = v17;

    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_self();
    v21 = objc_opt_self();
    v22 = objc_opt_self();
    v23 = [v19 setWithObjects:{v20, v21, v22, 0}];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"PerformableKeyboardShortcutCommands"];
    performableKeyboardShortcutCommands = v5->_performableKeyboardShortcutCommands;
    v5->_performableKeyboardShortcutCommands = v24;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      identifier = v7->_identifier;
      v9 = self->_identifier;
      v10 = identifier;
      v11 = v10;
      if (v9 == v10)
      {
        v12 = 1;
      }

      else
      {
        v12 = 0;
        if (v9 && v10)
        {
          v12 = [(_UIMainMenuSessionIdentifier *)v9 isEqual:v10];
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_identifier withName:@"identifier"];
  v5 = [v3 appendObject:self->_uncategorizedMenu withName:@"uncategorizedMenu"];
  [v3 appendDictionarySection:self->_visibleCommandKeyboardShortcuts withName:@"_visibleCommandKeyboardShortcuts" skipIfEmpty:1];
  [v3 appendDictionarySection:self->_performableKeyboardShortcutCommands withName:@"_performableKeyboardShortcutCommands" skipIfEmpty:1];
  v6 = [v3 build];

  return v6;
}

@end