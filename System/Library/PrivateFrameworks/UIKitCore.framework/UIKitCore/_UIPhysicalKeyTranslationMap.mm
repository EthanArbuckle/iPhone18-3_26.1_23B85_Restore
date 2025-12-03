@interface _UIPhysicalKeyTranslationMap
+ (void)enumerateAllCombinationsOfModifiers:(int64_t)modifiers staticModifiers:(int64_t)staticModifiers usingBlock:(id)block;
- (BOOL)areModifiers:(int64_t)modifiers minimalExcessOfMask:(int64_t)mask matching:(id)matching translator:(id)translator matchedModifierSubset:(int64_t *)subset betterMatchFound:(BOOL *)found;
- (BOOL)keyTranslation:(id *)translation withModifiers:(int64_t)modifiers;
- (_UIPhysicalKeyTranslationMap)initWithCoder:(id)coder;
- (_UIPhysicalKeyTranslationMap)initWithKeyCode:(unsigned __int16)code action:(unsigned int)action modifiers:(int64_t)modifiers;
- (id)allTranslations;
- (id)copyWithZone:(_NSZone *)zone;
- (id)keyTranslationWithModifiers:(int64_t)modifiers translator:(id)translator;
- (void)encodeWithCoder:(id)coder;
- (void)populateAllCombinationsOfModifiers:(int64_t)modifiers translator:(id)translator;
- (void)setKeyTranslation:(id)translation modifiers:(int64_t)modifiers;
@end

@implementation _UIPhysicalKeyTranslationMap

- (_UIPhysicalKeyTranslationMap)initWithKeyCode:(unsigned __int16)code action:(unsigned int)action modifiers:(int64_t)modifiers
{
  codeCopy = code;
  v12.receiver = self;
  v12.super_class = _UIPhysicalKeyTranslationMap;
  v8 = [(_UIPhysicalKeyTranslationMap *)&v12 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:512];
    translationMap = v8->_translationMap;
    v8->_translationMap = v9;

    v8->_keyCode = codeCopy;
    v8->_keyAction = action;
    v8->_originalModifiers = modifiers;
  }

  return v8;
}

- (id)keyTranslationWithModifiers:(int64_t)modifiers translator:(id)translator
{
  translatorCopy = translator;
  v11 = 0;
  v7 = [(_UIPhysicalKeyTranslationMap *)self keyTranslation:&v11 withModifiers:modifiers];
  v8 = v11;
  if (!v7)
  {
    v9 = [translatorCopy translationForHIDUsageCode:-[_UIPhysicalKeyTranslationMap keyCode](self modifiers:{"keyCode"), modifiers}];

    [(_UIPhysicalKeyTranslationMap *)self setKeyTranslation:v9 modifiers:modifiers];
    v8 = v9;
  }

  return v8;
}

- (BOOL)keyTranslation:(id *)translation withModifiers:(int64_t)modifiers
{
  translationMap = [(_UIPhysicalKeyTranslationMap *)self translationMap];
  v7 = NSMapGet(translationMap, (modifiers + 1));

  if (!v7 || ([MEMORY[0x1E695DFB0] null], v8 = objc_claimAutoreleasedReturnValue(), v8, v7 == v8))
  {
    v10 = 0;
  }

  else
  {
    v9 = v7;
    v10 = v7;
  }

  *translation = v10;

  return v7 != 0;
}

- (void)setKeyTranslation:(id)translation modifiers:(int64_t)modifiers
{
  translationCopy = translation;
  if (!translationCopy)
  {
    translationCopy = _UISpecialKeyEquivalentFromHIDUsage([(_UIPhysicalKeyTranslationMap *)self keyCode]);
  }

  v9 = translationCopy;
  translationMap = [(_UIPhysicalKeyTranslationMap *)self translationMap];
  lowercaseString = [v9 lowercaseString];
  if (!lowercaseString)
  {
    lowercaseString = [MEMORY[0x1E695DFB0] null];
  }

  NSMapInsert(translationMap, (modifiers + 1), lowercaseString);
}

