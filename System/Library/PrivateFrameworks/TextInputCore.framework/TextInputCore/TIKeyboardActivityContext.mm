@interface TIKeyboardActivityContext
+ (id)contextFromState:(unint64_t)state toState:(unint64_t)toState;
@end

@implementation TIKeyboardActivityContext

+ (id)contextFromState:(unint64_t)state toState:(unint64_t)toState
{
  v6 = objc_alloc_init(self);
  [v6 setFromState:state];
  [v6 setToState:toState];

  return v6;
}

@end