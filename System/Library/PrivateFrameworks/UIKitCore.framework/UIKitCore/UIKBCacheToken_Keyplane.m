@interface UIKBCacheToken_Keyplane
+ (id)tokenForKeyplane:(id)a3 renderConfig:(id)a4;
- (BOOL)isUsableForCacheToken:(id)a3 withRenderFlags:(int64_t)a4;
- (CGSize)size;
- (id)_initWithKeyplane:(id)a3 keylayout:(id)a4 renderConfig:(id)a5;
- (id)stringForSplitState:(BOOL)a3 handBias:(int64_t)a4;
- (void)annotateWithBool:(BOOL)a3;
- (void)annotateWithInt:(int)a3;
@end

@implementation UIKBCacheToken_Keyplane

- (id)_initWithKeyplane:(id)a3 keylayout:(id)a4 renderConfig:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 name];
  v37.receiver = self;
  v37.super_class = UIKBCacheToken_Keyplane;
  v12 = [(UIKBCacheToken *)&v37 initWithName:v11];

  if (v12)
  {
    [v9 frame];
    v12->_size.width = v13;
    v12->_size.height = v14;
    v15 = [v8 visualStyling];
    *&v12->_style.styling = v15;
    v12->_style.intValue = v15 & 0xFFFFFF7F;
    v16 = [v9 geometrySet:0];
    v17 = [v16 name];
    v18 = v17;
    v19 = &stru_1EFB14550;
    if (v17)
    {
      v19 = v17;
    }

    v20 = v19;

    v21 = [v9 keySet];
    v22 = [v21 name];

    v12->_colorAdaptiveBackground = [v10 colorAdaptiveBackground];
    v12->_lightKeyboard = [v10 lightKeyboard];
    v12->_animatedBackground = [v10 animatedBackground];
    v12->_usesCompactKeycapsFont = [v10 usesCompactKeycapsFont];
    v23 = [v10 controlKeyBackgroundName];
    v12->_controlKeyBackgroundName = [v23 hash];

    v24 = _UIKBTrimKBStarName_iOS(v20);

    geometrySetName = v12->_geometrySetName;
    v12->_geometrySetName = v24;

    v26 = _UIKBTrimKBStarName_iOS(v22);
    keySetName = v12->_keySetName;
    v12->_keySetName = v26;

    v28 = [v9 cachedGestureLayout];
    v29 = [v28 keySet];
    v30 = [v29 name];
    v31 = _UIKBTrimKBStarName_iOS(v30);
    cachedGestureKeySetName = v12->_cachedGestureKeySetName;
    v12->_cachedGestureKeySetName = v31;

    v33 = [MEMORY[0x1E695DF58] preferredLocale];
    v34 = [v33 localeIdentifier];
    locale = v12->_locale;
    v12->_locale = v34;

    v12->super._scale = 0.0;
  }

  return v12;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)annotateWithBool:(BOOL)a3
{
  v3 = a3;
  annotations = self->_annotations;
  if (!annotations)
  {
    v6 = [MEMORY[0x1E696AEC0] string];
    v7 = self->_annotations;
    self->_annotations = v6;

    annotations = self->_annotations;
  }

  if (v3)
  {
    v8 = @"1";
  }

  else
  {
    v8 = @"0";
  }

  v9 = [(NSString *)annotations stringByAppendingString:v8];
  v10 = self->_annotations;
  self->_annotations = v9;
}

- (void)annotateWithInt:(int)a3
{
  v3 = *&a3;
  annotations = self->_annotations;
  if (!annotations)
  {
    v6 = [MEMORY[0x1E696AEC0] string];
    v7 = self->_annotations;
    self->_annotations = v6;

    annotations = self->_annotations;
  }

  v8 = [(NSString *)annotations stringByAppendingFormat:@"%d", v3];
  v9 = self->_annotations;
  self->_annotations = v8;
}

+ (id)tokenForKeyplane:(id)a3 renderConfig:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 subtrees];
  if (![v7 count])
  {
    v10 = 0;
    goto LABEL_5;
  }

  v8 = [v5 subtrees];
  v9 = [v8 objectAtIndex:0];

  if (v9)
  {
    v10 = [objc_alloc(objc_opt_class()) _initWithKeyplane:v5 keylayout:v9 renderConfig:v6];
    v7 = v9;
LABEL_5:

    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (id)stringForSplitState:(BOOL)a3 handBias:(int64_t)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__UIKBCacheToken_Keyplane_stringForSplitState_handBias___block_invoke;
  v6[3] = &unk_1E710E808;
  v7 = a3;
  v6[4] = self;
  v6[5] = a4;
  v4 = [(UIKBCacheToken *)self stringForConstruction:v6];

  return v4;
}

- (BOOL)isUsableForCacheToken:(id)a3 withRenderFlags:(int64_t)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (self->_style.intValue != v6[18])
  {
    goto LABEL_8;
  }

  transformationIdentifiers = self->super._transformationIdentifiers;
  v9 = [v6 transformationIdentifiers];
  LODWORD(transformationIdentifiers) = [(NSSet *)transformationIdentifiers isEqualToSet:v9];

  if (!transformationIdentifiers)
  {
    goto LABEL_8;
  }

  if ((v4 & 0x34) == 0)
  {
    if ((v4 & 3) != 0)
    {
      geometrySetName = self->_geometrySetName;
      cachedGestureKeySetName = v7[10];
      goto LABEL_12;
    }

LABEL_13:
    v15 = 1;
    goto LABEL_9;
  }

  if (![(NSString *)self->_keySetName isEqualToString:v7[11]])
  {
LABEL_8:
    v15 = 0;
    goto LABEL_9;
  }

  v10 = +[UIKeyboardPreferencesController sharedPreferencesController];
  v11 = [v10 preferencesActions];
  v12 = [v11 BOOLForPreferenceKey:@"GesturesEnabled"];

  if (!v12)
  {
    goto LABEL_13;
  }

  cachedGestureKeySetName = self->_cachedGestureKeySetName;
  geometrySetName = v7[12];
  if (cachedGestureKeySetName)
  {
LABEL_12:
    v15 = [(NSString *)geometrySetName isEqualToString:cachedGestureKeySetName];
    goto LABEL_9;
  }

  v15 = geometrySetName == 0;
LABEL_9:

  return v15;
}

@end