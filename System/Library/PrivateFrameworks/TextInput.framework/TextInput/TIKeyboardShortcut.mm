@interface TIKeyboardShortcut
+ (BOOL)isMirroringCandidate:(id)candidate;
+ (id)findLocalizationForKeyboardShortcut:(id)shortcut withModifiers:(unint64_t)modifiers inApplicableOverrides:(id)overrides usingKeyboardType:(unsigned int)type;
+ (id)localizedKeyboardShortcut:(id)shortcut forKeyboardLayout:(id)layout;
+ (id)localizedKeyboardShortcut:(id)shortcut forKeyboardLayout:(id)layout usingKeyboardType:(unsigned int)type;
+ (id)localizedKeyboardShortcut:(id)shortcut forKeyboardLayout:(id)layout withAttributes:(id)attributes;
+ (id)shortcutWithKeyEquivalent:(id)equivalent modifierFlags:(unint64_t)flags;
+ (id)shortcutWithKeyEquivalent:(id)equivalent modifierFlags:(unint64_t)flags displayStringOverride:(id)override;
- (BOOL)isEqual:(id)equal;
- (TIKeyboardShortcut)initWithKeyEquivalent:(id)equivalent modifierFlags:(unint64_t)flags;
- (TIKeyboardShortcut)initWithKeyEquivalent:(id)equivalent modifierFlags:(unint64_t)flags displayStringOverride:(id)override;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation TIKeyboardShortcut

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      keyEquivalent = [(TIKeyboardShortcut *)self keyEquivalent];
      keyEquivalent2 = [(TIKeyboardShortcut *)equalCopy keyEquivalent];
      if ([keyEquivalent isEqualToString:keyEquivalent2])
      {
        modifierFlags = [(TIKeyboardShortcut *)self modifierFlags];
        v8 = modifierFlags == [(TIKeyboardShortcut *)equalCopy modifierFlags];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();
  keyEquivalent = [(TIKeyboardShortcut *)self keyEquivalent];
  v6 = [v4 shortcutWithKeyEquivalent:keyEquivalent modifierFlags:{-[TIKeyboardShortcut modifierFlags](self, "modifierFlags")}];

  return v6;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if (([(TIKeyboardShortcut *)self modifierFlags]& 0x40000) != 0)
  {
    [v3 appendString:@"⌃ "];
  }

  if (([(TIKeyboardShortcut *)self modifierFlags]& 0x80000) != 0)
  {
    [v3 appendString:@"⌥ "];
  }

  if (([(TIKeyboardShortcut *)self modifierFlags]& 0x20000) != 0)
  {
    [v3 appendString:@"⇧ "];
  }

  if (([(TIKeyboardShortcut *)self modifierFlags]& 0x100000) != 0)
  {
    [v3 appendString:@"⌘ "];
  }

  keyEquivalent = [(TIKeyboardShortcut *)self keyEquivalent];
  v5 = [keyEquivalent isEqualToString:@" "];

  if (v5)
  {
    v6 = @"space";
LABEL_17:
    [v3 appendString:v6];
    goto LABEL_18;
  }

  keyEquivalent2 = [(TIKeyboardShortcut *)self keyEquivalent];
  v8 = [keyEquivalent2 isEqualToString:@"\t"];

  if (v8)
  {
    v6 = @"↹";
    goto LABEL_17;
  }

  keyEquivalent3 = [(TIKeyboardShortcut *)self keyEquivalent];
  if ([keyEquivalent3 isEqualToString:@"\n"])
  {

LABEL_16:
    v6 = @"⏎";
    goto LABEL_17;
  }

  keyEquivalent4 = [(TIKeyboardShortcut *)self keyEquivalent];
  v11 = [keyEquivalent4 isEqualToString:@"\r"];

  if (v11)
  {
    goto LABEL_16;
  }

  keyEquivalent5 = [(TIKeyboardShortcut *)self keyEquivalent];
  v14 = [keyEquivalent5 isEqualToString:@"\b"];

  if (v14)
  {
    v6 = @"⌫";
    goto LABEL_17;
  }

  keyEquivalent6 = [(TIKeyboardShortcut *)self keyEquivalent];
  [v3 appendString:keyEquivalent6];

LABEL_18:

  return v3;
}

