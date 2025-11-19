@interface UIInputViewSetPlacementInvisible
+ (id)placementWithPlacement:(id)a3;
- (CGAffineTransform)transform;
- (id)applicatorInfoForOwner:(id)a3;
@end

@implementation UIInputViewSetPlacementInvisible

+ (id)placementWithPlacement:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 isVisible] & 1) == 0)
  {
    if (os_variant_has_internal_diagnostics())
    {
      v9 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v12 = "+[UIInputViewSetPlacementInvisible placementWithPlacement:]";
        _os_log_fault_impl(&dword_188A29000, v9, OS_LOG_TYPE_FAULT, "%s: Should not be called with an invisible placement", buf, 0xCu);
      }
    }

    else
    {
      v8 = *(__UILogGetCategoryCachedImpl("Assert", &placementWithPlacement____s_category) + 8);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v12 = "+[UIInputViewSetPlacementInvisible placementWithPlacement:]";
        _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "%s: Should not be called with an invisible placement", buf, 0xCu);
      }
    }
  }

  if ([v4 isVisible])
  {
    v10.receiver = a1;
    v10.super_class = &OBJC_METACLASS___UIInputViewSetPlacementInvisible;
    v5 = objc_msgSendSuper2(&v10, sel_placementWithPlacement_, v4);
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

- (CGAffineTransform)transform
{
  result = _AXSReduceMotionReduceSlideTransitionsEnabled();
  if (result)
  {
    v6 = MEMORY[0x1E695EFD0];
    v7 = *(MEMORY[0x1E695EFD0] + 16);
    *&retstr->a = *MEMORY[0x1E695EFD0];
    *&retstr->c = v7;
    *&retstr->tx = *(v6 + 32);
  }

  else if ([(UIInputViewSetPlacement *)self->super._actualPlacement isFloating])
  {
    v9.receiver = self;
    v9.super_class = UIInputViewSetPlacementInvisible;
    [(CGAffineTransform *)&v9 transform];
    return CGAffineTransformScale(retstr, &v10, 0.5, 0.5);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UIInputViewSetPlacementInvisible;
    return [(CGAffineTransform *)&v8 transform];
  }

  return result;
}

- (id)applicatorInfoForOwner:(id)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF90];
  v5 = [(UIInputViewSetPlacement *)self->super._actualPlacement applicatorInfoForOwner:a3];
  v6 = [v4 dictionaryWithDictionary:v5];

  v14[0] = @"Alpha";
  v7 = MEMORY[0x1E696AD98];
  [(UIInputViewSetPlacementInvisible *)self alpha];
  v8 = [v7 numberWithDouble:?];
  v15[0] = v8;
  v14[1] = @"Transform";
  v9 = MEMORY[0x1E696B098];
  [(UIInputViewSetPlacementInvisible *)self transform];
  v10 = [v9 valueWithCGAffineTransform:v13];
  v15[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
  [v6 addEntriesFromDictionary:v11];

  return v6;
}

@end