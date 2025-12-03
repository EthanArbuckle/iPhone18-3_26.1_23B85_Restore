@interface UIKBCacheToken_KeyFilledTemplate
+ (id)tokenTemplateFilledForKey:(id)key style:(int)style renderConfig:(id)config size:(CGSize)size;
- (id)_stringWithAdditionalValues:(id)values;
@end

@implementation UIKBCacheToken_KeyFilledTemplate

+ (id)tokenTemplateFilledForKey:(id)key style:(int)style renderConfig:(id)config size:(CGSize)size
{
  height = size.height;
  width = size.width;
  configCopy = config;
  keyCopy = key;
  v12 = objc_alloc(objc_opt_class());
  if ((style & 0xFFFFFFFE) == 0x6A)
  {
    v13 = 129;
  }

  else
  {
    v13 = 1;
  }

  v14 = [v12 _initWithKey:keyCopy style:v13 renderConfig:configCopy displayInsets:{0.0, 0.0, 0.0, 0.0}];

  [v14 setEmptyFields:1];
  *(v14 + 19) = width;
  *(v14 + 20) = height;

  return v14;
}

- (id)_stringWithAdditionalValues:(id)values
{
  valuesCopy = values;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__UIKBCacheToken_KeyFilledTemplate__stringWithAdditionalValues___block_invoke;
  v8[3] = &unk_1E710E830;
  v8[4] = self;
  v9 = valuesCopy;
  v5 = valuesCopy;
  v6 = [(UIKBCacheToken *)self stringForConstruction:v8];

  return v6;
}

@end