@interface UIKBCacheToken_KeyTemplate
+ (id)tokenTemplateForKey:(id)key name:(id)name style:(int)style renderConfig:(id)config size:(CGSize)size;
- (id)_stringWithAdditionalValues:(id)values;
@end

@implementation UIKBCacheToken_KeyTemplate

+ (id)tokenTemplateForKey:(id)key name:(id)name style:(int)style renderConfig:(id)config size:(CGSize)size
{
  height = size.height;
  width = size.width;
  configCopy = config;
  nameCopy = name;
  keyCopy = key;
  v15 = objc_alloc(objc_opt_class());
  if ((style & 0xFFFFFFFE) == 0x6A)
  {
    v16 = 129;
  }

  else
  {
    v16 = 1;
  }

  v17 = [v15 _initWithKey:keyCopy style:v16 renderConfig:configCopy displayInsets:{0.0, 0.0, 0.0, 0.0}];

  [v17 setName:nameCopy];
  [v17 setEmptyFields:4];
  *(v17 + 19) = width;
  *(v17 + 20) = height;

  return v17;
}

- (id)_stringWithAdditionalValues:(id)values
{
  valuesCopy = values;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__UIKBCacheToken_KeyTemplate__stringWithAdditionalValues___block_invoke;
  v8[3] = &unk_1E710E830;
  v8[4] = self;
  v9 = valuesCopy;
  v5 = valuesCopy;
  v6 = [(UIKBCacheToken *)self stringForConstruction:v8];

  return v6;
}

@end