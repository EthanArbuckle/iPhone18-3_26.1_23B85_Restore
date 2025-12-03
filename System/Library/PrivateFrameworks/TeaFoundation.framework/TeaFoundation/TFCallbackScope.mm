@interface TFCallbackScope
- (TFCallbackScope)initWithScope:(unint64_t)scope names:(id)names;
@end

@implementation TFCallbackScope

- (TFCallbackScope)initWithScope:(unint64_t)scope names:(id)names
{
  namesCopy = names;
  v11.receiver = self;
  v11.super_class = TFCallbackScope;
  v8 = [(TFCallbackScope *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_scope = scope;
    objc_storeStrong(&v8->_names, names);
  }

  return v9;
}

@end