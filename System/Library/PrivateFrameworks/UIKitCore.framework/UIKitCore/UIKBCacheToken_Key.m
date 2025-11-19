@interface UIKBCacheToken_Key
+ (id)tokenForKey:(id)a3 style:(id)a4 renderConfig:(id)a5;
+ (id)tokenForKey:(id)a3 style:(id)a4 renderConfig:(id)a5 displayInsets:(UIEdgeInsets)a6;
- (CGSize)size;
- (id)_initWithKey:(id)a3 style:(id)a4 renderConfig:(id)a5 displayInsets:(UIEdgeInsets)a6;
- (id)_stringWithAdditionalValues:(id)a3;
- (id)copyTokenWithoutContentProperties;
- (id)stringForRenderFlags:(int64_t)a3 lightKeyboard:(BOOL)a4;
- (void)annotateWithBool:(BOOL)a3;
- (void)annotateWithInt:(int)a3;
- (void)annotateWithString:(id)a3;
- (void)resetAnnotations;
@end

@implementation UIKBCacheToken_Key

- (id)_initWithKey:(id)a3 style:(id)a4 renderConfig:(id)a5 displayInsets:(UIEdgeInsets)a6
{
  right = a6.right;
  bottom = a6.bottom;
  left = a6.left;
  top = a6.top;
  v11 = *&a4;
  v13 = a3;
  v14 = a5;
  v15 = [v13 name];
  v30.receiver = self;
  v30.super_class = UIKBCacheToken_Key;
  v16 = [(UIKBCacheToken *)&v30 initWithName:v15];

  if (v16)
  {
    *&v16->_style.styling = v11;
    v16->_style.intValue = v11 & 0xFFFFFFBF;
    v17 = [v13 cacheDisplayString];
    cacheDisplayString = v16->_cacheDisplayString;
    v16->_cacheDisplayString = v17;

    v19 = [v13 layoutTag];
    layoutTag = v16->_layoutTag;
    v16->_layoutTag = v19;

    v21 = [v13 cacheSecondaryDisplayString];
    cacheSecondaryDisplayString = v16->_cacheSecondaryDisplayString;
    v16->_cacheSecondaryDisplayString = v21;

    v16->_displayTypeHint = [v13 displayTypeHint];
    v16->_displayRowHint = [v13 displayRowHint];
    [v13 paddedFrame];
    v16->_size.width = v23;
    v16->_size.height = v24;
    v16->_state = [v13 state];
    v16->_clipCorners = [v13 clipCorners];
    v16->_groupNeighbors = [v13 groupNeighbor];
    v16->_displayInsets.top = top;
    v16->_displayInsets.left = left;
    v16->_displayInsets.bottom = bottom;
    v16->_displayInsets.right = right;
    v16->_colorAdaptiveBackground = [v14 colorAdaptiveBackground];
    v16->_lightKeyboard = [v14 lightKeyboard];
    v16->_animatedBackground = [v14 animatedBackground];
    v16->_usesCompactKeycapsFont = [v14 usesCompactKeycapsFont];
    v25 = [v14 controlKeyBackgroundName];
    v16->_controlKeyBackgroundName = [v25 hash];

    v26 = [v13 overrideDisplayString];
    if (v26)
    {
      v27 = [v13 overrideDisplayString];
      v28 = [v13 displayString];
      v16->_differentDisplayStrings = [v27 isEqualToString:v28] ^ 1;
    }

    else
    {
      v16->_differentDisplayStrings = 0;
    }
  }

  return v16;
}

+ (id)tokenForKey:(id)a3 style:(id)a4 renderConfig:(id)a5
{
  v5 = *&a4;
  v7 = a5;
  v8 = a3;
  v9 = [objc_alloc(objc_opt_class()) _initWithKey:v8 style:v5 renderConfig:v7 displayInsets:{0.0, 0.0, 0.0, 0.0}];

  return v9;
}

+ (id)tokenForKey:(id)a3 style:(id)a4 renderConfig:(id)a5 displayInsets:(UIEdgeInsets)a6
{
  right = a6.right;
  bottom = a6.bottom;
  left = a6.left;
  top = a6.top;
  v10 = *&a4;
  v12 = a5;
  v13 = a3;
  v14 = [objc_alloc(objc_opt_class()) _initWithKey:v13 style:v10 renderConfig:v12 displayInsets:{top, left, bottom, right}];

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

- (void)annotateWithString:(id)a3
{
  v4 = a3;
  annotationString = self->_annotationString;
  v8 = v4;
  if (annotationString)
  {
    v6 = [(NSString *)annotationString stringByAppendingString:v4];
  }

  else
  {
    v6 = v4;
  }

  v7 = self->_annotationString;
  self->_annotationString = v6;
}

- (void)resetAnnotations
{
  annotationString = self->_annotationString;
  self->_annotationString = 0;
}

- (void)annotateWithBool:(BOOL)a3
{
  if (a3)
  {
    v3 = @"1";
  }

  else
  {
    v3 = @"0";
  }

  [(UIKBCacheToken_Key *)self annotateWithString:v3];
}

- (void)annotateWithInt:(int)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", *&a3];
  [(UIKBCacheToken_Key *)self annotateWithString:v4];
}

- (id)_stringWithAdditionalValues:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__UIKBCacheToken_Key__stringWithAdditionalValues___block_invoke;
  v8[3] = &unk_1E710E830;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(UIKBCacheToken *)self stringForConstruction:v8];

  return v6;
}

- (id)stringForRenderFlags:(int64_t)a3 lightKeyboard:(BOOL)a4
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__UIKBCacheToken_Key_stringForRenderFlags_lightKeyboard___block_invoke;
  v6[3] = &unk_1E710E808;
  v7 = a4;
  v6[4] = self;
  v6[5] = a3;
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