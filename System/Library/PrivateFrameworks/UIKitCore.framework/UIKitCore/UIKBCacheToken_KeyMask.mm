@interface UIKBCacheToken_KeyMask
+ (id)tokenForKey:(id)key style:(id)style renderConfig:(id)config displayInsets:(UIEdgeInsets)insets;
- (id)_stringWithAdditionalValues:(id)values;
@end

@implementation UIKBCacheToken_KeyMask

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

- (id)_stringWithAdditionalValues:(id)values
{
  valuesCopy = values;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__UIKBCacheToken_KeyMask__stringWithAdditionalValues___block_invoke;
  v8[3] = &unk_1E710E830;
  v8[4] = self;
  v9 = valuesCopy;
  v5 = valuesCopy;
  v6 = [(UIKBCacheToken *)self stringForConstruction:v8];

  return v6;
}

@end