@interface _UIPointerArbiter
+ (id)sharedArbiter;
- (_UIPointerArbiter)init;
@end

@implementation _UIPointerArbiter

- (_UIPointerArbiter)init
{
  v6.receiver = self;
  v6.super_class = _UIPointerArbiter;
  v2 = [(_UIPointerArbiter *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    core = v2->_core;
    v2->_core = v3;
  }

  return v2;
}

+ (id)sharedArbiter
{
  if (_MergedGlobals_1208 != -1)
  {
    dispatch_once(&_MergedGlobals_1208, &__block_literal_global_413);
  }

  v3 = qword_1ED49F5E8;

  return v3;
}

@end