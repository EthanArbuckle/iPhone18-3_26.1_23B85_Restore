@interface UIKBCacheToken_Keyplane
+ (id)tokenForKeyplane:(id)keyplane renderConfig:(id)config;
- (BOOL)isUsableForCacheToken:(id)token withRenderFlags:(int64_t)flags;
- (CGSize)size;
- (id)_initWithKeyplane:(id)keyplane keylayout:(id)keylayout renderConfig:(id)config;
- (id)stringForSplitState:(BOOL)state handBias:(int64_t)bias;
- (void)annotateWithBool:(BOOL)bool;
- (void)annotateWithInt:(int)int;
@end

@implementation UIKBCacheToken_Keyplane

- (id)_initWithKeyplane:(id)keyplane keylayout:(id)keylayout renderConfig:(id)config
{
  keyplaneCopy = keyplane;
  keylayoutCopy = keylayout;
  configCopy = config;
  name = [keyplaneCopy name];
  v37.receiver = self;
  v37.super_class = UIKBCacheToken_Keyplane;
  v12 = [(UIKBCacheToken *)&v37 initWithName:name];

  if (v12)
  {
    [keylayoutCopy frame];
    v12->_size.width = v13;
    v12->_size.height = v14;
    visualStyling = [keyplaneCopy visualStyling];
    *&v12->_style.styling = visualStyling;
    v12->_style.intValue = visualStyling & 0xFFFFFF7F;
    v16 = [keylayoutCopy geometrySet:0];
    name2 = [v16 name];
    v18 = name2;
    v19 = &stru_1EFB14550;
    if (name2)
    {
      v19 = name2;
    }

    v20 = v19;

    keySet = [keylayoutCopy keySet];
    name3 = [keySet name];

    v12->_colorAdaptiveBackground = [configCopy colorAdaptiveBackground];
    v12->_lightKeyboard = [configCopy lightKeyboard];
    v12->_animatedBackground = [configCopy animatedBackground];
    v12->_usesCompactKeycapsFont = [configCopy usesCompactKeycapsFont];
    controlKeyBackgroundName = [configCopy controlKeyBackgroundName];
    v12->_controlKeyBackgroundName = [controlKeyBackgroundName hash];

    v24 = _UIKBTrimKBStarName_iOS(v20);

    geometrySetName = v12->_geometrySetName;
    v12->_geometrySetName = v24;

    v26 = _UIKBTrimKBStarName_iOS(name3);
    keySetName = v12->_keySetName;
    v12->_keySetName = v26;

    cachedGestureLayout = [keylayoutCopy cachedGestureLayout];
    keySet2 = [cachedGestureLayout keySet];
    name4 = [keySet2 name];
    v31 = _UIKBTrimKBStarName_iOS(name4);
    cachedGestureKeySetName = v12->_cachedGestureKeySetName;
    v12->_cachedGestureKeySetName = v31;

    preferredLocale = [MEMORY[0x1E695DF58] preferredLocale];
    localeIdentifier = [preferredLocale localeIdentifier];
    locale = v12->_locale;
    v12->_locale = localeIdentifier;

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

- (void)annotateWithBool:(BOOL)bool
{
  boolCopy = bool;
  annotations = self->_annotations;
  if (!annotations)
  {
    string = [MEMORY[0x1E696AEC0] string];
    v7 = self->_annotations;
    self->_annotations = string;

    annotations = self->_annotations;
  }

  if (boolCopy)
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

- (void)annotateWithInt:(int)int
{
  v3 = *&int;
  annotations = self->_annotations;
  if (!annotations)
  {
    string = [MEMORY[0x1E696AEC0] string];
    v7 = self->_annotations;
    self->_annotations = string;

    annotations = self->_annotations;
  }

  v8 = [(NSString *)annotations stringByAppendingFormat:@"%d", v3];
  v9 = self->_annotations;
  self->_annotations = v8;
}

+ (id)tokenForKeyplane:(id)keyplane renderConfig:(id)config
{
  keyplaneCopy = keyplane;
  configCopy = config;
  subtrees = [keyplaneCopy subtrees];
  if (![subtrees count])
  {
    v10 = 0;
    goto LABEL_5;
  }

  subtrees2 = [keyplaneCopy subtrees];
  v9 = [subtrees2 objectAtIndex:0];

  if (v9)
  {
    v10 = [objc_alloc(objc_opt_class()) _initWithKeyplane:keyplaneCopy keylayout:v9 renderConfig:configCopy];
    subtrees = v9;
LABEL_5:

    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (id)stringForSplitState:(BOOL)state handBias:(int64_t)bias
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__UIKBCacheToken_Keyplane_stringForSplitState_handBias___block_invoke;
  v6[3] = &unk_1E710E808;
  stateCopy = state;
  v6[4] = self;
  v6[5] = bias;
  v4 = [(UIKBCacheToken *)self stringForConstruction:v6];

  return v4;
}

- (BOOL)isUsableForCacheToken:(id)token withRenderFlags:(int64_t)flags
{
  flagsCopy = flags;
  tokenCopy = token;
  v7 = tokenCopy;
  if (self->_style.intValue != tokenCopy[18])
  {
    goto LABEL_8;
  }

  transformationIdentifiers = self->super._transformationIdentifiers;
  transformationIdentifiers = [tokenCopy transformationIdentifiers];
  LODWORD(transformationIdentifiers) = [(NSSet *)transformationIdentifiers isEqualToSet:transformationIdentifiers];

  if (!transformationIdentifiers)
  {
    goto LABEL_8;
  }

  if ((flagsCopy & 0x34) == 0)
  {
    if ((flagsCopy & 3) != 0)
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
  preferencesActions = [v10 preferencesActions];
  v12 = [preferencesActions BOOLForPreferenceKey:@"GesturesEnabled"];

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