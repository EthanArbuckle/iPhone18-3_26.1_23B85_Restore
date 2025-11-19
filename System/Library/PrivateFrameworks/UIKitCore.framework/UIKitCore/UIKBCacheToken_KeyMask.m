@interface UIKBCacheToken_KeyMask
+ (id)tokenForKey:(id)a3 style:(id)a4 renderConfig:(id)a5 displayInsets:(UIEdgeInsets)a6;
- (id)_stringWithAdditionalValues:(id)a3;
@end

@implementation UIKBCacheToken_KeyMask

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

- (id)_stringWithAdditionalValues:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__UIKBCacheToken_KeyMask__stringWithAdditionalValues___block_invoke;
  v8[3] = &unk_1E710E830;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(UIKBCacheToken *)self stringForConstruction:v8];

  return v6;
}

@end