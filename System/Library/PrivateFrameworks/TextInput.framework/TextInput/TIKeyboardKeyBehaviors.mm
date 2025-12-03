@interface TIKeyboardKeyBehaviors
+ (id)behaviorForSpaceKey:(unint64_t)key forReturnKey:(unint64_t)returnKey forTabKey:(unint64_t)tabKey;
- (TIKeyboardKeyBehaviors)initWithSpaceKeyBehavior:(unint64_t)behavior returnKeyBehavior:(unint64_t)keyBehavior tabKeyBehavior:(unint64_t)tabKeyBehavior;
@end

@implementation TIKeyboardKeyBehaviors

- (TIKeyboardKeyBehaviors)initWithSpaceKeyBehavior:(unint64_t)behavior returnKeyBehavior:(unint64_t)keyBehavior tabKeyBehavior:(unint64_t)tabKeyBehavior
{
  v11.receiver = self;
  v11.super_class = TIKeyboardKeyBehaviors;
  v8 = [(TIKeyboardKeyBehaviors *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(TIKeyboardKeyBehaviors *)v8 setSpaceKeyBehavior:behavior];
    [(TIKeyboardKeyBehaviors *)v9 setReturnKeyBehavior:keyBehavior];
    [(TIKeyboardKeyBehaviors *)v9 setTabKeyBehavior:tabKeyBehavior];
  }

  return v9;
}

+ (id)behaviorForSpaceKey:(unint64_t)key forReturnKey:(unint64_t)returnKey forTabKey:(unint64_t)tabKey
{
  v5 = [[self alloc] initWithSpaceKeyBehavior:key returnKeyBehavior:returnKey tabKeyBehavior:tabKey];

  return v5;
}

@end