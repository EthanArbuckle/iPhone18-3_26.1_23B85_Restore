@interface TIKeyboardKeyBehaviors
+ (id)behaviorForSpaceKey:(unint64_t)a3 forReturnKey:(unint64_t)a4 forTabKey:(unint64_t)a5;
- (TIKeyboardKeyBehaviors)initWithSpaceKeyBehavior:(unint64_t)a3 returnKeyBehavior:(unint64_t)a4 tabKeyBehavior:(unint64_t)a5;
@end

@implementation TIKeyboardKeyBehaviors

- (TIKeyboardKeyBehaviors)initWithSpaceKeyBehavior:(unint64_t)a3 returnKeyBehavior:(unint64_t)a4 tabKeyBehavior:(unint64_t)a5
{
  v11.receiver = self;
  v11.super_class = TIKeyboardKeyBehaviors;
  v8 = [(TIKeyboardKeyBehaviors *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(TIKeyboardKeyBehaviors *)v8 setSpaceKeyBehavior:a3];
    [(TIKeyboardKeyBehaviors *)v9 setReturnKeyBehavior:a4];
    [(TIKeyboardKeyBehaviors *)v9 setTabKeyBehavior:a5];
  }

  return v9;
}

+ (id)behaviorForSpaceKey:(unint64_t)a3 forReturnKey:(unint64_t)a4 forTabKey:(unint64_t)a5
{
  v5 = [[a1 alloc] initWithSpaceKeyBehavior:a3 returnKeyBehavior:a4 tabKeyBehavior:a5];

  return v5;
}

@end