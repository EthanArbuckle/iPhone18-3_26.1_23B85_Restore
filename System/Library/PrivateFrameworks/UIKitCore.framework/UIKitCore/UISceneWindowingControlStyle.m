@interface UISceneWindowingControlStyle
+ (UISceneWindowingControlStyle)automaticStyle;
+ (UISceneWindowingControlStyle)minimalStyle;
+ (UISceneWindowingControlStyle)unifiedStyle;
- (NSString)debugDescription;
- (UISceneWindowingControlStyle)init;
- (id)succinctDescription;
- (void)appendDescriptionToStream:(id)a3;
@end

@implementation UISceneWindowingControlStyle

- (UISceneWindowingControlStyle)init
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"-init is not allowed on UISceneWindowingControlStyle"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = self;
    v15 = 2114;
    v16 = @"UISceneWindowingControlStyle.m";
    v17 = 1024;
    v18 = 32;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (UISceneWindowingControlStyle)automaticStyle
{
  v2 = [UISceneWindowingControlStyle alloc];
  if (v2)
  {
    v4.receiver = v2;
    v4.super_class = UISceneWindowingControlStyle;
    v2 = objc_msgSendSuper2(&v4, sel_init);
    if (v2)
    {
      v2->_type = 0;
    }
  }

  return v2;
}

+ (UISceneWindowingControlStyle)unifiedStyle
{
  v2 = [UISceneWindowingControlStyle alloc];
  if (v2)
  {
    v4.receiver = v2;
    v4.super_class = UISceneWindowingControlStyle;
    v2 = objc_msgSendSuper2(&v4, sel_init);
    if (v2)
    {
      v2->_type = 1;
    }
  }

  return v2;
}

+ (UISceneWindowingControlStyle)minimalStyle
{
  v2 = [UISceneWindowingControlStyle alloc];
  if (v2)
  {
    v4.receiver = v2;
    v4.super_class = UISceneWindowingControlStyle;
    v2 = objc_msgSendSuper2(&v4, sel_init);
    if (v2)
    {
      v2->_type = 2;
    }
  }

  return v2;
}

- (void)appendDescriptionToStream:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__UISceneWindowingControlStyle_appendDescriptionToStream___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v7 = v4;
  v8 = self;
  v5 = v4;
  [v5 appendProem:self block:v6];
}

uint64_t __58__UISceneWindowingControlStyle_appendDescriptionToStream___block_invoke(uint64_t a1)
{
  v1 = @"automatic";
  v2 = *(*(a1 + 40) + 8);
  if (v2 == 1)
  {
    v1 = @"unified";
  }

  if (v2 == 2)
  {
    v3 = @"minimal";
  }

  else
  {
    v3 = v1;
  }

  return [*(a1 + 32) appendString:v3 withName:@"type"];
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  v4 = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:v4];

  return v5;
}

@end