- (TIKeyboardShortcut)initWithKeyEquivalent:(id)equivalent modifierFlags:(unint64_t)flags displayStringOverride:(id)override
{
  equivalentCopy = equivalent;
  overrideCopy = override;
  v16.receiver = self;
  v16.super_class = TIKeyboardShortcut;
  v10 = [(TIKeyboardShortcut *)&v16 init];
  if (v10)
  {
    v11 = [equivalentCopy copy];
    keyEquivalent = v10->_keyEquivalent;
    v10->_keyEquivalent = v11;

    v10->_modifierFlags = flags;
    v13 = [overrideCopy copy];
    displayStringOverride = v10->_displayStringOverride;
    v10->_displayStringOverride = v13;
  }

  return v10;
}

- (TIKeyboardShortcut)initWithKeyEquivalent:(id)equivalent modifierFlags:(unint64_t)flags
{
  equivalentCopy = equivalent;
  v12.receiver = self;
  v12.super_class = TIKeyboardShortcut;
  v7 = [(TIKeyboardShortcut *)&v12 init];
  if (v7)
  {
    v8 = [equivalentCopy copy];
    keyEquivalent = v7->_keyEquivalent;
    v7->_keyEquivalent = v8;

    displayStringOverride = v7->_displayStringOverride;
    v7->_modifierFlags = flags;
    v7->_displayStringOverride = 0;
  }

  return v7;
}

+ (BOOL)isMirroringCandidate:(id)candidate
{
  candidateCopy = candidate;
  v4 = candidateCopy;
  if (candidateCopy && [candidateCopy length])
  {
    _ti_isKeyEquivalentMirroringCandidate = [v4 _ti_isKeyEquivalentMirroringCandidate];
  }

  else
  {
    _ti_isKeyEquivalentMirroringCandidate = 0;
  }

  return _ti_isKeyEquivalentMirroringCandidate;
}

+ (id)findLocalizationForKeyboardShortcut:(id)shortcut withModifiers:(unint64_t)modifiers inApplicableOverrides:(id)overrides usingKeyboardType:(unsigned int)type
{
  v40 = *MEMORY[0x1E69E9840];
  shortcutCopy = shortcut;
  v9 = 0;
  if (shortcutCopy && overrides)
  {
    v10 = MEMORY[0x1E696AD98];
    overridesCopy = overrides;
    v12 = [v10 numberWithUnsignedInteger:modifiers];
    v13 = [overridesCopy objectForKeyedSubscript:shortcutCopy];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = 0;
LABEL_31:

      goto LABEL_32;
    }

    v14 = v13;
    v15 = [v14 objectForKeyedSubscript:@"key"];
    objc_opt_class();
    v34 = v15;
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v35 = [v14 objectForKeyedSubscript:@"display"];
    stringValue = [v12 stringValue];
    v18 = [v14 objectForKeyedSubscript:stringValue];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v23 = 0;
LABEL_24:
      if (v16)
      {
        v28 = v16;
      }

      else
      {
        v28 = shortcutCopy;
      }

      if (v23)
      {
        v29 = v23;
      }

      else
      {
        v29 = v12;
      }

      v9 = +[TIKeyboardShortcut shortcutWithKeyEquivalent:modifierFlags:displayStringOverride:](TIKeyboardShortcut, "shortcutWithKeyEquivalent:modifierFlags:displayStringOverride:", v28, [v29 unsignedIntegerValue], v35);

      goto LABEL_31;
    }

    v33 = v18;
    v19 = [v33 objectForKeyedSubscript:@"key"];
    objc_opt_class();
    v31 = v19;
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;

      v16 = v20;
    }

    v21 = [v33 objectForKeyedSubscript:{@"modifiers", v31}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
LABEL_17:
      v23 = v22;
LABEL_21:
      v25 = [v33 objectForKeyedSubscript:@"display"];
      v26 = v25;
      if (v25)
      {
        v27 = v25;

        v35 = v27;
      }

      goto LABEL_24;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      integerValue = [v21 integerValue];
      if (integerValue)
      {
        v22 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
        goto LABEL_17;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v37 = "+[TIKeyboardShortcut findLocalizationForKeyboardShortcut:withModifiers:inApplicableOverrides:usingKeyboardType:]";
        v38 = 2112;
        v39 = shortcutCopy;
        _os_log_fault_impl(&dword_1863F7000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "%s: malformatted plist, modifier not convertible to number, key %@", buf, 0x16u);
      }
    }

    v23 = 0;
    goto LABEL_21;
  }

LABEL_32:

  return v9;
}

