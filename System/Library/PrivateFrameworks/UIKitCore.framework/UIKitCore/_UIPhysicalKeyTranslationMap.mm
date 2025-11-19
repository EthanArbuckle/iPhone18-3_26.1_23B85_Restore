@interface _UIPhysicalKeyTranslationMap
+ (void)enumerateAllCombinationsOfModifiers:(int64_t)a3 staticModifiers:(int64_t)a4 usingBlock:(id)a5;
- (BOOL)areModifiers:(int64_t)a3 minimalExcessOfMask:(int64_t)a4 matching:(id)a5 translator:(id)a6 matchedModifierSubset:(int64_t *)a7 betterMatchFound:(BOOL *)a8;
- (BOOL)keyTranslation:(id *)a3 withModifiers:(int64_t)a4;
- (_UIPhysicalKeyTranslationMap)initWithCoder:(id)a3;
- (_UIPhysicalKeyTranslationMap)initWithKeyCode:(unsigned __int16)a3 action:(unsigned int)a4 modifiers:(int64_t)a5;
- (id)allTranslations;
- (id)copyWithZone:(_NSZone *)a3;
- (id)keyTranslationWithModifiers:(int64_t)a3 translator:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)populateAllCombinationsOfModifiers:(int64_t)a3 translator:(id)a4;
- (void)setKeyTranslation:(id)a3 modifiers:(int64_t)a4;
@end

@implementation _UIPhysicalKeyTranslationMap

- (_UIPhysicalKeyTranslationMap)initWithKeyCode:(unsigned __int16)a3 action:(unsigned int)a4 modifiers:(int64_t)a5
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = _UIPhysicalKeyTranslationMap;
  v8 = [(_UIPhysicalKeyTranslationMap *)&v12 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:512];
    translationMap = v8->_translationMap;
    v8->_translationMap = v9;

    v8->_keyCode = v7;
    v8->_keyAction = a4;
    v8->_originalModifiers = a5;
  }

  return v8;
}

- (id)keyTranslationWithModifiers:(int64_t)a3 translator:(id)a4
{
  v6 = a4;
  v11 = 0;
  v7 = [(_UIPhysicalKeyTranslationMap *)self keyTranslation:&v11 withModifiers:a3];
  v8 = v11;
  if (!v7)
  {
    v9 = [v6 translationForHIDUsageCode:-[_UIPhysicalKeyTranslationMap keyCode](self modifiers:{"keyCode"), a3}];

    [(_UIPhysicalKeyTranslationMap *)self setKeyTranslation:v9 modifiers:a3];
    v8 = v9;
  }

  return v8;
}

- (BOOL)keyTranslation:(id *)a3 withModifiers:(int64_t)a4
{
  v6 = [(_UIPhysicalKeyTranslationMap *)self translationMap];
  v7 = NSMapGet(v6, (a4 + 1));

  if (!v7 || ([MEMORY[0x1E695DFB0] null], v8 = objc_claimAutoreleasedReturnValue(), v8, v7 == v8))
  {
    v10 = 0;
  }

  else
  {
    v9 = v7;
    v10 = v7;
  }

  *a3 = v10;

  return v7 != 0;
}

- (void)setKeyTranslation:(id)a3 modifiers:(int64_t)a4
{
  v6 = a3;
  if (!v6)
  {
    v6 = _UISpecialKeyEquivalentFromHIDUsage([(_UIPhysicalKeyTranslationMap *)self keyCode]);
  }

  v9 = v6;
  v7 = [(_UIPhysicalKeyTranslationMap *)self translationMap];
  v8 = [v9 lowercaseString];
  if (!v8)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  NSMapInsert(v7, (a4 + 1), v8);
}

+ (void)enumerateAllCombinationsOfModifiers:(int64_t)a3 staticModifiers:(int64_t)a4 usingBlock:(id)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = vcnt_s8(a3);
  v8.i16[0] = vaddlv_u8(v8);
  LODWORD(v9) = v8.i32[0];
  memset(v17, 0, sizeof(v17));
  if (a3)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      if (((1 << v11) & a3) != 0)
      {
        *(v17 + v10++) = (1 << v11) & a3;
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
      v14 = a4;
      if (a3)
      {
        v15 = 0;
        v14 = a4;
        do
        {
          if ((v13 >> v15))
          {
            v14 |= *(v17 + v15);
          }

          ++v15;
        }

        while (v9 != v15);
      }

      v7[2](v7, v14, &v16);
      ++v13;
    }

    while (v13 < v12 && (v16 & 1) == 0);
  }
}

- (void)populateAllCombinationsOfModifiers:(int64_t)a3 translator:(id)a4
{
  v6 = a4;
  if (![(_UIPhysicalKeyTranslationMap *)self keyAction])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __78___UIPhysicalKeyTranslationMap_populateAllCombinationsOfModifiers_translator___block_invoke;
    v7[3] = &unk_1E710E630;
    v7[4] = self;
    v8 = v6;
    [_UIPhysicalKeyTranslationMap enumerateAllCombinationsOfModifiers:a3 staticModifiers:0 usingBlock:v7];
  }
}

- (id)allTranslations
{
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4 = [(_UIPhysicalKeyTranslationMap *)self translationMap];
  v5 = NSAllMapTableValues(v4);
  v6 = [v3 initWithArray:v5];

  return v6;
}

- (BOOL)areModifiers:(int64_t)a3 minimalExcessOfMask:(int64_t)a4 matching:(id)a5 translator:(id)a6 matchedModifierSubset:(int64_t *)a7 betterMatchFound:(BOOL *)a8
{
  v14 = a5;
  v15 = a6;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v16 = vcnt_s8(a3);
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
  v17 = v15;
  v23 = v17;
  v18 = v14;
  v29 = v21;
  v24 = v18;
  v25 = &v30;
  v27 = a4;
  v28 = a8;
  v26 = &v34;
  [_UIPhysicalKeyTranslationMap enumerateAllCombinationsOfModifiers:a3 staticModifiers:0 usingBlock:v22];
  if (a7)
  {
    *a7 = v35[3];
  }

  v19 = *(v31 + 24);

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_alloc(objc_opt_class()) initWithKeyCode:-[_UIPhysicalKeyTranslationMap keyCode](self action:"keyCode") modifiers:{-[_UIPhysicalKeyTranslationMap keyAction](self, "keyAction"), -[_UIPhysicalKeyTranslationMap originalModifiers](self, "originalModifiers")}];
  v6 = [(_UIPhysicalKeyTranslationMap *)self translationMap];
  v7 = [v6 copyWithZone:a3];
  v8 = v5[2];
  v5[2] = v7;

  return v5;
}

- (_UIPhysicalKeyTranslationMap)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt32ForKey:@"keyCode"];
  v6 = [v4 decodeInt32ForKey:@"keyAction"];
  v7 = [v4 decodeIntegerForKey:@"modifierFlags"];

  return [(_UIPhysicalKeyTranslationMap *)self initWithKeyCode:v5 action:v6 modifiers:v7];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt32:-[_UIPhysicalKeyTranslationMap keyCode](self forKey:{"keyCode"), @"keyCode"}];
  [v4 encodeInt32:-[_UIPhysicalKeyTranslationMap keyAction](self forKey:{"keyAction"), @"keyAction"}];
  [v4 encodeInteger:-[_UIPhysicalKeyTranslationMap originalModifiers](self forKey:{"originalModifiers"), @"modifierFlags"}];
}

@end