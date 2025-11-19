@interface UIKBCacheToken_KeyTemplate
+ (id)tokenTemplateForKey:(id)a3 name:(id)a4 style:(int)a5 renderConfig:(id)a6 size:(CGSize)a7;
- (id)_stringWithAdditionalValues:(id)a3;
@end

@implementation UIKBCacheToken_KeyTemplate

+ (id)tokenTemplateForKey:(id)a3 name:(id)a4 style:(int)a5 renderConfig:(id)a6 size:(CGSize)a7
{
  height = a7.height;
  width = a7.width;
  v12 = a6;
  v13 = a4;
  v14 = a3;
  v15 = objc_alloc(objc_opt_class());
  if ((a5 & 0xFFFFFFFE) == 0x6A)
  {
    v16 = 129;
  }

  else
  {
    v16 = 1;
  }

  v17 = [v15 _initWithKey:v14 style:v16 renderConfig:v12 displayInsets:{0.0, 0.0, 0.0, 0.0}];

  [v17 setName:v13];
  [v17 setEmptyFields:4];
  *(v17 + 19) = width;
  *(v17 + 20) = height;

  return v17;
}

- (id)_stringWithAdditionalValues:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__UIKBCacheToken_KeyTemplate__stringWithAdditionalValues___block_invoke;
  v8[3] = &unk_1E710E830;
  v8[4] = self;
  v9 = v4;
  v5 = v4;
  v6 = [(UIKBCacheToken *)self stringForConstruction:v8];

  return v6;
}

@end