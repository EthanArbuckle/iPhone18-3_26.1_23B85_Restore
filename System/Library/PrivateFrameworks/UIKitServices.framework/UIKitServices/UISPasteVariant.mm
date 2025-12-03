@interface UISPasteVariant
+ (NSArray)allVariants;
+ (id)variantForActionIdentifier:(id)identifier;
+ (id)variantForSecureName:(unsigned int)name;
+ (id)variantForSelector:(SEL)selector;
- (UISPasteVariant)initWithSecureName:(unsigned int)name selector:(SEL)selector actionIdentifier:(id)identifier glpyh:(id)glpyh keyInput:(id)input keyModifierFlags:(int64_t)flags;
@end

@implementation UISPasteVariant

+ (NSArray)allVariants
{
  if (_MergedGlobals_8 != -1)
  {
    dispatch_once(&_MergedGlobals_8, &__block_literal_global_5);
  }

  v3 = qword_1ED51BF30;

  return v3;
}

void __30__UISPasteVariant_allVariants__block_invoke()
{
  v7[5] = *MEMORY[0x1E69E9840];
  v0 = [[UISPasteVariant alloc] initWithSecureName:0x10000 selector:sel_paste_ actionIdentifier:@"com.apple.action.paste" glpyh:@"doc.on.clipboard" keyInput:@"v" keyModifierFlags:0x100000];
  v1 = [[UISPasteVariant alloc] initWithSecureName:65537 selector:sel_pasteAndMatchStyle_ actionIdentifier:@"com.apple.action.pasteAndMatchStyle" glpyh:@"paintbrush.page.on.clipboard" keyInput:@"v" keyModifierFlags:1703936, v0];
  v7[1] = v1;
  v2 = [[UISPasteVariant alloc] initWithSecureName:65538 selector:sel_pasteAndGo_ actionIdentifier:@"com.apple.action.pasteAndGo" glpyh:@"doc.on.clipboard" keyInput:0 keyModifierFlags:0];
  v7[2] = v2;
  v3 = [[UISPasteVariant alloc] initWithSecureName:65539 selector:sel_pasteAndSearch_ actionIdentifier:@"com.apple.action.pasteAndSearch" glpyh:@"doc.on.clipboard" keyInput:0 keyModifierFlags:0];
  v7[3] = v3;
  v4 = [[UISPasteVariant alloc] initWithSecureName:65540 selector:sel_newFromPasteboard_ actionIdentifier:@"com.apple.action.newFromPasteboard" glpyh:@"doc.on.clipboard" keyInput:0 keyModifierFlags:0];
  v7[4] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:5];
  v6 = qword_1ED51BF30;
  qword_1ED51BF30 = v5;
}

- (UISPasteVariant)initWithSecureName:(unsigned int)name selector:(SEL)selector actionIdentifier:(id)identifier glpyh:(id)glpyh keyInput:(id)input keyModifierFlags:(int64_t)flags
{
  identifierCopy = identifier;
  glpyhCopy = glpyh;
  inputCopy = input;
  v25.receiver = self;
  v25.super_class = UISPasteVariant;
  v18 = [(UISPasteVariant *)&v25 init];
  v19 = v18;
  if (v18)
  {
    v18->_secureName = name;
    v18->_selector = selector;
    objc_storeStrong(&v18->_actionIdentifier, identifier);
    v20 = [glpyhCopy copy];
    glyph = v19->_glyph;
    v19->_glyph = v20;

    v22 = [inputCopy copy];
    keyInput = v19->_keyInput;
    v19->_keyInput = v22;

    v19->_keyModifierFlags = flags;
  }

  return v19;
}

+ (id)variantForSecureName:(unsigned int)name
{
  nameCopy = name;
  allVariants = [self allVariants];
  if ([allVariants count] <= nameCopy)
  {
    v5 = 0;
  }

  else
  {
    v5 = [allVariants objectAtIndexedSubscript:nameCopy];
  }

  return v5;
}

+ (id)variantForSelector:(SEL)selector
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allVariants = [self allVariants];
  v5 = [allVariants countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allVariants);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 selector] == selector)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [allVariants countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

+ (id)variantForActionIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allVariants = [self allVariants];
  v6 = [allVariants countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(allVariants);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        actionIdentifier = [v9 actionIdentifier];
        v11 = [actionIdentifier isEqualToString:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [allVariants countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

@end