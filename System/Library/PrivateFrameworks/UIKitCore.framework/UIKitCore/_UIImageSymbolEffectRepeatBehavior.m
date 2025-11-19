@interface _UIImageSymbolEffectRepeatBehavior
+ (id)_repeatBehaviorWithRepeats:(double)a3;
+ (id)defaultRepeatBehavior;
+ (id)indefiniteRepeatBehavior;
- (BOOL)isEqual:(id)a3;
- (_UIImageSymbolEffectRepeatBehavior)initWithCoder:(id)a3;
@end

@implementation _UIImageSymbolEffectRepeatBehavior

+ (id)_repeatBehaviorWithRepeats:(double)a3
{
  v4 = objc_opt_new();
  v4[1] = a3;

  return v4;
}

+ (id)defaultRepeatBehavior
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59___UIImageSymbolEffectRepeatBehavior_defaultRepeatBehavior__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED499418 != -1)
  {
    dispatch_once(&qword_1ED499418, block);
  }

  v2 = _MergedGlobals_1_22;

  return v2;
}

+ (id)indefiniteRepeatBehavior
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62___UIImageSymbolEffectRepeatBehavior_indefiniteRepeatBehavior__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (qword_1ED499428 != -1)
  {
    dispatch_once(&qword_1ED499428, block);
  }

  v2 = qword_1ED499420;

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_numberOfRepeats == v5[1];
  }

  return v6;
}

- (_UIImageSymbolEffectRepeatBehavior)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() effect];

  if (v5)
  {
    [v4 decodeDoubleForKey:@"numberOfRepeats"];
    *(v5 + 8) = v6;
  }

  return v5;
}

@end