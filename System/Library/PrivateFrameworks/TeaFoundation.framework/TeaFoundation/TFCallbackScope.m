@interface TFCallbackScope
- (TFCallbackScope)initWithScope:(unint64_t)a3 names:(id)a4;
@end

@implementation TFCallbackScope

- (TFCallbackScope)initWithScope:(unint64_t)a3 names:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TFCallbackScope;
  v8 = [(TFCallbackScope *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_scope = a3;
    objc_storeStrong(&v8->_names, a4);
  }

  return v9;
}

@end