+ (void)enumerateAllCombinationsOfModifiers:(int64_t)modifiers staticModifiers:(int64_t)staticModifiers usingBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v8 = vcnt_s8(modifiers);
  v8.i16[0] = vaddlv_u8(v8);
  LODWORD(v9) = v8.i32[0];
  memset(v17, 0, sizeof(v17));
  if (modifiers)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      if (((1 << v11) & modifiers) != 0)
      {
        *(v17 + v10++) = (1 << v11) & modifiers;
      }

      if (v11 > 0x3E)
      {
        break;
      }

      ++v11;
    }

    while (v10 < v8.i32[0]);
  }

  v12 = exp2(v8.u32[0]);
  v16 = 0;
  if (v12 >= 1)
  {
    v13 = 0;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v9;
    }

    do
    {
      staticModifiersCopy2 = staticModifiers;
      if (modifiers)
      {
        v15 = 0;
        staticModifiersCopy2 = staticModifiers;
        do
        {
          if ((v13 >> v15))
          {
            staticModifiersCopy2 |= *(v17 + v15);
          }

          ++v15;
        }

        while (v9 != v15);
      }

      blockCopy[2](blockCopy, staticModifiersCopy2, &v16);
      ++v13;
    }

    while (v13 < v12 && (v16 & 1) == 0);
  }
}

- (void)populateAllCombinationsOfModifiers:(int64_t)modifiers translator:(id)translator
{
  translatorCopy = translator;
  if (![(_UIPhysicalKeyTranslationMap *)self keyAction])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __78___UIPhysicalKeyTranslationMap_populateAllCombinationsOfModifiers_translator___block_invoke;
    v7[3] = &unk_1E710E630;
    v7[4] = self;
    v8 = translatorCopy;
    [_UIPhysicalKeyTranslationMap enumerateAllCombinationsOfModifiers:modifiers staticModifiers:0 usingBlock:v7];
  }
}

- (id)allTranslations
{
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  translationMap = [(_UIPhysicalKeyTranslationMap *)self translationMap];
  v5 = NSAllMapTableValues(translationMap);
  v6 = [v3 initWithArray:v5];

  return v6;
}

- (BOOL)areModifiers:(int64_t)modifiers minimalExcessOfMask:(int64_t)mask matching:(id)matching translator:(id)translator matchedModifierSubset:(int64_t *)subset betterMatchFound:(BOOL *)found
{
  matchingCopy = matching;
  translatorCopy = translator;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v16 = vcnt_s8(modifiers);
  v16.i16[0] = vaddlv_u8(v16);
  v21 = v16.i32[0];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __124___UIPhysicalKeyTranslationMap_areModifiers_minimalExcessOfMask_matching_translator_matchedModifierSubset_betterMatchFound___block_invoke;
  v22[3] = &unk_1E710E658;
  v22[4] = self;
  v17 = translatorCopy;
  v23 = v17;
  v18 = matchingCopy;
  v29 = v21;
  v24 = v18;
  v25 = &v30;
  maskCopy = mask;
  foundCopy = found;
  v26 = &v34;
  [_UIPhysicalKeyTranslationMap enumerateAllCombinationsOfModifiers:modifiers staticModifiers:0 usingBlock:v22];
  if (subset)
  {
    *subset = v35[3];
  }

  v19 = *(v31 + 24);

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_alloc(objc_opt_class()) initWithKeyCode:-[_UIPhysicalKeyTranslationMap keyCode](self action:"keyCode") modifiers:{-[_UIPhysicalKeyTranslationMap keyAction](self, "keyAction"), -[_UIPhysicalKeyTranslationMap originalModifiers](self, "originalModifiers")}];
  translationMap = [(_UIPhysicalKeyTranslationMap *)self translationMap];
  v7 = [translationMap copyWithZone:zone];
  v8 = v5[2];
  v5[2] = v7;

  return v5;
}

- (_UIPhysicalKeyTranslationMap)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt32ForKey:@"keyCode"];
  v6 = [coderCopy decodeInt32ForKey:@"keyAction"];
  v7 = [coderCopy decodeIntegerForKey:@"modifierFlags"];

  return [(_UIPhysicalKeyTranslationMap *)self initWithKeyCode:v5 action:v6 modifiers:v7];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:-[_UIPhysicalKeyTranslationMap keyCode](self forKey:{"keyCode"), @"keyCode"}];
  [coderCopy encodeInt32:-[_UIPhysicalKeyTranslationMap keyAction](self forKey:{"keyAction"), @"keyAction"}];
  [coderCopy encodeInteger:-[_UIPhysicalKeyTranslationMap originalModifiers](self forKey:{"originalModifiers"), @"modifierFlags"}];
}

@end