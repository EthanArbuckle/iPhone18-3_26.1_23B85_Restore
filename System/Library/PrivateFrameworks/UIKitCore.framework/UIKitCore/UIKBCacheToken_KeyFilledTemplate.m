@interface UIKBCacheToken_KeyFilledTemplate
+ (id)tokenTemplateFilledForKey:(id)a3 style:(int)a4 renderConfig:(id)a5 size:(CGSize)a6;
- (id)_stringWithAdditionalValues:(id)a3;
@end

@implementation UIKBCacheToken_KeyFilledTemplate

+ (id)tokenTemplateFilledForKey:(id)a3 style:(int)a4 renderConfig:(id)a5 size:(CGSize)a6
{
  height = a6.height;
  width = a6.width;
  v10 = a5;
  v11 = a3;
  v12 = objc_alloc(objc_opt_class());
  if ((a4 & 0xFFFFFFFE) == 0x6A)
  {
    v13 = 129;
  }

  else
  {
    v13 = 1;
  }

  v14 = [v12 _initWithKey:v11 style:v13 renderConfig:v10 displayInsets:{0.0, 0.0, 0.0, 0.0}];

  [v14 setEmptyFields:1];
  *(v14 + 19) = width;
  *(v14 + 20) = height;

  return v14;
}

- (id)_stringWithAdditionalValues:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__UIKBCacheToken_KeyFilledTemplate__stringWithAdditionalValues___block_invoke;
  v8[3] = &unk_1E710E830;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(UIKBCacheToken *)self stringForConstruction:v8];

  return v6;
}

@end