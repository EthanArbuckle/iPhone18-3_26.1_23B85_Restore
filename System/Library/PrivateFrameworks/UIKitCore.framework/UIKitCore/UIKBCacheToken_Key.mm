@interface UIKBCacheToken_Key
+ (id)tokenForKey:(id)key style:(id)style renderConfig:(id)config;
+ (id)tokenForKey:(id)key style:(id)style renderConfig:(id)config displayInsets:(UIEdgeInsets)insets;
- (CGSize)size;
- (id)_initWithKey:(id)key style:(id)style renderConfig:(id)config displayInsets:(UIEdgeInsets)insets;
- (id)_stringWithAdditionalValues:(id)values;
- (id)copyTokenWithoutContentProperties;
- (id)stringForRenderFlags:(int64_t)flags lightKeyboard:(BOOL)keyboard;
- (void)annotateWithBool:(BOOL)bool;
- (void)annotateWithInt:(int)int;
- (void)annotateWithString:(id)string;
- (void)resetAnnotations;
@end

@implementation UIKBCacheToken_Key

- (id)_initWithKey:(id)key style:(id)style renderConfig:(id)config displayInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v11 = *&style;
  keyCopy = key;
  configCopy = config;
  name = [keyCopy name];
  v30.receiver = self;
  v30.super_class = UIKBCacheToken_Key;
  v16 = [(UIKBCacheToken *)&v30 initWithName:name];

  if (v16)
  {
    *&v16->_style.styling = v11;
    v16->_style.intValue = v11 & 0xFFFFFFBF;
    cacheDisplayString = [keyCopy cacheDisplayString];
    cacheDisplayString = v16->_cacheDisplayString;
    v16->_cacheDisplayString = cacheDisplayString;

    layoutTag = [keyCopy layoutTag];
    layoutTag = v16->_layoutTag;
    v16->_layoutTag = layoutTag;

    cacheSecondaryDisplayString = [keyCopy cacheSecondaryDisplayString];
    cacheSecondaryDisplayString = v16->_cacheSecondaryDisplayString;
    v16->_cacheSecondaryDisplayString = cacheSecondaryDisplayString;

    v16->_displayTypeHint = [keyCopy displayTypeHint];
    v16->_displayRowHint = [keyCopy displayRowHint];
    [keyCopy paddedFrame];
    v16->_size.width = v23;
    v16->_size.height = v24;
    v16->_state = [keyCopy state];
    v16->_clipCorners = [keyCopy clipCorners];
    v16->_groupNeighbors = [keyCopy groupNeighbor];
    v16->_displayInsets.top = top;
    v16->_displayInsets.left = left;
    v16->_displayInsets.bottom = bottom;
    v16->_displayInsets.right = right;
    v16->_colorAdaptiveBackground = [configCopy colorAdaptiveBackground];
    v16->_lightKeyboard = [configCopy lightKeyboard];
    v16->_animatedBackground = [configCopy animatedBackground];
    v16->_usesCompactKeycapsFont = [configCopy usesCompactKeycapsFont];
    controlKeyBackgroundName = [configCopy controlKeyBackgroundName];
    v16->_controlKeyBackgroundName = [controlKeyBackgroundName hash];

    overrideDisplayString = [keyCopy overrideDisplayString];
    if (overrideDisplayString)
    {
      overrideDisplayString2 = [keyCopy overrideDisplayString];
      displayString = [keyCopy displayString];
      v16->_differentDisplayStrings = [overrideDisplayString2 isEqualToString:displayString] ^ 1;
    }

    else
    {
      v16->_differentDisplayStrings = 0;
    }
  }

  return v16;
}

+ (id)tokenForKey:(id)key style:(id)style renderConfig:(id)config
{
  v5 = *&style;
  configCopy = config;
  keyCopy = key;
  v9 = [objc_alloc(objc_opt_class()) _initWithKey:keyCopy style:v5 renderConfig:configCopy displayInsets:{0.0, 0.0, 0.0, 0.0}];

  return v9;
}

+ (id)tokenForKey:(id)key style:(id)style renderConfig:(id)config displayInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v10 = *&style;
  configCopy = config;
  keyCopy = key;
  v14 = [objc_alloc(objc_opt_class()) _initWithKey:keyCopy style:v10 renderConfig:configCopy displayInsets:{top, left, bottom, right}];

  v14[176] = 1;

  return v14;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)annotateWithString:(id)string
{
  stringCopy = string;
  annotationString = self->_annotationString;
  v8 = stringCopy;
  if (annotationString)
  {
    v6 = [(NSString *)annotationString stringByAppendingString:stringCopy];
  }

  else
  {
    v6 = stringCopy;
  }

  v7 = self->_annotationString;
  self->_annotationString = v6;
}

- (void)resetAnnotations
{
  annotationString = self->_annotationString;
  self->_annotationString = 0;
}

- (void)annotateWithBool:(BOOL)bool
{
  if (bool)
  {
    v3 = @"1";
  }

  else
  {
    v3 = @"0";
  }

  [(UIKBCacheToken_Key *)self annotateWithString:v3];
}

- (void)annotateWithInt:(int)int
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", *&int];
  [(UIKBCacheToken_Key *)self annotateWithString:v4];
}

- (id)_stringWithAdditionalValues:(id)values
{
  valuesCopy = values;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__UIKBCacheToken_Key__stringWithAdditionalValues___block_invoke;
  v8[3] = &unk_1E710E830;
  v8[4] = self;
  v9 = valuesCopy;
  v5 = valuesCopy;
  v6 = [(UIKBCacheToken *)self stringForConstruction:v8];

  return v6;
}

- (id)stringForRenderFlags:(int64_t)flags lightKeyboard:(BOOL)keyboard
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__UIKBCacheToken_Key_stringForRenderFlags_lightKeyboard___block_invoke;
  v6[3] = &unk_1E710E808;
  keyboardCopy = keyboard;
  v6[4] = self;
  v6[5] = flags;
  v4 = [(UIKBCacheToken_Key *)self _stringWithAdditionalValues:v6];

  return v4;
}

- (id)copyTokenWithoutContentProperties
{
  v3 = objc_alloc_init(objc_opt_class());
  *(v3 + 7) = *&self->_style.styling;
  *(v3 + 24) = self->_displayTypeHint;
  *(v3 + 42) = self->_displayRowHint;
  *(v3 + 152) = self->_size;
  *(v3 + 25) = self->_state;
  *(v3 + 13) = self->_clipCorners;
  *(v3 + 18) = self->_groupNeighbors;
  v3[176] = 0;
  v3[178] = self->_colorAdaptiveBackground;
  v3[177] = self->_lightKeyboard;
  v3[179] = self->_animatedBackground;
  v3[180] = self->_usesCompactKeycapsFont;
  *(v3 + 43) = self->_controlKeyBackgroundName;
  v3[181] = self->_differentDisplayStrings;
  *(v3 + 3) = *&self->super._scale;
  v4 = [(NSString *)self->_annotationString copy];
  v5 = *(v3 + 10);
  *(v3 + 10) = v4;

  v6 = [(NSString *)self->_layoutTag copy];
  v7 = *(v3 + 11);
  *(v3 + 11) = v6;

  return v3;
}

@end