+ (id)localizedKeyboardShortcut:(id)shortcut forKeyboardLayout:(id)layout withAttributes:(id)attributes
{
  shortcutCopy = shortcut;
  attributesCopy = attributes;
  if (attributesCopy)
  {
    layoutCopy = layout;
    layoutCopy2 = [attributesCopy objectForKeyedSubscript:@"isRTL"];
    if (layoutCopy2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = [layoutCopy2 BOOLValue] ^ 1;
    }

    else
    {
      v12 = 1;
    }

    v13 = [attributesCopy objectForKeyedSubscript:@"sel"];
    if (shouldOptOutForSelector___onceToken != -1)
    {
      dispatch_once(&shouldOptOutForSelector___onceToken, &__block_literal_global_13813);
    }

    v14 = [shouldOptOutForSelector___knownSelectors containsObject:v13];

    modifierFlags = [shortcutCopy modifierFlags];
    v16 = shortcutCopy;
    v17 = v16;
    if (((v12 | v14) & 1) == 0 && (modifierFlags & 0x100000) != 0)
    {
      keyEquivalent = [v16 keyEquivalent];
      _ti_keyEquivalentMirroring = [keyEquivalent _ti_keyEquivalentMirroring];

      if (_ti_keyEquivalentMirroring)
      {
        v20 = [[self alloc] initWithKeyEquivalent:_ti_keyEquivalentMirroring modifierFlags:{objc_msgSend(v17, "modifierFlags")}];

        v17 = v20;
      }
    }

    v21 = [attributesCopy objectForKeyedSubscript:@"keyboardType"];
    v22 = +[TIKeyboardShortcut localizedKeyboardShortcut:forKeyboardLayout:usingKeyboardType:](TIKeyboardShortcut, "localizedKeyboardShortcut:forKeyboardLayout:usingKeyboardType:", v17, layoutCopy, [v21 unsignedIntValue]);
  }

  else
  {
    layoutCopy2 = layout;
    v22 = [TIKeyboardShortcut localizedKeyboardShortcut:shortcutCopy forKeyboardLayout:layoutCopy2];
  }

  return v22;
}

+ (id)localizedKeyboardShortcut:(id)shortcut forKeyboardLayout:(id)layout usingKeyboardType:(unsigned int)type
{
  v5 = *&type;
  shortcutCopy = shortcut;
  v9 = TIGetKeyboardShortcutOverridesForKeyboardLayout(layout, v5 == 2);
  if (![v9 count] || (v10 = objc_opt_class(), objc_msgSend(shortcutCopy, "keyEquivalent"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "findLocalizationForKeyboardShortcut:withModifiers:inApplicableOverrides:usingKeyboardType:", v11, objc_msgSend(shortcutCopy, "modifierFlags"), v9, v5), v12 = objc_claimAutoreleasedReturnValue(), v11, !v12))
  {
    v13 = [self alloc];
    keyEquivalent = [shortcutCopy keyEquivalent];
    v12 = [v13 initWithKeyEquivalent:keyEquivalent modifierFlags:{objc_msgSend(shortcutCopy, "modifierFlags")}];
  }

  return v12;
}

+ (id)localizedKeyboardShortcut:(id)shortcut forKeyboardLayout:(id)layout
{
  shortcutCopy = shortcut;
  v7 = TIGetKeyboardShortcutOverridesForKeyboardLayout(layout, 0);
  if (![v7 count] || (v8 = objc_opt_class(), objc_msgSend(shortcutCopy, "keyEquivalent"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "findLocalizationForKeyboardShortcut:withModifiers:inApplicableOverrides:usingKeyboardType:", v9, objc_msgSend(shortcutCopy, "modifierFlags"), v7, 0), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    v11 = [self alloc];
    keyEquivalent = [shortcutCopy keyEquivalent];
    v10 = [v11 initWithKeyEquivalent:keyEquivalent modifierFlags:{objc_msgSend(shortcutCopy, "modifierFlags")}];
  }

  return v10;
}

+ (id)shortcutWithKeyEquivalent:(id)equivalent modifierFlags:(unint64_t)flags displayStringOverride:(id)override
{
  overrideCopy = override;
  equivalentCopy = equivalent;
  v10 = [[self alloc] initWithKeyEquivalent:equivalentCopy modifierFlags:flags displayStringOverride:overrideCopy];

  return v10;
}

+ (id)shortcutWithKeyEquivalent:(id)equivalent modifierFlags:(unint64_t)flags
{
  equivalentCopy = equivalent;
  v7 = [[self alloc] initWithKeyEquivalent:equivalentCopy modifierFlags:flags];

  return v7;
}

@end