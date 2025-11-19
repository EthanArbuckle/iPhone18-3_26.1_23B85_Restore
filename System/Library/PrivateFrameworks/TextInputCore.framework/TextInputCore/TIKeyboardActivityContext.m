@interface TIKeyboardActivityContext
+ (id)contextFromState:(unint64_t)a3 toState:(unint64_t)a4;
@end

@implementation TIKeyboardActivityContext

+ (id)contextFromState:(unint64_t)a3 toState:(unint64_t)a4
{
  v6 = objc_alloc_init(a1);
  [v6 setFromState:a3];
  [v6 setToState:a4];

  return v6;
}

@end